import 'package:flutter/material.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/core/comeponents/app_input.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 24,
              end: 24,
              top: 50,
            ),
            child: Column(
              children: [
                AppImage(image: 'new_password.jpg'),
                SizedBox(height: 23),
                Text(
                  'Change Your Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: 24),
                AppInput(label: 'Old Password'),
                SizedBox(height: 16),
                AppInput(label: 'New Password'),
                SizedBox(height: 16),
                AppInput(label: 'Confirm New Password'),
                SizedBox(height: 36),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xff284243),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Center(
                      child: Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'Inter',
                        ),
                      ),
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
