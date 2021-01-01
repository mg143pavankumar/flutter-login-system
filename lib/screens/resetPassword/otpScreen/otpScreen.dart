import 'package:flutter/material.dart';
import 'package:login_system/components/customButton.dart';
import 'package:login_system/components/customTextFormField.dart';
import 'package:login_system/constants/colors.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final String _timeleft = "1:50";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: iconColor),
      ),
      backgroundColor: Colors.orange,
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              Expanded(
                flex: 14,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  height: 800,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Form(
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Verify OTP",
                                style: TextStyle(
                                  color: theamColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //=====================ended verify Otp heading
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                CustomTextFormField(
                                  keyboardType: TextInputType.number,
                                  labelName: "Enter OTP",
                                  obscureText: false,
                                ),

                                //===========================ended customTextFormFields
                              ],
                            ),
                          ),

                          SizedBox(height: 25),
                          CustomButton(
                            onpressd: () {},
                            text: "Verify",
                            btnColor: theamColor,
                            btnTextColor: btnTextColor,
                            fontsize: 16,
                            pdHorizontal: 50,
                            pdVertical: 15,
                          ),

                          //==============================ended login button
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 25),
                              height: MediaQuery.of(context).size.height,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Time Left: $_timeleft min ",
                                    style: TextStyle(
                                      color: primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
