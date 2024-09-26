import 'package:flutter/material.dart';
import 'package:recipe_app/constants/images_path.dart';
import 'package:recipe_app/screens/home.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: h,
        width: w,
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                ImagesPath.onBoarding,
                fit: BoxFit.cover,
              ),
            ),

            Center(
              child: Image.asset(
                ImagesPath.onBoardingTitle,
                width: w * 0.8,
              ),
            ),

            // Bottom Text Section
            Positioned(
              bottom: 0, // Position at the bottom
              left: 0,
              right: 0,
              child: Container(
                height: h * 0.3, // Adjust height as needed
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: h * 0.032),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Let\'s cook good food',
                          style: TextStyle(
                            fontSize: w * 0.06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        Text(
                          'Check out the app and start cooking delicious meals!',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: h*.032,),
                        SizedBox(
                        width: w*.8,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>const Home()));
                            },
                            child: const Text(
                                'Get Started',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
