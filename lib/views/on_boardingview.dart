import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/views/on_boarding3.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnBoarding3()),
          );
        },
        shape: CircleBorder(),
        backgroundColor: Color(0xff284243),
        foregroundColor: Colors.white,
        child: SvgPicture.asset('assets/icons/arrow.svg'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppImage(image: 'hand.jpg', height: 600, fit: BoxFit.cover),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 19, end: 38),
                child: RichText(
                  text: TextSpan(
                    text: 'Ask For Anything\n',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                      fontFamily: 'Inter',
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\nI'm your friendly neighborhood chatbot ready to assist you with any questions or concerns.",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 93),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
