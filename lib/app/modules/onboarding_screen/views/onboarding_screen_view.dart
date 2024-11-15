import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../colors/ApkColors.dart';
import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  const OnboardingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApkColors.primaryColor,
      body: Center(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  Container(
                    alignment: Alignment.center,
                      child: Image.asset("assets/new.png"))]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "online payment",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                        ),
                        margin: EdgeInsets.only(top: 40),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                          " Pharetra quam elementum massa, viverra. Ut turpis consectetur. ",
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 10,
                              width: 80,
                            ),
                            Container(
                              child: Text(
                                "Skip",
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.orange,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Image.asset(
                                  "assets/img.png",
                                  height: 55,
                                  width: 55,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
