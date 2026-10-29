import 'package:flutter/material.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/core/comeponents/app_input.dart';
import 'package:tranqulity/views/home/otp.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppImage(
                    image: 'forget_password.jpg',
                    width: 382,
                    height: 255,
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Forget Your Password',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: 33),
                  AppInput(label: 'Phone Number'),
                  SizedBox(height: 33),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Otp(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(double.infinity, 60),
                      backgroundColor: Color(0xff284243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
