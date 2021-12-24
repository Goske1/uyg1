import 'package:flutter/material.dart';
void main()=>runApp(ahmet());
class ahmet extends StatelessWidget {
  const ahmet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'flutter ilk demo',
      theme: ThemeData(
      ),
      home: Scaffold(

          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: Colors.black87,
              title: Text("Günaydın"),

              actions: [

                IconButton(onPressed: (){}, icon: Icon(Icons.flash_on)),
                IconButton(onPressed: (){}, icon: Icon(Icons.history)),
                IconButton(onPressed: (){}, icon: Icon(Icons.article)),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
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
              onPressed: () {

              },
            ),
            IconButton(
              iconSize: 30.0,
              icon: Icon(Icons.search),
              onPressed: () {



              },
            ),

            IconButton(
              iconSize: 30.0,

              icon: Icon(Icons.list),
              onPressed: () {

              },
            )
          ],
        ),
      ),
    ),
    ),
    );



  }
}



