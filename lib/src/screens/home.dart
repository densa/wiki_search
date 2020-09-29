import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../src/widgets/search_bar.dart';
import '../../utils/debouncer.dart';
import '../wikipedia.dart';
import '../model/wikipage.dart';

/// search provider initialized with empty string
final searchState = StateProvider<String>((ref) => '');

final searchProvider = FutureProvider.autoDispose((ref) async {
  String searchTerm = ref.watch(searchState).state;
  final repository = ref.read(repositoryProvider);
  List<WikiPage> pages = await repository.search(searchTerm: searchTerm);
  return pages;
});

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _debouncer = Debouncer();

  _debounceSearch(String searchText) {
    _debouncer(() {
      print(searchText);
      //Update state only if search text is changed
      //Controller fire listener when textfield is change focus
      //TODO: find better solution
      if (context.read(searchState).state != searchText) {
        context.read(searchState).state = searchText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Wikipedia'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: SearchBar(
              onTextChanged: _debounceSearch,
            ),
          ),
          Consumer(builder: (context, watch, _) {
            final searchResult = watch(searchProvider);
            return searchResult.when(
              data: (pages) {
                return _SearchResultContent(pages: pages);
              },
              loading: () => CircularProgressIndicator(),
              error: (_, __) => Container(color: Colors.red));
          })
        ],
      ),
    );
  }
}

class _SearchResultContent extends StatelessWidget {
  final List<WikiPage> pages;
  const _SearchResultContent({this.pages, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Initial state show empty state
    if (pages == null) {
      return Container();
    }
    if (pages.length == 0) {
      return Container();
    }

    return Expanded(
      child: ListView.builder(
        itemCount: pages.length,
        itemBuilder: ((context, index) {
          WikiPage pageInfo = pages[index];
          return Container(
            child: Column(
              children: [
                Text('${pageInfo.title} (${pageInfo.images.length} pictures)'),
                Text(pageInfo.pageUrl),
              ],
            ),
          );
        })
      ),
    );
  }
}