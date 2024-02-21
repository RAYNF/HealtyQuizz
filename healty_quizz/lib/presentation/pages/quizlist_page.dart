import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healty_quizz/presentation/pages/profil_page.dart';

class QuizList extends StatelessWidget {
  static const routeName = '/quizlist-page';
  const QuizList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2F6C5),
      appBar: AppBar(
        backgroundColor: Color(0xff28DF99),
        centerTitle: true,
        title: Text(
          'Leaderboard',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  width: 30,
                  child: Image(
                    image: AssetImage("assets/guest.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.8,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 122, 194, 28),
                          radius: 4,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Online",
                          style: GoogleFonts.openSans(
                              fontSize: 11.4,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Quizizz List",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 12),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      )),
    );
  }
}
