import 'dart:ui';

class SnackbarData {
  String title;
  String? message;
  VoidCallback? action;

  SnackbarData({required this.title, this.message, this.action});
}