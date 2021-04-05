import 'package:flutter/material.dart';
import 'package:user_login/services/auth.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Kullanıcı Girşi'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 20.0,
        ),
        child: ElevatedButton(
          onPressed: () async {
            dynamic results = await _auth.signInAnon();
            if (results == null) {
              print('Sign in error');
            } else {
              print('signied in');
              print(results);
            }
          },
          child: Text('Sign in to Anonymous'),
        ),
      ),
    );
  }
}
