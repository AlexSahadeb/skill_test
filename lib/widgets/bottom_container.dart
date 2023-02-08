import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      height: 55,
      width: double.infinity,
      child: Row(
        children: [
          const Icon(
            Icons.branding_watermark,
            size: 40,
            color: Color(0xEBF6A536),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AutoSizeText(
                'Online Class Rutine',
                minFontSize: 14,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 2,
              ),
              AutoSizeText(
                'Save Date 10/12/2022',
                minFontSize: 13,
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
