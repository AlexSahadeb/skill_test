import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HorizontalContainer extends StatefulWidget {
  @override
  State<HorizontalContainer> createState() => _HorizontalContainerState();
}

class _HorizontalContainerState extends State<HorizontalContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(right: 10),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.branding_watermark,
              size: 40,
              color: Colors.green,
            ),
            AutoSizeText(
              'Online Class Rutine',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            AutoSizeText(
              'Save Date 10/12/2022',
              minFontSize: 13,
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
