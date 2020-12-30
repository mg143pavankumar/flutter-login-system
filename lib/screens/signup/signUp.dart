import "package:flutter/material.dart";
import 'package:login_system/components/customButton.dart';
import 'package:login_system/components/customTextFormField.dart';
import 'package:login_system/constants/colors.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                            // color: Colors.red,
                            // margin: const EdgeInsets.all(10),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Sign Up",
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
                            labelName: "First Name",
                            obscureText: false,
                          ),
                          CustomTextFormField(
                            labelName: "Last Name",
                            obscureText: false,
                          ),
                          CustomTextFormField(
                            keyboardType: TextInputType.number,
                            labelName: "Mobile Number",
                            obscureText: false,
                          ),
                          CustomTextFormField(
                            labelName: "Password",
                            obscureText: false,
                          ),
                          CustomTextFormField(
                            labelName: "Confirm Password",
                            obscureText: false,
                          ),

                              //===========================ended customTextFormFields
                            
                            ],
                          ),
                        ),

                        SizedBox(height: 25),
                        CustomButton(
                          onpressd: () {},
                          text: "Register",
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
                                  "Already Registered? ",
                                  style: TextStyle(
                                    color: primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () => {
                                    Navigator.pop(context)
                                  },
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




                          
//                           Container(
//                             margin: const EdgeInsets.all(15),
//                             child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "Already Rigistered? ",
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                   GestureDetector(
//                                     onTap: () => {
//                                       Navigator.pop(context),
//                                     },
//                                     child: Text(
//                                       "  Login",
//                                       style: TextStyle(
//                                         color: Colors.blue,
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                   ),
//                                 ]),
//                           )