import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:venuedashdriverapp/routers/home_page.dart';
import 'package:venuedashdriverapp/routers/welcome_page.dart';

void main() => {runApp(const VenueDashDriver())};

class VenueDashDriver extends StatelessWidget {
  const VenueDashDriver({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
