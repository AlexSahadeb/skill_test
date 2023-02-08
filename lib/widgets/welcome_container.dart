import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight * 0.2,
          decoration: BoxDecoration(
              color: const Color(0xED204F45),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white70, width: .2)),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AutoSizeText('Welcome to TicTick Task',
                        minFontSize: 21,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white)),
                    const AutoSizeText(
                      'You one-stop app for task management. simplify, track, and accomplish tasks with ease.',
                      minFontSize: 14,
                      style: TextStyle(color: Colors.white70),
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: const BorderSide(
                            width: .5,
                            color: Colors.white70,
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          backgroundColor: const Color(0xEB25956D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow),
                        label: const AutoSizeText("Watch Video"))
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Transform.rotate(
                    angle: -math.pi / 4,
                    child: Image.asset(
                      "assets/imgs/todo.png",
                      height: 80,
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
