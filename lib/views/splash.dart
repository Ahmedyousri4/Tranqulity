import 'package:flutter/material.dart';
import 'package:tranqulity/views/on_boarding.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    redirect();
    super.initState();
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const OnBoardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 360,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            color: Colors.grey.withOpacity(0.3),
          ),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Tranqulity\n',
                style: TextStyle(
                  color: Color(0xff284243),
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Mystery Quest',
                ),
                children: [
                  TextSpan(
                    text: 'Together Towards Tranquility',
                    style: TextStyle(
                      color: Color(0xff284243),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
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
