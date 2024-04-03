import 'dart:async';

import 'package:dummy_project/global/app/my_app.dart';
import 'package:dummy_project/global/injects.dart';
import 'package:flutter/material.dart';

void main() async{
  runZonedGuarded(() async{
    WidgetsFlutterBinding.ensureInitialized();

    await setupInjection();
    runApp(const MyApp());

  }, (error, stack) {
    throw error;
  });
  
}