import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/views/on_boardingview.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnBoardingView()),
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
              AppImage(image: 'photo1.jpg', height: 600, fit: BoxFit.cover),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 19, end: 12),
                child: RichText(
                  text: TextSpan(
                    text: 'Feel Free\n',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                      fontFamily: 'Inter',
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\nBecause I'm The Friendly Chatbot Here To Assist You With Anything You Need.",
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
            ],
          ),
        ),
      ),
    );
  }
}
