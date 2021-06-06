
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ss.dart';
void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => new ThemeNotifier(),
    child: Mode(),
  ));
}

class Mode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, _) => MaterialApp(
        theme: theme.getTheme(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hybrid Theme'),
          ),
          body: Row(
            children: [
              Container(
                child: TextButton(
                  onPressed: () => {
                    print('Set Light Theme'),
                    theme.setLightMode(),
                  },
                  child: Text('Set Light Theme'),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () => {
                    print('Set Dark theme'),
                    theme.setDarkMode(),
                  },
                  child: Text('Set Dark theme'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}