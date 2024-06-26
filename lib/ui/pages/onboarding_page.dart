import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/theme.dart'; // Make sure theme.dart file is available and correct

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBakcgroundColor, // Make sure the theme variable name is correct
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding1.png', // Make sure the image path is correct
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding2.png', // Make sure the image path is correct
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding3.png', // Make sure the image path is correct
                  height: 331,
                ),
              ],
              options:  CarouselOptions(
                height: 331, // Adjust as per your design
                viewportFraction: 1,
                enableInfiniteScroll: false,

              ),
            ),
            const SizedBox(
              height: 80
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 25,
              ) ,
              decoration: BoxDecoration(
                color: whiteColor, // Make sure the theme variable name is correct
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                Text('Grow Your\nFinancial Today',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
                textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Our system is helping you to\nachieve a better goal ',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.only(
                        right: 10
                        ),
                      decoration: BoxDecoration(
                        color: blueColor, // Make sure the theme variable name is correct
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.only(
                        right: 10
                        ),
                      decoration: BoxDecoration(
                        color: lightBakcgroundColor, // Make sure the theme variable name is correct
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.only(
                        right: 10
                        ),
                      decoration: BoxDecoration(
                        color: lightBakcgroundColor, // Make sure the theme variable name is correct
                        shape: BoxShape.circle,
                      ),
                    ),
                   const Spacer(),
                   Container(
                    width: 150,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: purpleColor, // Make sure the theme variable name is correct
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(56),
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),

                   )
                  ],
                )
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
