// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user/bird.dart';
import 'package:user/wtf.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static double birdYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = birdYaxis;
  bool gamesatarted = false;
  static double wtfxone = 1;
  double wtfxtwo = wtfxone + 1.5;
  void jump() {
    setState(() {
      // ignore: avoid_print
      print("working fuck buddy");
      time = 0;
      initialHeight = birdYaxis;
    });
  }

  void startgame() {
    gamesatarted = true;
    // ignore: avoid_print
    print("working game");
    initialHeight = birdYaxis;
    Timer.periodic(Duration(milliseconds: 60), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 2.8 * time;
      setState(() {
        birdYaxis = initialHeight - height;
        wtfxone -= 0.05;
        wtfxtwo -= 0.05;
      });
      if (birdYaxis > 0.7) {
        timer.cancel();
        gamesatarted = false;
        // ignore: avoid_print
        print("working time");
      }
    });
  }
  //height = y
  //acceleration y.. = -g, velocity y. =-gt+v,height y = -gt^2/2 + vt
  // suthiram   y = -4.9t^2 + 5t

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    if (gamesatarted) {
                      jump();
                    } else {
                      startgame();
                    }
                  },
                  child: AnimatedContainer(
                    alignment: Alignment(0, birdYaxis),
                    duration: Duration(milliseconds: 0),
                    child: bird(),
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  alignment: Alignment(0, -0.3),
                  child: gamesatarted
                      ? Text("")
                      : Text(
                          "TAP TO PLAY ",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                ),
                AnimatedContainer(
                  alignment: Alignment(wtfxone, 1.1),
                  duration: Duration(milliseconds: 0),
                  child: wtf(
                    size: 170.0,
                  ),
                ),
                AnimatedContainer(
                  alignment: Alignment(wtfxone, -1.1),
                  duration: Duration(milliseconds: 0),
                  child: wtf(
                    size: 170.0,
                  ),
                ),
                AnimatedContainer(
                  alignment: Alignment(wtfxtwo, 1.1),
                  duration: Duration(milliseconds: 0),
                  child: wtf(
                    size: 150.0,
                  ),
                ),
                AnimatedContainer(
                  alignment: Alignment(wtfxtwo, -1.1),
                  duration: Duration(milliseconds: 0),
                  child: wtf(
                    size: 250.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            color: Colors.green,
          ),
          Expanded(
            child: Container(
              color: Colors.brown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "SCORE",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text("0",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("BESTSCORE",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text("10",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
