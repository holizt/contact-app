import 'package:flutter/material.dart';
import 'package:get/get.dart';

dynamic errorMessageSnackbar(String message) {
  return Get.snackbar(
    '',
    '',
    snackPosition: SnackPosition.BOTTOM,
    titleText: Container(),
    messageText: Center(
      child: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    ),
    backgroundColor: Colors.redAccent,
    borderRadius: 8,
  );
}
