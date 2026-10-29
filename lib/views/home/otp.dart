import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/views/home/create_password.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
                AppImage(image: 'otp.jpg', width: 382, height: 255),
                SizedBox(height: 24),
                Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Please enter the code sent on your\nphone.',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff284243).withValues(alpha: 0.67),
                  ),
                ),
                SizedBox(height: 24),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 60,
                    fieldWidth: 70,
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.blue.shade50,
                    inactiveFillColor: Colors.grey.shade200,
                    activeColor: Color(0xff284243).withValues(alpha: 0.67),
                    selectedColor: Color(0xff284243).withValues(alpha: 0.67),
                    inactiveColor: Colors.grey,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onChanged: (value) {
                    print(value);
                  },
                  onCompleted: (value) {
                    print("Code Completed: $value");
                  },
                ),
                SizedBox(height: 60),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateNewPassword(),
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
                    'Verify',
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
