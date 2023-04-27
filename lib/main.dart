import 'package:flutter/material.dart';
import 'package:meal_inter/full_screens/menu.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:meal_inter/providers/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => MenuProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Menu(),
      ),
    );
  }
}
