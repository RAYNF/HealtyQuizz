import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register-page';
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void dispose() {
    super.dispose();
    _username.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenWidth = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffD2F6C5),
      appBar: AppBar(
        backgroundColor: Color(0xff28DF99),
        title: Text(
          "Register",
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: screenWidth.width,
              height: screenWidth.height / 3,
              color: Colors.amber,
              child: Image.asset(
                'assets/gambar_splash_screen.jpeg',
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 60,
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already registered?",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 14),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      controller: _username,
                      decoration: InputDecoration(
                        hintText: 'username',
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Color(0xff00BF63),
                          ),
                        ),
                        icon: Image.asset(
                          "assets/username_textfield.png",
                          height: 35,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      controller: _username,
                      decoration: InputDecoration(
                        hintText: 'email',
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Color(0xff00BF63),
                          ),
                        ),
                        icon: Image.asset(
                          "assets/email_textfield.png",
                          height: 35,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      controller: _username,
                      decoration: InputDecoration(
                        hintText: 'password',
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Color(0xff00BF63),
                          ),
                        ),
                        icon: Image.asset(
                          "assets/password_textfield.png",
                          height: 35,
                        ),
                      ),
                    ),
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
