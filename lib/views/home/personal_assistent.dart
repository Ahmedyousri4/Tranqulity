import 'package:flutter/material.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/core/comeponents/app_input.dart';

class PersonalAssistent extends StatelessWidget {
  const PersonalAssistent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff284243).withOpacity(0.15)),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  color: Color(0xff284243).withOpacity(0.15),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 62),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppImage(image: 'boot.svg', width: 157, height: 157),
                      SizedBox(height: 14),
                      Text(
                        'Hey!',
                        style: TextStyle(
                          color: Color(0xff284243),
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: 9),
                      Text(
                        "I’am your Personal Assistant",
                        style: TextStyle(
                          color: Color(0xff284243),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 48),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Make New Chat',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppInput(hint: 'Enter The Title Of Chat'),
                    SizedBox(height: 24),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size(double.infinity, 60),
                        backgroundColor: Color(0xff284243),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Create Chat',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                          fontFamily: 'Inter',
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
    );
  }
}
