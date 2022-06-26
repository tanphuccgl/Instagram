import 'package:bot_toast/bot_toast.dart';

class XSnackBar {
  static CancelFunc? cancel;

  static show({required String msg}) => BotToast.showText(text: msg);
}
