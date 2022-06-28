import 'package:flutter/material.dart';

class TextFieldEditProfile extends StatefulWidget {
  final String label;
  final bool readOnly;
  final String value;
  final VoidCallback? onTap;
  final Function(String) onChanged;
  final Function()? onEditingComplete;

  final bool isLoading;
  final bool isAction;

  const TextFieldEditProfile(
      {Key? key,
      required this.label,
      this.readOnly = false,
      this.isAction = true,
      this.onEditingComplete,
      required this.onChanged,
      required this.value,
      this.isLoading = false,
      this.onTap})
      : super(key: key);

  @override
  State<TextFieldEditProfile> createState() => _TextFieldEditProfileState();
}

class _TextFieldEditProfileState extends State<TextFieldEditProfile> {
  late TextEditingController _controller;
  String get value => widget.value;
  bool obscureText = false;
  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant TextFieldEditProfile oldWidget) {
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
    if (widget.isLoading && widget.isAction) {
      actions.add(const CircularProgressIndicator());
    }
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
    return TextField(
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      onEditingComplete: widget.onEditingComplete,
      style: const TextStyle(fontSize: 15),
      controller: _controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        suffixIcon: _buildAction(),
        border: const UnderlineInputBorder(),
        labelText: widget.label,
        labelStyle: const TextStyle(fontSize: 15),
      ),
      maxLines: 1,
      minLines: 1,
      textInputAction: TextInputAction.next,
    );
  }
}
