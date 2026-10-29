import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/core/comeponents/app_input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 24,
                end: 24,
                top: 24,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 153,
                        width: 153,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75),
                          color: Colors.grey.withOpacity(0.10),
                        ),
                        child: AppImage(
                          image: 'photo_add.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75),
                          color: Color(0xff284243),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/plus.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 41),
                  AppInput(label: "Username", color: Color(0xff000000)),
                  SizedBox(height: 16),
                  AppInput(label: "Phone Number"),
                  SizedBox(height: 16),
                  AppInput(label: "Age"),
                  SizedBox(height: 16),
                  AppInput(
                    label: "Gender",
                    suffixIcon: 'assets/icons/arrow_down.svg',
                  ),
                  SizedBox(height: 16),
                  AppInput(
                    label: "Password",
                    suffixIcon: 'assets/icons/eye_off.svg',
                  ),
                  SizedBox(height: 26),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 20),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "Confirm password",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 45),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size(double.infinity, 60),
                      backgroundColor: Color(0xff284243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account ?',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
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
