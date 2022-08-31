import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_tut2/provider/slider_model_provider.dart';

import 'view/slider_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderModelProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SliderProvider(),
      ),
    );
  }
}
