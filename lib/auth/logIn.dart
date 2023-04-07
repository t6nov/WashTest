import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:country_picker/country_picker.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Country selectedCountry = Country(
      phoneCode: "+966",
      countryCode: "Saudi arabia",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "",
      example: "",
      displayName: "",
      displayNameNoCountryCode: "",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.blue,
            child: Center(
              child: Text(
                'ببلز',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Vazirmatn',
                ),
              ),
            ),
          ),
          Container(
              height: 150,
              alignment: AlignmentDirectional.center,
              child: Text(
                "تسجيل الدخول",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Vazirmatn',
                    color: Colors.blue[300]),
              )),
          Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(20),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue[300],
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: "البريد الالكتروني ",
                        labelStyle: TextStyle(color: Colors.blue),
                        suffixIcon: Container(
                          padding: EdgeInsets.all(20),
                          child: InkWell(
                              child: Icon(
                            Icons.email_outlined,
                            color: Colors.blue,
                          )),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue[300],
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: " كلمة المرور",
                        labelStyle: TextStyle(color: Colors.blue),
                        suffixIcon: Container(
                          padding: EdgeInsets.all(20),
                          child: InkWell(
                              child: Icon(
                            Icons.lock_outline,
                            color: Colors.blue,
                          )),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    child: Ink(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "تسجيل دخول",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        onTap: () async {
                          Navigator.of(context)
                              .pushReplacementNamed("HomePage");
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    child: Ink(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " انضم الينا",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("signUp");
                        },
                      ),
                    ),
                  ),
                ],
              ))),
        ],
      ),
    );
  }
}
