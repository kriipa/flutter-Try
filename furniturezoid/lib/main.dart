
import 'package:furniturezoid/helper/objectbox.dart';
import 'package:furniturezoid/state/objectbox_state.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  // Create an object for ObjectBoxInstance
  ObjectBoxState.objectBoxInstance = await ObjectBoxInstance.init();
  runApp(
    const MyApp(),
  );
}
