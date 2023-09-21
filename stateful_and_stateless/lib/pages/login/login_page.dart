import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  bool get _isValidEmail {
    return _email.contains("@");
  }

  bool get _isValidPassword {
    return !_password.contains(" ") && _password.length >= 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Email: "),
              TextField(
                onChanged: (value) {
                  _email = value;
                  setState(() {});
                },
              ),
              const SizedBox(height: 30),
              const Text("Password: "),
              TextField(onChanged: (value) {
                _password = value;
                setState(() {});
              }),
              const SizedBox(height: 50),
              MaterialButton(
                onPressed: _isValidEmail && _isValidPassword ? () {} : null,
                child: Text("SEND"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
