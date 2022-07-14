import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';

class TextFieldCaption extends StatefulWidget {
  final Function(String) onChanged;
  final String value;

  const TextFieldCaption({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<TextFieldCaption> createState() => _TextFieldCaptionState();
}

class _TextFieldCaptionState extends State<TextFieldCaption> {
  late TextEditingController _controller;
  String get value => widget.value;
  bool obscureText = false;
  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant TextFieldCaption oldWidget) {
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

  Widget? _buildAction() {
    final List<Widget> actions = [];

    if (actions.isEmpty) {
      return null;
    }
    if (actions.length == 1) {
      return actions[0];
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: actions,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        style:
            Style.textTheme().labelSmall!.copyWith(color: MyColors.colorBlack2),
        controller: _controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            suffixIcon: _buildAction(),
            border: InputBorder.none,
            hintText: "Write a caption...",
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 13.5)),
        textInputAction: TextInputAction.next,
        obscureText: obscureText,
      ),
    );
  }
}
