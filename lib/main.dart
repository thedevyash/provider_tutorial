import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/home_screen.dart';
import 'package:provider_tutorial/provider/count_provider.dart';
import 'package:provider_tutorial/provider/exampleone_provider.dart';
import 'package:provider_tutorial/provider/favourite_provider.dart';
import 'package:provider_tutorial/provider/theme_chnger_provider.dart';
import 'package:provider_tutorial/screen/count_example.dart';
import 'package:provider_tutorial/screen/dark_theme.dart';
import 'package:provider_tutorial/screen/example_one.dart';
import 'package:provider_tutorial/screen/favouriteScreen.dart';
import 'package:provider_tutorial/stateless%20as%20stateful/value_notify_listener.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => exampleOneProvider()),
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => favouriteItemProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ],
        child: Builder(
          builder: (BuildContext context) {
            return MaterialApp(
              themeMode: Provider.of<ThemeChangerProvider>(context).themeMode,
              theme: ThemeData(brightness: Brightness.light),
              darkTheme: ThemeData(brightness: Brightness.dark),
              home: NotifyListenersScreen(),
            );
          },
        ));
  }
}
//dark mode ke liye MaterialApp ko Builder mei dalna pdta hai wrna error aa jaeyega
//dark aur light mode dono ki theme set krni pdti hai alg se brightness deke
//alag se consumer nahi bnaoge to bhi chalega