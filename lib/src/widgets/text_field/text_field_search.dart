import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/config/theme/style.dart';

class SearchTextField extends StatefulWidget {
  final String hint;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final String value;
  final bool isAction;
  final Function()? onEditingComplete;

  const SearchTextField(
      {Key? key,
      this.onEditingComplete,
      required this.value,
      required this.hint,
      required this.onChanged,
      this.isAction = true,
      this.textInputType = TextInputType.text})
      : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late TextEditingController _controller;
  String get value => widget.value;
  bool obscureText = false;
  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant SearchTextField oldWidget) {
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
    if (value.isNotEmpty && widget.isAction) {
      actions.add(IconButton(
        icon: const Icon(
          Icons.clear,
          color: MyColors.colorGray,
        ),
        onPressed: () {
          widget.onChanged.call("");
        },
      ));
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: MyProperties.borderRadius,
            border: Border.all(color: MyColors.colorGray, width: 0.5)),
        height: 44,
        child: TextField(
          onEditingComplete: widget.onEditingComplete,
          style: Style.textTheme()
              .labelSmall!
              .copyWith(color: MyColors.colorBlack2),
          controller: _controller,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
              suffixIcon: _buildAction(),
              border: InputBorder.none,
              hintText: widget.hint,
              hintStyle: Style.textTheme()
                  .labelSmall!
                  .copyWith(color: MyColors.colorBlack.withOpacity(0.2)),
              fillColor: MyColors.colorBlack.withOpacity(0.1),
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 13.5)),
          keyboardType: widget.textInputType,
          maxLines: 1,
          minLines: 1,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
        ),
      ),
    );
  }
}
