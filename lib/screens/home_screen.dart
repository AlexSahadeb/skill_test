import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:skill_test/widgets/bottom_container.dart';
import 'package:skill_test/widgets/horizontal_container.dart';
import '../widgets/upper_introduction_row.dart';
import '../widgets/welcome_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height - // total height
        MediaQuery.of(context).padding.top - // top padding
        kBottomNavigationBarHeight;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                        //minHeight: 500,
                        ),
                    child: Container(
                      height: size * 0.52,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xF007362C),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                    ),
                  ),
                  Container(height: size * 0.45)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    const UpperIntroduction(),
                    SizedBox(
                      height: size * 0.03,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 155,
                      ),
                      child: Container(
                        height: size * 0.23,
                        child: const WelcomeContainer(),
                      ),
                    ),
                    SizedBox(
                      height: size * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AutoSizeText(
                          "Remainder Task",
                          minFontSize: 15,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: const AutoSizeText(
                              "See All",
                              minFontSize: 15,
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w500,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: size * 0.01,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 80),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        height: size * 0.14,
                        width: double.infinity,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return HorizontalContainer();
                          },
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AutoSizeText(
                          'All Tasks',
                          minFontSize: 15,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xF007362C)),
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: const AutoSizeText(
                              "See All",
                              minFontSize: 15,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: size * 0.01),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 150,
                      ),
                      child: SizedBox(
                        height: size * 0.355,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return const BottomContainer();
                          },
                          itemCount: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //  bottomNavigationBar: NavigationB(),
    );
  }
}
