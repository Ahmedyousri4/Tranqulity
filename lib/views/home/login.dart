import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/core/comeponents/app_input.dart';
import 'package:tranqulity/views/home/forget_password.dart';
import 'package:tranqulity/views/home/pages/chats.dart';
import 'package:tranqulity/views/home/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsetsDirectional.only(bottom: 24),
                    height: 200,
                    width: 400,
                    child: Image.asset(
                      "assets/images/login.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                RichText(
                  text: TextSpan(
                    text: "Welcome To\n",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      fontFamily: 'Inter',
                    ),
                    children: [
                      TextSpan(
                        text: "Tranquility",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff284243),
                          fontFamily: 'Mystery Quest',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                AppInput(),
                SizedBox(height: 16),
                AppInput(suffixIcon: "assets/icons/eye_off.svg"),
                SizedBox(height: 24),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 56),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(end: 10),
                      height: 60,
                      width: 58,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Subtract.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(double.infinity, 60),
                          backgroundColor: Color(0xff284243),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chats()),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
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
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.30),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(start: 4),
                          padding: EdgeInsetsDirectional.only(
                            start: 10,
                            end: 10,
                          ),
                          height: 60,
                          width: 58,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.10),
                                offset: Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                          ),
                          child: AppImage(
                            image: 'google.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(start: 8, end: 8),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff35B542).withOpacity(0.50),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Login With Google',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.30),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(start: 4),
                          padding: EdgeInsetsDirectional.only(
                            start: 10,
                            end: 10,
                          ),
                          height: 60,
                          width: 58,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.10),
                                offset: Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                          ),
                          child: AppImage(
                            image: 'facebook (1).png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsetsDirectional.only(start: 8, end: 8),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff518EF8).withOpacity(0.50),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Login With Google',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter',
                            ),
                          ),
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
    );
  }
}
