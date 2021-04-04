import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 200,
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        Icon(
                          Icons.login,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Login wit Google')
                      ],
                    ),
                    onPressed: () {
                      print('alpr');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Merhaba'),
        ),
      ),
    );
  }
}
