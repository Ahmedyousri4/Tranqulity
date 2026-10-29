import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tranqulity/core/comeponents/app_image.dart';
import 'package:tranqulity/views/home/personal_assistent.dart';
import 'package:tranqulity/views/home/profile.dart';
import 'package:tranqulity/views/home/quotes.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  int selectedIndex = 0;
  List<_Model> items = [
    _Model(icon: 'assets/icons/chats.svg', page: EmptyChats(), label: 'Chats'),
    _Model(icon: 'assets/icons/quotes.svg', page: Quotes(), label: 'Quotes'),
    _Model(icon: 'assets/icons/profile.svg', page: Profile(), label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color(0xff284243)),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff284243),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.3),
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          unselectedLabelStyle: TextStyle(
            color: Color(0xffFFFFFF).withOpacity(0.3),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          items: List.generate(items.length, (index) {
            return BottomNavigationBarItem(
              backgroundColor: Color(0xff284243),
              icon:
                  items[index].icon.endsWith('.svg')
                      ? SvgPicture.asset(
                        items[index].icon,
                        colorFilter: ColorFilter.mode(
                          selectedIndex == index
                              ? Color(0xffFFFFFF)
                              : Color(0xffFFFFFF).withOpacity(0.3),
                          BlendMode.srcIn,
                        ),
                      )
                      : Image.asset(
                        items[index].icon,
                        color:
                            selectedIndex == index
                                ? Color(0xffFFFFFF)
                                : Color(0xffFFFFFF).withOpacity(0.3),
                      ),
              label: items[index].label,
            );
          }),
        ),
      ),

      body: items[selectedIndex].page,
    );
  }
}

class EmptyChats extends StatelessWidget {
  const EmptyChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff284243),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PersonalAssistent()),
          );
        },
        child: (SvgPicture.asset("assets/icons/floatbutton.svg")),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leadingWidth: 24,
        title: Text(
          'Chats',
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chats()),
                    );
                  },
                  child: ListTile(
                    horizontalTitleGap: 0,
                    contentPadding: EdgeInsetsDirectional.only(top: 24),
                    title: Container(
                      height: 52,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xff284243).withOpacity(0.10),
                        border: Border.all(color: Color(0xff000000)),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 16,
                          top: 18,
                          bottom: 18,
                          end: 16,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'About Work',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                fontFamily: 'Inter',
                              ),
                            ),
                            Spacer(),
                            Text(
                              '10/12/2021',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: AppImage(image: 'delet.svg'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chats()),
                    );
                  },
                  child: ListTile(
                    horizontalTitleGap: 0,
                    contentPadding: EdgeInsetsDirectional.only(top: 0),
                    title: Container(
                      height: 52,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xff284243).withOpacity(0.10),
                        border: Border.all(color: Color(0xff000000)),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 16,
                          top: 18,
                          bottom: 18,
                          end: 16,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'About My Family',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                fontFamily: 'Inter',
                              ),
                            ),
                            Spacer(),
                            Text(
                              '10/12/2021',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: AppImage(image: 'delet.svg'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chats()),
                    );
                  },
                  child: ListTile(
                    horizontalTitleGap: 0,
                    contentPadding: EdgeInsetsDirectional.only(top: 0),
                    title: Container(
                      height: 52,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xff284243).withOpacity(0.10),
                        border: Border.all(color: Color(0xff000000)),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 16,
                          top: 18,
                          bottom: 18,
                          end: 16,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'My self',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                fontFamily: 'Inter',
                              ),
                            ),
                            Spacer(),
                            Text(
                              '10/12/2021',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: AppImage(image: 'delet.svg'),
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

class _Model {
  final String icon;
  final Widget page;
  final String? label;

  _Model({required this.icon, required this.page, this.label});
}
