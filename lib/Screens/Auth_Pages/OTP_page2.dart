import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:village_banking/utils/colors.dart';
import '../../utils/transitions.dart';
import '../../widgets/text_input.dart';
import 'sign_in.dart';

class OTPPage2 extends StatefulWidget {
  OTPPage2({Key? key}) : super(key: key);

  @override
  State<OTPPage2> createState() => _OTPPage2State();
}

class _OTPPage2State extends State<OTPPage2> {
  final TextEditingController _numberController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _numberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/OTP.png",
                height: 233,
                width: 233,
              ),
              const SizedBox(
                height: 4,
                width: 500,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "Enter the phone number sent to +260972682268",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "Enter Mobile Number",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 18.0, left: 36, right: 36),
                child: TextFieldInput(
                    hintText: '',
                    isPass: false,
                    textInputType: TextInputType.emailAddress,
                    textEditingController: _numberController),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 18),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 315,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 95, 115, 243), mainBlue],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.01, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.0, top: 24, right: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Verify',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
