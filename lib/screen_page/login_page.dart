import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile2/screen_page/register_page.dart';
import 'package:mobile2/screen_page/welcome_page.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  //bool varBool = true;
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                height: 45, // Menambahkan tinggi agar ikon memiliki ruang untuk ditampilkan
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Align(
                  alignment: Alignment.center, // Menempatkan ikon di tengah
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Image.asset('assets/gambar/logo_udaskin.png'),
                    SizedBox(
                      height: 60,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          hintText: 'Email',
                          contentPadding: EdgeInsets.symmetric(horizontal: 20), // Atur padding horizontal
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: 'Password',
                        contentPadding: EdgeInsets.symmetric(horizontal: 20), // Atur padding horizontal
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 14), // Menambahkan padding ke kanan ikon
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      padding:
                          EdgeInsets.symmetric(horizontal: 200, vertical: 22),
                      color: Color(0xff333333),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '------------------------------------ or ----------------------------------',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/gambar/logo_google.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Don't have an account?  ",
                          style: TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                                text: 'Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PageRegister()),
                                    );
                                  },
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ]),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
