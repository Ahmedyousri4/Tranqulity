import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';

class Quotes extends StatelessWidget {
  const Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff284243),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        onPressed: () {},
        child: (SvgPicture.asset("assets/icons/floatbutton.svg")),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Quotes',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 24,
            fontWeight: FontWeight.w700,
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AppImage(
                  image: 'photo1.jpg',
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(
                    top: 50,
                    start: 16,
                    end: 16,
                  ),
                  height: 400,
                  width: 360,
                  color: Color(0xffFFFFFF).withOpacity(0.8),
                  child: Column(
                    children: [
                      AppImage(image: 'quotes.png'),
                      SizedBox(height: 30),
                      Text(
                        '“ The only way to do\n great work is to love\n what you do “',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Steve Jobs',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 34,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Copy',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff284243),
                              fontFamily: 'Inter',
                            ),
                          ),
                          SizedBox(width: 10),
                          AppImage(image: 'copy.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
