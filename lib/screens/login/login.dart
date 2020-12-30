import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_system/components/customButton.dart';
import 'package:login_system/components/customTextFormField.dart';
import 'package:login_system/constants/colors.dart';
import 'package:login_system/screens/signup/signUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Spacer(),
            Expanded(
              flex: 6,
              child: Container(
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
                          flex: 4,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                color: theamColor,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        //=====================ended login heading
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              CustomTextFormField(
                                obscureText: false,
                                keyboardType: TextInputType.number,
                                labelName: "Mobile Number",
                                size: 16,
                              ),
                              CustomTextFormField(
                                obscureText: true,
                                labelName: "Password",
                                size: 16,
                              ),

                              //===========================ended customTextFormFields
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                      color: primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 25),
                        CustomButton(
                          onpressd: () {},
                          text: "Log In",
                          btnColor: theamColor,
                          btnTextColor: btnTextColor,
                          fontsize: 16,
                          pdHorizontal: 50,
                          pdVertical: 15,

                        ),

                        //==============================ended login button
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 25),
                            height: MediaQuery.of(context).size.height,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    color: primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () => {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUp(),
                                    ))
                                  },
                                  child: Text(
                                    "  Register",
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
    );
  }
}

