import 'package:flutter/material.dart';
import 'package:flutter_farming/Screens/About.dart';
import 'package:flutter_farming/Screens/Blogs.dart';
import 'package:flutter_farming/Screens/Home_Screen.dart';
import 'package:flutter_farming/Screens/Solution_Screen.dart';
import 'package:flutter_farming/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(
            width: 100,
          ),
          const SizedBox(
            width: 10.0,
          ),
          'Smart Farming'.text.white.textStyle(GoogleFonts.poppins(fontSize: 24)).make(),
          const SizedBox(
            width: 250,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen()
                    
                    )
                  ) , child: HeaderNav(text: 'Home', selected: false)),
              SizedBox(
                width: 40,
              ),
              InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SolutionScreen()
                    
                    )
                  ) ,
                  child: HeaderNav(text: 'Find a Sol', selected: false)),
              SizedBox(
                width: 40,
              ),
              InkWell(
                  onTap: () =>Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BlogsScreen()
                    
                    )
                  ) ,
                  child: HeaderNav(text: 'Blogs', selected: false)),
              SizedBox(
                width: 40,
              ),
              InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AboutScreen()
                    
                    )
                  ) ,
                  child: HeaderNav(text: 'About', selected: false)),
              SizedBox(
                width: 40,
              ),
            ],
          ),
         
        ],
      ),
      
    );
  }
}


class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;
  const HeaderNav({Key? key, required this.text, required this.selected})
      : super(key: key);

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text(
          widget.text,
          style: GoogleFonts.poppins(
            fontSize: 13.0,
            color: Colors.white,
          ),
        ),
        widget.selected
            ? const SizedBox(
                height: 5.0,
              )
            : const SizedBox(),
        widget.selected
            ? const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 2.0,
              )
            : const SizedBox()
      ],
    );
  }
}
