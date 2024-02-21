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
                CircleAvatar(
                  backgroundImage: AssetImage("assets/guest.png"),
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Username",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.8,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, ProfilPage.routeName);
                          },
                          icon: Icon(
                            Icons.arrow_right,
                            color: Color.fromARGB(255, 250, 250, 250),
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.openSans(
                          fontSize: 11.4,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
