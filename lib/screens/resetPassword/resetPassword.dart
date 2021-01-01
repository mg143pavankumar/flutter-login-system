import 'package:flutter/material.dart';
import 'package:login_system/components/customButton.dart';
import 'package:login_system/components/customTextFormField.dart';
import 'package:login_system/constants/colors.dart';
import 'package:login_system/screens/resetPassword/otpScreen/otpScreen.dart';

class RestPasswordScreen extends StatefulWidget {
  @override
  _RestPasswordScreenState createState() => _RestPasswordScreenState();
}

class _RestPasswordScreenState extends State<RestPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  height: 780,
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
                                "Rest Password",
                                style: TextStyle(
                                  color: theamColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //=====================ended Rest password heading

                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                CustomTextFormField(
                                  keyboardType: TextInputType.number,
                                  labelName: "Mobile Number",
                                  obscureText: false,
                                ),
                                //===========================ended customTextFormFields
                              ],
                            ),
                          ),

                          SizedBox(height: 25),
                          CustomButton(
                            onpressd: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OTPScreen()));
                            },
                            text: "Submit",
                            btnColor: theamColor,
                            btnTextColor: btnTextColor,
                            fontsize: 16,
                            pdHorizontal: 50,
                            pdVertical: 15,
                          ),

                          //==============================ended submit button
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
                                    "Already Registered? ",
                                    style: TextStyle(
                                      color: primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => {Navigator.pop(context)},
                                    child: Text(
                                      "  Log In",
                                      style: TextStyle(
                                        color: theamColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
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
