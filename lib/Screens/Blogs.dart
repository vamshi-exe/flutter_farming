import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_farming/Screens/About.dart';
import 'package:flutter_farming/Screens/Home_Screen.dart';
import 'package:flutter_farming/Screens/Solution_Screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../source/Header.dart';
import '../source/InfoPallete.dart';
import '../source/ProfileImage.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600,
                        width: MediaQuery.of(context).size.width * 0.81,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180, 170),
                              child: Container(
                                height: 350,
                                width: 700,
                                decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(300)),
                              ),
                            ),
                            // Positioned(
                            //   top: 200,
                            //   left: 100,
                            //   child: Container(
                            //     height: 400,
                            //     width: 400,
                            //     child: Column(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Text(
                            //           'Manage All Your Crops',
                            //           style: GoogleFonts.nunitoSans(
                            //               fontSize: 30,
                            //               fontWeight: FontWeight.w700),
                            //         ),
                            //         Text(
                            //           'All in one place',
                            //           style: GoogleFonts.nunitoSans(
                            //               fontSize: 25,
                            //               fontWeight: FontWeight.w700),
                            //         ),
                            //         const SizedBox(
                            //           height: 20,
                            //         ),
                            //         Container(
                            //           width: 300,
                            //           child: Text(
                            //             'Farming is a essential part of human life.To make Farming easy for a farmer.',
                            //             style: GoogleFonts.poppins(
                            //                 fontSize: 14,
                            //                 fontWeight: FontWeight.w300),
                            //           ),
                            //         ),
                            //         const SizedBox(
                            //           height: 30,
                            //         ),
                            //         Row(
                            //           children: [
                            //             Container(
                            //               height: 45,
                            //               width: 230,
                            //               child: TextField(
                            //                 decoration: InputDecoration(
                            //                     hintText:
                            //                         'Enter Your E-mail Address',
                            //                     hintStyle: GoogleFonts.poppins(
                            //                       fontSize: 12,
                            //                     ),
                            //                     border: OutlineInputBorder(
                            //                         borderRadius:
                            //                             BorderRadius.circular(
                            //                                 50))),
                            //               ),
                            //             ),
                            //             const SizedBox(
                            //               width: 20,
                            //             ),
                            //             TextButton(
                            //                 style: TextButton.styleFrom(
                            //                     backgroundColor: Colors.black87,
                            //                     shape: RoundedRectangleBorder(
                            //                         borderRadius:
                            //                             BorderRadius.circular(
                            //                                 30))),
                            //                 onPressed: () {},
                            //                 child: Container(
                            //                   height: 45,
                            //                   width: 100,
                            //                   child: Center(
                            //                     child: Text(
                            //                       'Get Video Link',
                            //                       style: GoogleFonts.poppins(
                            //                         color: Colors.white,
                            //                         fontSize: 13,
                            //                       ),
                            //                     ),
                            //                   ),
                            //                 ))
                            //           ],
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      // Container(
                      //   height: 600,
                      //   color: Colors.white,
                      //   width: MediaQuery.of(context).size.width * 0.55,
                      //   child: Stack(
                      //     clipBehavior: Clip.none,
                      //     children: const [
                      //       ProfileImage(
                      //         top: 140,
                      //         left: 90,
                      //         diameter: 200,
                      //         image:
                      //             'https://media.istockphoto.com/photos/germany-stuttgart-magical-orange-sunset-sky-above-ripe-grain-field-picture-id1280715716?b=1&k=20&m=1280715716&s=170667a&w=0&h=1Gce2BdmCjkg_6l7_YjeE-I9U79nWrOGAGx4iLmv_qg=',
                      //       ),
                      //       ProfileImage(
                      //         top: 160,
                      //         left: 310,
                      //         diameter: 100,
                      //         image:
                      //             'https://media.istockphoto.com/photos/we-herd-you-were-looking-for-some-magnificent-cattle-picture-id1303666715?b=1&k=20&m=1303666715&s=170667a&w=0&h=mOQcfUp6wdVwwVtoigfMQZHLGv4RWUzm_5PKvZc58go=',
                      //       ),
                      //       ProfileImage(
                      //         top: 275,
                      //         left: 280,
                      //         diameter: 280,
                      //         image:
                      //             'https://images.unsplash.com/photo-1592158141916-399d9e7d6afc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFybXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60',
                      //       ),
                      //       ProfileImage(
                      //         top: 360,
                      //         left: 90,
                      //         diameter: 170,
                      //         image:
                      //             'https://media.istockphoto.com/photos/fresh-green-soy-plants-on-the-field-in-spring-rows-of-young-soybean-picture-id1303980089?b=1&k=20&m=1303980089&s=170667a&w=0&h=vZkqMTfNKw8kd8FbsvWbuL-BHe0PKn5fqu-lbP22SeQ=',
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                  Header(),
                  
                ],
              ),
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      right: -200,
                      child: Container(
                        height: 330,
                        width: 430,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(300),
                        ),
                      ),
                    ),
                    // Column(
                    //   children: [
                    //     Text(
                    //       'How it Works',
                    //       style: GoogleFonts.poppins(
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w700,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 40,
                    //     ),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: const [
                    //         InfoPallete(
                    //           title: 'Community',
                    //           icon: Icons.people_rounded,
                    //           text: 'Farming is the backbone of the humanity.',
                    //         ),
                    //         InfoPallete(
                    //           title: 'OverView Reports',
                    //           icon: Icons.pie_chart_rounded,
                    //           text: 'View Crop Reports.',
                    //         ),
                    //         InfoPallete(
                    //           title: 'Dashboard',
                    //           icon: Icons.person_rounded,
                    //           text: 'View Statistics.',
                    //         ),
                    //       ],
                    //     ),
                    //     SizedBox(
                    //       height: 60,
                    //     ),
                    //     TextButton(
                    //         style: TextButton.styleFrom(
                    //             backgroundColor: Colors.white,
                    //             primary: Colors.black87,
                    //             padding: EdgeInsets.all(0)),
                    //         onPressed: () {},
                    //         child: Container(
                    //           padding: EdgeInsets.symmetric(
                    //               horizontal: 30, vertical: 8),
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(40),
                    //             border: Border.all(
                    //               color: Color.fromRGBO(66, 66, 66, 1),
                    //             ),
                    //           ),
                    //           child: Text(
                    //             'Explore More',
                    //             style: GoogleFonts.poppins(
                    //                 fontSize: 12, fontWeight: FontWeight.w800),
                    //           ),
                    //         ))
                    //   ],
                    // )
                  ],
                ),
              ),
              Container(
                height: 520,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        left: -250,
                        child: Container(
                          height: 450,
                          width: 700,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 18, 221, 45),
                              borderRadius: BorderRadius.circular(400)),
                        )),
                    // Positioned(
                    //   top: 20,
                    //   left: 100,
                    //   child: Container(
                    //     height: 400,
                    //     width: 700,
                    //     decoration: BoxDecoration(
                    //         color: Colors.red,
                    //         borderRadius: BorderRadius.circular(20)),
                    //     clipBehavior: Clip.antiAliasWithSaveLayer,
                    //     child: Image.network(
                    //       'https://media.istockphoto.com/photos/high-angle-view-of-vertical-farmer-checking-plant-growth-picture-id1326357547?b=1&k=20&m=1326357547&s=170667a&w=0&h=RreyKYxZhQ7G65WoKAcm_zYLRobEfMM50sljok2uCv0=',
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //   right: 100,
                    //   top: 150,
                    //   child: Column(
                    //     children: [
                    //       Text('Easy Peasy Farming',
                    //           style: GoogleFonts.poppins(
                    //             fontWeight: FontWeight.w800,
                    //             fontSize: 25,
                    //           )),
                    //       SizedBox(
                    //         height: 15,
                    //       ),
                    //       Container(
                    //         width: 280,
                    //         child: Text(
                    //           'Manage your farm just by using the sensors , act upon it .',
                    //           style: GoogleFonts.poppins(
                    //             fontWeight: FontWeight.w400,
                    //             color: Colors.black54,
                    //             fontSize: 14,
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         height: 20,
                    //       ),
                    //       TextButton(
                    //         style: TextButton.styleFrom(
                    //             shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(100),
                    //             ),
                    //             backgroundColor: Colors.grey[900],
                    //             padding: EdgeInsets.symmetric(
                    //                 horizontal: 50.0, vertical: 20)),
                    //         onPressed: () {},
                    //         child: Text(
                    //           'Tutorial',
                    //           style: GoogleFonts.poppins(
                    //             fontSize: 12,
                    //             fontWeight: FontWeight.w600,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              // Divider(
              //   color: Color.fromARGB(255, 150, 146, 146),
              //   thickness: 0.5,
              // ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'Follow Smart Farming on ',style: GoogleFonts.poppins()),
                      TextSpan(
                          text: 'Twitter,',
                          style: GoogleFonts.poppins(
                            textStyle: linkStyle,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                          TextSpan( text: 'Instagram ',
                          style: GoogleFonts.poppins(
                            textStyle: linkStyle,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                          TextSpan(
                            text: 'and '
                          ),
                          TextSpan( text: 'Facebook,',
                          style: GoogleFonts.poppins(
                            textStyle: linkStyle,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                          TextSpan(
                            text: ' .'
                          )
                    ])),
                    Text(
                      'Developed By Vamshi with ❤️',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


