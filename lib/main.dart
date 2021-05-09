// Forcam FORCE Mobile App
// Version: 1.0
// Author: Saurabh Bansal <saurabh.bansal@forcam.com>
// Auth URL: https://forcebridgehackathon.force.eco:25443/ffauth/oauth2.0/accessToken?client_id=GitHub&client_secret=GitHub&grant_type=client_credentials&scope=read%20write

import 'package:flutter/material.dart';

import 'model/token.dart';
import 'logic/token_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forcam FORCE App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Token> futureToken;

  @override
  void initState() {
    super.initState();
    futureToken = fetchToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forcam FORCE App'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: FutureBuilder<Token>(
          future: futureToken,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.scope);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
