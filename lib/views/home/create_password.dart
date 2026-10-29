import 'package:flutter/material.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/core/comeponents/app_input.dart';
import 'package:tranqulity/views/home/pages/chats.dart';


class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppImage(image: 'new_password.jpg', width: 382, height: 255),
                SizedBox(height: 24),
                Text(
                  'Create New Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'create your new password to log in !',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: 28),
                AppInput(
                  label: 'Password',
                  suffixIcon: 'assets/icons/eye_off.svg',
                ),
                SizedBox(height: 16),
                AppInput(
                  label: 'Confirm Password',
                  suffixIcon: 'assets/icons/eye_off.svg',
                ),
                SizedBox(height: 62),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chats()),
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
                    'Confirm',
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
    );
  }
}
