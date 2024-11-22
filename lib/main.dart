import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MainAppState();

}
void _getListAPI() {
  http
      .get(Uri.https('api.themoviedb.org', '/4/list/1'),
        headers: {
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5OWZkZjM3NGM1NzY4NmQ4MDlhYmFhOTAyNDA1MjRlOCIsIm5iZiI6MTczMjE1MzcyOC45MjkwNzA3LCJzdWIiOiI2NzNiYzBlODliMDcyYWJhOGM4MjYyNTUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.E65xtLV7a_gFuJsStxOtLdcoGJtFmI0BiVgU0vv48K8',
        'content-type': 'application/json;charset=utf-8'
      }
  )
      .then((value) => print(value.body));
}

// This widget is the root of your application.

class _MainAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _getListAPI();
  }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text("Primeiro APP"),
        ),
      ),
    );
  }

}
