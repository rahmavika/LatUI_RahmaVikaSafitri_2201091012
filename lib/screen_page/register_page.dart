import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile2/screen_page/login_page.dart';
import 'package:mobile2/screen_page/welcome_page.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {

  //bool varBool = true;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isChecked = false; // Deklarasi variabel _isChecked

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
                SizedBox(height: 10),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset('assets/gambar/logo_udaskin.png'),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                              BorderRadius.all(Radius.circular(50))),
                          hintText: 'Full Name',
                          contentPadding: EdgeInsets.symmetric(horizontal: 20), // Atur padding horizontal
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          hintText: 'Email',
                          contentPadding: EdgeInsets.symmetric(horizontal: 20), // Atur padding horizontal
                        ),
                      ),
                      SizedBox(height: 15),
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
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: _obscureConfirmPassword,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          hintText: 'Confirm Password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 20), // Atur padding horizontal
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 14), // Menambahkan padding ke kanan ikon
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureConfirmPassword = !_obscureConfirmPassword;
                                });
                              },
                              icon: Icon(_obscureConfirmPassword ? Icons.visibility_off : Icons.visibility),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      CheckboxListTile(
                        title: Text("I agree with the Term and Condition and the Privace Policy",
                          style: TextStyle(
                            fontSize: 14, // Atur ukuran teks
                            color: Colors.grey, // Atur warna teks
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _isChecked,
                        onChanged: (bool? value) {
                          if (value != null) {
                            setState(() {
                              _isChecked = value;
                            });
                          }
                        },
                      ),
                      SizedBox(height: 20),
                      MaterialButton(
                        onPressed: () {},
                        padding:
                        EdgeInsets.symmetric(horizontal: 150, vertical: 22),
                        color: Color(0xff333333),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '---------------------------------- or ----------------------------------',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 15),
                      MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                            SizedBox(width: 20),
                            Text(
                              'Sign Up with Google',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      RichText(
                        text: TextSpan(
                          text: "Already have an account?  ",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                              text: 'Log In',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => PageLogin(),
                                    ),
                                  );
                                },
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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