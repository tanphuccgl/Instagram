import 'package:flutter/material.dart';

class TextFieldComment extends StatefulWidget {
  final String value;
  final Function(String) onChanged;

  const TextFieldComment({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  State<TextFieldComment> createState() => _TextFieldCommentState();
}

class _TextFieldCommentState extends State<TextFieldComment> {
  late TextEditingController _controller;
  String get value => widget.value;
  bool obscureText = false;
  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant TextFieldComment oldWidget) {
    if (_controller.text != widget.value) {
      _controller.text = widget.value;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: _controller,
      style: TextStyle(
        fontSize: 15.0,
        color: Theme.of(context).textTheme.headline6!.color,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10.0),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: "Add a comment...",
        hintStyle: TextStyle(
          fontSize: 15.0,
          color: Theme.of(context).textTheme.headline6!.color,
        ),
      ),
      maxLines: null,
    );
  }
}
