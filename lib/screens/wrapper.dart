import 'package:flutter/material.dart';
import 'package:user_login/screens/authenticate/authenticate.dart';
import 'package:user_login/screens/home/home_page.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}
