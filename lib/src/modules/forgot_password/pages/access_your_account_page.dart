import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/forgot_password/logic/forgot_password_bloc.dart';

class AccessYourAccountPage extends StatelessWidget {
  const AccessYourAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Access your account")),
      body: Column(
        children: ListTile.divideTiles(
            color: Colors.black,
            tiles: _data.map((item) {
              return ListTile(
                dense: true,
                onTap: () {
                  switch (item) {
                    case "Send an email":
                      context.read<ForgotPasswordBloc>().onSendEmail(context);
                      break;
                    case "Send an SMS":
                      break;
                    case "Log in with Facebook":
                      break;
                    case "Can't reset your password?":
                      break;
                    default:
                  }
                },
                title: Text(
                  item,
                  style: const TextStyle(color: Colors.blue),
                ),
              );
            })).toList(),
      ),
    );
  }
}

List<String> _data = [
  "Send an email",
  "Send an SMS",
  "Log in with Facebook",
  "Can't reset your password?",
];
