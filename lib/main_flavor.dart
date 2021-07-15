import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:poc_flavor/app.dart';

import 'flavors.dart';

Future<void> buildFlavor(Flavor flavor) async {
  F.appFlavor = flavor;

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  RemoteConfig.instance.fetchAndActivate();
  RemoteConfig.instance.settings.fetchTimeout = Duration(minutes: 1);

  runApp(MyApp());
}
