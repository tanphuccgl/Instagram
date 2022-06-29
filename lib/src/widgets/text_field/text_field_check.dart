import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/modules/sign/signup/logic/signup_bloc.dart';

class TextFieldCheck extends StatefulWidget {
  final String hint;
  final TextInputType textInputType;
  final bool? pureUsername;
  final bool? hideSuggest;
  final Function(String) onChanged;
  final String value;
  final bool isAction;
  final Function()? onEditingComplete;

  const TextFieldCheck(
      {Key? key,
      this.hideSuggest = true,
      this.onEditingComplete,
      required this.value,
      required this.hint,
      required this.onChanged,
      this.isAction = true,
      this.pureUsername,
      this.textInputType = TextInputType.text})
      : super(key: key);

  @override
  State<TextFieldCheck> createState() => _TextFieldCheckState();
}

class _TextFieldCheckState extends State<TextFieldCheck> {
  late TextEditingController _controller;
  bool? pure = false;
  String get value => widget.value;
  final _random = Random();

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
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant TextFieldCheck oldWidget) {
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
  void initState() {
    _controller = TextEditingController(text: widget.value);
    pure = widget.pureUsername;
    super.initState();
  }

  Widget? _buildAction() {
    final List<Widget> actions = [];

    if (value != "" && widget.pureUsername == true && widget.isAction) {
      actions.add(
        const Icon(Icons.check_circle_outline_outlined, color: Colors.green),
      );
    }
    if (widget.pureUsername == false && widget.isAction) {
      actions.add(
        const Icon(
          Icons.cancel_outlined,
          color: Colors.red,
        ),
      );
      if (widget.hideSuggest == false) {
        actions.add(BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            return IconButton(
              icon: const Icon(
                Icons.autorenew,
                color: Colors.blue,
              ),
              onPressed: () => context.read<SignUpBloc>().changeUsername(
                  state.suggestUsername[
                      _random.nextInt(state.suggestUsername.length)]),
            );
          },
        ));
      }
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
}
