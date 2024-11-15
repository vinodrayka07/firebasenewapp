import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../colors/ApkColors.dart';
import '../controllers/signin_screen_controller.dart';

class SigninScreenView extends GetView<SigninScreenController> {
  const SigninScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.count.value;
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
            alignment: Alignment.center,
            child: Image.asset("assets/appicon.png")),
        Container(
          child: Text(
            "Welcome Back!",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 26,
            ),
          ),
          margin: EdgeInsets.only(top: 40),
        ),
        Container(
          child: Text(
            "Login to continue",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          margin: EdgeInsets.only(top: 20,bottom: 20),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
            controller: controller.phonecontroler,
            keyboardType: TextInputType.phone,
            cursorColor: ApkColors.yellow,
            maxLength: 10,
            cursorErrorColor: ApkColors.orangeColor,
            textAlignVertical: TextAlignVertical.top,
            style: const TextStyle(
              fontSize: 12,
              color: ApkColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            //validator: validator,
            obscureText: false,
            decoration: InputDecoration(
              // labelText: labelText ?? 'Full Name',

              label: Text(
                'Phone Number ',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // isCollapsed: true,
              //  errorText: errorText ?? 'erddror',
              errorStyle:
                  const TextStyle(fontSize: 10, color: ApkColors.orangeColor),
              prefixIcon: const Icon(
                Icons.phone,
                color: Colors.grey,
              ),

              contentPadding: EdgeInsets.all(12),
              labelStyle:
                  const TextStyle(fontSize: 12, color: ApkColors.primaryColor),
              // focusColor: Colors.green,

              fillColor: Colors.white,
              filled: true,
              border: const UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 3.0),
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ApkColors.orangeColor),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){

            controller.datacheck();

          },
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: ApkColors.primaryColor,
              borderRadius: BorderRadius.circular(30),


            ),
            child:Text(
              "Get Otp",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 26,
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            "Or Continue With",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          margin: EdgeInsets.only(top: 50,bottom: 20),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Container(

                child:
                Column(
                 children: [
                   GestureDetector(
                     onTap: (){
                       controller.signingoogel();
                     },
                     child: Container(
                         margin: EdgeInsets.only(right: 20),
                         child: Image.asset(
                           "assets/img.png",
                           height: 55,
                           width: 55,
                         )),
                   ),
                   Text(
                     "Google",
                     style: TextStyle(
                       fontWeight: FontWeight.w400,
                       color: Colors.black,
                       fontSize: 18,
                     ),
                   ),
                 ],
                ),
                height: 100,
                width: 100,
                margin: EdgeInsets.only(top: 50,bottom: 20),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Image.asset(
                          "assets/img.png",
                          height: 55,
                          width: 55,
                        )),
                    Text(
                      "FaceBook",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

                margin: EdgeInsets.only(top: 50,bottom: 20),
                height: 100,
                width: 100,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
