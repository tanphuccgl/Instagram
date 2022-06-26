import 'package:flutter_easyloading/flutter_easyloading.dart';

class BaseLoading {
  static void show() {
    EasyLoading.show(status: 'loading...');
  }

  static void init() {
    EasyLoading.init();
  }

  static void showProgress() {
    EasyLoading.showProgress(0.3, status: 'downloading...');
  }

  static void showSuccess() {
    EasyLoading.showSuccess('Great Success!');
  }

  static void showError() {
    EasyLoading.showError('Failed with Error');
  }

  static void showInfo() {
    EasyLoading.showInfo('Useful Information.');
  }

  static void showToast() {
    EasyLoading.showToast('Toast');
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }
}
