import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UpperIntroduction extends StatelessWidget {
  const UpperIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                AutoSizeText("Hi Habib",
                    minFontSize: 21,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white)),
                SizedBox(
                  width: 3,
                ),
                Text("👋",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
            const AutoSizeText(
              "Let's explore your notes",
              minFontSize: 14,
              style: TextStyle(color: Colors.white70),
            )
          ],
        ),
        const CircleAvatar(
          backgroundColor: Colors.green,
          radius: 23,
          child: Image(
            height: 40,
            width: 40,
            image: AssetImage('assets/imgs/download-modified.png'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
