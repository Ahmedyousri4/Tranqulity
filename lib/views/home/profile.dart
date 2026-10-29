import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/core/comeponents/app_input.dart';
import 'package:tranqulity/views/home/change_password.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
            fontFamily: 'Inter',
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 290,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff284243),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: AppImage(
                        image: 'profile.jpg',
                        height: 160,
                        width: 160,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Sara',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                        fontFamily: 'Inter',
                      ),
                    ),
                    Text(
                      '01027545631',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xff284243).withOpacity(0.10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: AppImage(image: 'about.svg'),
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                  fontFamily: 'Inter',
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff284243),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        onPressed: () {},
        child: (SvgPicture.asset("assets/icons/floatbutton.svg")),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 60,
              start: 24,
              end: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: AppImage(
                          image: 'profile.jpg',
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff284243),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: AppImage(
                            image: 'edit (1).svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                AppInput(label: 'Name'),
                SizedBox(height: 30),
                AppInput(label: 'Email'),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(child: AppInput(label: '22')),
                    SizedBox(width: 10),
                    Expanded(child: AppInput(label: 'Male')),
                  ],
                ),
                SizedBox(height: 33),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff284243),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 21),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangePassword(),
                          ),
                        );
                      },
                      child: Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff284243),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                    Spacer(),
                    AppImage(
                      image: 'edite.svg',
                      width: 24,
                      height: 24,
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
