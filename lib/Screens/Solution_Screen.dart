import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_farming/Screens/About.dart';
import 'package:flutter_farming/Screens/Blogs.dart';
import 'package:flutter_farming/Screens/Home_Screen.dart';
import 'package:flutter_farming/source/Bottom_Bar.dart';
import 'package:flutter_farming/source/ProfileImage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../source/Header.dart';
import '../source/InfoPallete.dart';

class SolutionScreen extends StatefulWidget {
  const SolutionScreen({Key? key}) : super(key: key);

  @override
  State<SolutionScreen> createState() => _SolutionScreenState();
}

class _SolutionScreenState extends State<SolutionScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = const TextStyle(color: Colors.blue);
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
                        height: 800,
                        width: 1536,
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
                            Positioned(
                              top: 100,
                              left: 50,
                              child: Container(
                                height: 800,
                                width: 1920,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Frequently Asked Questions (FAQ's)",
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 30)),
                                    Text(
                                      'What is Smart Farming ?',
                                      style: GoogleFonts.nunitoSans(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Container(
                                      height: 100,
                                      width: 1200,
                                      child: Text(
                                        "--> Smart farming is a management concept focused on providing the agricultural industry with the infrastructure to leverage advanced technology  including big data, the cloud and the internet of things (IoT)  for tracking, monitoring, automating and analyzing operations.",
                                        style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 20),
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 0)),
                                    Text(
                                      'Why Smart Farming ?',
                                      style: GoogleFonts.nunitoSans(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Container(
                                      height: 100,
                                      width: 1200,
                                      child: Text(
                                        "--> Increasing control over production leads to better cost management and waste reduction. The ability to trace anomalies in crop growth or livestock health, for instance, helps eliminate the risk of losing yields. Additionally, automation boosts efficiency.",
                                        style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Text(
                                      'Why are checks for normality of residuals and homoscedasticity so often overlooked when calibrating predictive models? ?',
                                      style: GoogleFonts.nunitoSans(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Container(
                                      height: 300,
                                      width: 1200,
                                      child: Text(
                                        "--> The OLS is a short cut to the ML solution. It can be derived directly from the assumption that Y|X ~ N(µ(X), s²), but the solution is correct for any distribution model: justlike the ML estimate, the OLS estimate estimates the expected value (of the parameter) and this is independent of the assumed distribution model .The difference, therefore, is not in the predicted value, but rather in the uncertainty attributed to this prediction. Depending on the research context, this uncertainty may or may not be relevant. If it is not relevant, then there is no need invest much mental work in figuring out a 'most correct' or 'least wrong' distribution model.When models are really used for prediction, the 'model inherent' uncertainty (that is determined by the chosen distribution model) associated with a prediction is usually not relevant. What is of much greater relevance and impact here is the differences in predictions between possible alternative models. This is particularily relevant when the predictions are forecasts. Provided there is sufficient data, this pleiotropy of possible alternative models can be adressed by heavily over-parametrized models where the impact of the assumed distributional model approaches zero (such models are nowadays called 'deep-learning' models, neural networks, AI etc,). This is then very much on the side of getting most correct predictions at the cost of gaining the least amount of insight. But it works to get predictions with good or acceptable positive and negative predictive values.",
                                        style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 20),
                                      ),
                                      // Container(
                                      //   width: 300,
                                      //   child: Text(
                                      //     'Farming is a essential part of human life.To make Farming easy for a farmer.',
                                      //     style: GoogleFonts.poppins(
                                      //         fontSize: 14,
                                      //         fontWeight: FontWeight.w300),
                                      //   ),
                                      // ),
                                      // const SizedBox(
                                      //   height: 30,
                                      // ),
                                      // Row(
                                      //   children: [
                                      //     Container(
                                      //       height: 45,
                                      //       width: 230,
                                      //       child: TextField(
                                      //         decoration: InputDecoration(
                                      //             hintText:
                                      //                 'Enter Your E-mail Address',
                                      //             hintStyle: GoogleFonts.poppins(
                                      //               fontSize: 12,
                                      //             ),
                                      //             border: OutlineInputBorder(
                                      //                 borderRadius:
                                      //                     BorderRadius.circular(
                                      //                         50))),
                                      //       ),
                                      //     ),
                                      //     const SizedBox(
                                      //       width: 20,
                                      //     ),
                                      //     TextButton(
                                      //         style: TextButton.styleFrom(
                                      //             backgroundColor: Colors.black87,
                                      //             shape: RoundedRectangleBorder(
                                      //                 borderRadius:
                                      //                     BorderRadius.circular(
                                      //                         30))),
                                      //         onPressed: () {},
                                      //         child: Container(
                                      //           height: 45,
                                      //           width: 100,
                                      //           child: Center(
                                      //             child: Text(
                                      //               'Get Video Link',
                                      //               style: GoogleFonts.poppins(
                                      //                 color: Colors.white,
                                      //                 fontSize: 13,
                                      //               ),
                                      //             ),
                                      //           ),
                                      //         ))
                                      //   ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Header(),
                ],
              ),
              Container(
                height: 300,
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
                    Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                primary: Colors.black87,
                                padding: const EdgeInsets.all(0)),
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: const Color.fromRGBO(66, 66, 66, 1),
                                ),
                              ),
                              child: Text(
                                'Explore More',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w800),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    // Positioned(
                    //     left: -250,
                    //     child: Container(
                    //       height: 450,
                    //       width: 700,
                    //       decoration: BoxDecoration(
                    //           color: const Color.fromARGB(255, 18, 221, 45),
                    //           borderRadius: BorderRadius.circular(400)),
                    //     )),
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
              BottonBar()
            ],
          ),
        ),
      ),
    );
  }
}
