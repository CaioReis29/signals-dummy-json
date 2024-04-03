import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast({
  required String message,
  bool isError = false,
}) => Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: isError ? Colors.red : Colors.white,
      textColor: isError ? Colors.white : Colors.black,
      fontSize: 16,
    );
