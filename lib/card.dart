import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class goksel extends StatelessWidget {
  goksel(this.kare, this.metin,this.resim);

  final bool kare;
  final metin;
  final resim;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: kare == true ? BoxShape.rectangle : BoxShape.circle),
              width: 120,
              height: 120,
              child: Image.asset(('resim/'+resim)),
            ),
            Flexible(
                child: Text(
              metin,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ))
          ],
        ),
      ),
    );
  }
}
