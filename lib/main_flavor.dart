import 'package:flutter/material.dart';
import 'package:poc_flavor/app.dart';

import 'flavors.dart';

Future<void> buildFlavor(Flavor flavor) async {
  F.appFlavor = flavor;

  runApp(MyApp());
}
