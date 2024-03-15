// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:start/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  Future<dynamic> login(String user, password) async {
    try {
      var response = await http.post(Uri.http('dummyjson.com', '/auth/login'),
          body: {'username': user, 'password': password});

      // print(response.body);
      return jsonDecode(response.body);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 65,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: idController,
                decoration: InputDecoration(
                    hintText: 'email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: pwController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                    onPressed: () async {
                      final _loginRes = await login(
                          idController.text.toString(),
                          pwController.text.toString());

                      if (_loginRes != null) {
                        // final Map<String, dynamic> userData = _loginRes;
                        // final String firstName = userData['firstName'];
                        final userName = _loginRes['username'];
                        final email = _loginRes['email'];
                        final firstName = _loginRes['firstName'];
                        final gender = _loginRes['gender'];
                        final image = _loginRes['image'];
                        final token = _loginRes['token'];

                        // print('Login successfully! Token: $token');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage(
                                    userName: userName,
                                    email: email,
                                    firstName: firstName,
                                    gender: gender,
                                    image: image,
                                    token: token)));
                      } else {
                        Navigator.popUntil(context, (route) => false);
                      }
                    },
                    child: const Center(child: Text('Login'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
