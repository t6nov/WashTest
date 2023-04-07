

/*
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_washcar_p1/pages/home.dart';
import 'package:flutter_washcar_p1/auth/logIn.dart';

class authPage extends StatefulWidget {
  authPage({required this.verificationId});
  final String verificationId;
  @override
  State<authPage> createState() => _authPageState();
}

class _authPageState extends State<authPage> {
  final optController = TextEditingController();
  bool showLoading = false;
  String verificationFailedMassage = "";
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
          Column(
            textDirection: TextDirection.rtl,
            children: [
              Container(
                  height: 100,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "تحقق",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Vazirmatn',
                        color: Colors.blue[300]),
                  )),
              Text("تم ارسال رمز تحقق الى الرقم المدخل ")
            ],
          ),
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
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue[300],
                      ),
                      keyboardType: TextInputType.number,
                      controller: optController,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: " رمز التحقق",
                        labelStyle: TextStyle(
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
                  ),
                  SizedBox(
                    height: 14,
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
                              "تحقق",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        onTap: () async {
                          PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: widget.verificationId,
                                  smsCode: optController.text);
                          await auth.signInWithCredential(credential);

                          if (auth.currentUser != null) {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return home();
                            }));
                          }
                        },
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

*/