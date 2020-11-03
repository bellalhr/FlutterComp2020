import 'package:flutter/material.dart';
import 'package:my_apps/provider_strm/EligiblityScreen.dart';
import 'package:my_apps/provider_strm/ProviderUi_2.dart';

import 'Pagination/PaginationDemo.dart';
import 'callapsibleToolbar/CallapsiableToolbarUi.dart';
import 'custom_pdf/PdfGenerator.dart';
import 'internectConnectionChecker/HomePageInternetConn.dart';
import 'navigationPushOption/ScreenOne.dart';
import 'navigation_handler/locator.dart';
import 'navigation_handler/services/navigation_service.dart';
import 'package:my_apps/navigation_handler/router.dart' as  router;
import 'package:my_apps/navigation_handler/constants/route_paths.dart' as  routes;

void main() {
  //setupLocator(); //Only for navigation service register in GetIt
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenOne()

        //Todo navigation handler ====================
     /* navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.LoginRoute,*/

    //Todo End body of navigation handler ====================
    );
  }
}

