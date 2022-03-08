import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BottonBar extends StatelessWidget {
  const BottonBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Follow Smart Farming on ',
                          style: GoogleFonts.poppins()),
                      TextSpan(
                        
                          text: 'Twitter,',
                          style: GoogleFonts.poppins(
                            textStyle: linkStyle,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () async {
                                              final url =
                                                  'https://twitter.com/vamshivadnala1';
                                                  if(await canLaunch(url)) {
                                                    await launch(url);

                                                  }
                                            },),
                      TextSpan(
                          text: 'Instagram ',
                          style: GoogleFonts.poppins(
                            textStyle: linkStyle,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () async {
                                              final url =
                                                  'https://www.instagram.com/vamshi.vadnala/';
                                                  if(await canLaunch(url)) {
                                                    await launch(url);

                                                  }
                                            }),
                      TextSpan(text: 'and '),
                      TextSpan(
                          text: 'Facebook,',
                          style: GoogleFonts.poppins(
                            textStyle: linkStyle,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () async {
                                              final url =
                                                  'https://www.facebook.com/vamshi.vadnala.3';
                                                  if(await canLaunch(url)) {
                                                    await launch(url);

                                                  }
                                            }),
                      TextSpan(text: ' .')
                    ])),
                    Text(
                      'Developed By Vamshi with ❤️',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              );
  }
}