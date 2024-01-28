import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/theme_chnger_provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DarkThemeProvider"),
      ),
      body: Column(
        children: [
          Consumer<ThemeChangerProvider>(
            builder: (context, value, child) {
              return RadioListTile<ThemeMode>(
                  title: Text("Light Mode"),
                  value: ThemeMode.light,
                  groupValue: value.themeMode,
                  onChanged: value.setTheme);
            },
          ),
          Consumer<ThemeChangerProvider>(
            builder: (context, value, child) {
              return RadioListTile<ThemeMode>(
                  title: Text("Dark Mode"),
                  value: ThemeMode.dark,
                  groupValue: value.themeMode,
                  onChanged: value.setTheme);
            },
          ),
          Consumer<ThemeChangerProvider>(
            builder: (context, value, child) {
              return RadioListTile<ThemeMode>(
                  title: Text("System Mode"),
                  value: ThemeMode.system,
                  groupValue: value.themeMode,
                  onChanged: value.setTheme);
            },
          )
        ],
      ),
    );
  }
}
