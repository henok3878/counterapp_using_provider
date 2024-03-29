import 'package:counter_provider/ui/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/viewmodels/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
          child: HomeView()),
    );
  }
}