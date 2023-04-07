import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

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

class _signUpState extends State<signUp> {
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

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
                "تسجيل ",
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
                  TextFormField(
                    style: TextStyle(
                      color: Colors.blue[300],
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      labelText: " الاسم",
                      labelStyle: TextStyle(color: Colors.blue),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
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
                  SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.blue[300],
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 9,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "رقم الهاتف",
                      labelStyle: TextStyle(color: Colors.blue),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(20),
                        child: InkWell(
                          child: Text(
                            "${selectedCountry.phoneCode}",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
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
                  SizedBox(
                    height: 20,
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
                              "تسجيل ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ))),
        ],
      ),
    );
  }
}
