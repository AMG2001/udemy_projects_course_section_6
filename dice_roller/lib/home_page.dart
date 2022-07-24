import 'dart:math';

import 'package:flutter/material.dart';

class HmePage extends StatelessWidget {
  int diceFaceIndex = 0;
  List<Image> diceFacesList = [
    Image(image: AssetImage("assets/Alea_1.png")),
    Image(image: AssetImage("assets/Alea_2.png")),
    Image(image: AssetImage("assets/Alea_3.png")),
    Image(image: AssetImage("assets/Alea_4.png")),
    Image(image: AssetImage("assets/Alea_5.png")),
    Image(image: AssetImage("assets/Alea_6.png"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dice Roller")),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                diceFacesList[diceFaceIndex],
                SizedBox(height: 20,),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      diceFaceIndex = Random().nextInt(6);
                    });
                  },
                  child: Text("Change Dice"),
                )
              ],
            );
          },
        ),
      )),
    );
  }
}
