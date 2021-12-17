import 'package:flutter/material.dart';

class ahmet extends StatelessWidget {
  const ahmet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter ilk demo',
      theme: ThemeData(

      ),
    );
  }
}

class myhome extends StatelessWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: CircleAvatar(
          radius: 40,
        ),
      ),
    );
  }
}



