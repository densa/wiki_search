import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final ValueChanged<String> onTextChanged;
  SearchBar({this.onTextChanged, Key key}) : super(key: key);

  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {

  @override
  void dispose() {
    _textEditingController.removeListener(_onTextChange);
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChange);
  }

  void _onTextChange() {
    setState(() {});
    if (widget.onTextChanged != null) {
      widget.onTextChanged(_textEditingController.text);
    }
  }

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      scrollController: ScrollController(),
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: Color(0XFFE8E8EB).withOpacity(0.4),
        filled: true,
        contentPadding: const EdgeInsets.all(2),
        prefixIcon:
            Icon(Icons.search, color: Color(0XFF1E1D26)),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.white, width: 0.0),
          borderRadius:
              BorderRadius.all(Radius.circular(25)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.white, width: 0.0),
          borderRadius:
              BorderRadius.all(Radius.circular(25)),
        ),
        suffixIcon: _textEditingController.text.isNotEmpty
          ? IconButton(
              color: Colors.grey,
              icon: Icon(Icons.cancel),
              onPressed: () {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) => _textEditingController.clear(),
                );
              },
            )
          : null,
      ),
    );
  }
}