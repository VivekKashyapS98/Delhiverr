import 'package:delhiverr/helpers/requests.dart';
import 'package:provider/provider.dart';

import './pages/home.dart';
import './pages/new_request.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Requests(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext ctx) => const Home(),
          '/newRequest': (BuildContext ctx) => const NewRequest()
        },
      ),
    );
  }
}
