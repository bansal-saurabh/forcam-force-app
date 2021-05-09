import 'dart:convert';
import 'package:http/http.dart' as http;

import 'dart:developer' as developer;

import '../model/token.dart';

Future<Token> fetchToken() async {
  final response = await http.get(Uri.parse(
      'https://forcebridgehackathon.force.eco:25443/ffauth/oauth2.0/accessToken?client_id=GitHub&client_secret=GitHub&grant_type=client_credentials&scope=read%20write'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // developer.log(response.body.toString());
    return Token.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    // developer.log(response.body.toString());
    throw Exception('Failed to get token');
  }
}
