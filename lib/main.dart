import 'package:flutter/material.dart';

import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> sarkilar = [
    "Gokselin sevdigi sarki",
    "Gokselin sevdigi sarki2",
    "Gokselin sevdigi sarki3",
    "Gokselin sevmedigi sarki"
  ];
  List<String> sanatci = [
    "ahmet kaya",
    "Görkem buzdere",
    "Murat bayrak",
    "Mustafa",
    "Akın"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.black87,
          title: Text("Günaydın"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.flash_on)),
            IconButton(onPressed: () {}, icon: Icon(Icons.history)),
            IconButton(onPressed: () {}, icon: Icon(Icons.article)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '',
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sanatci.length,
                itemBuilder: (BuildContext context, int index) {
                  return goksel(false, sanatci[index],"100.jpg");
                },
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sarkilar.length,
                itemBuilder: (BuildContext context, int index) {
                  return goksel(true, sarkilar[index],"100.jpg");
                },
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sarkilar.length,
                itemBuilder: (BuildContext context, int index) {
                  return goksel(true, sarkilar[index],"100.jpg");
                },
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sarkilar.length,
                itemBuilder: (BuildContext context, int index) {
                  return goksel(true, sarkilar[index],"100.jpg");
                },
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sarkilar.length,
                itemBuilder: (BuildContext context, int index) {
                  return goksel(true, sarkilar[index],"100.jpg");
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.list),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
