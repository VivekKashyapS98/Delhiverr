import './helpers/requests.dart';
import './widgets/booking/request_details.dart';
import './pages/home.dart';
import './pages/new_request.dart';

import 'package:provider/provider.dart';
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
        title: 'Delhiverr',
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Nunito',
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.blueGrey.shade800),
            bodyText2: TextStyle(color: Colors.blueGrey.shade800),
          ),
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext ctx) => const Home(),
          '/newRequest': (BuildContext ctx) => const NewRequest(),
          '/requestDetails': (BuildContext ctx) => const RequestDetails()
        },
      ),
    );
  }
}
