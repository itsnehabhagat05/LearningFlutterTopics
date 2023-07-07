import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class AnimatedTextWidget  extends StatelessWidget {
  const AnimatedTextWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Animated Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText('Hello Neha',
              textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
              speed: Duration(milliseconds: 100),)
            ],
            totalRepeatCount: 4,
            pause:Duration(milliseconds: 200) ,
            displayFullTextOnTap: true,
            stopPauseOnTap: true ,
          ),
          AnimatedTextKit(animatedTexts: [
              RotateAnimatedText('How are you ?',
              textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.deepPurple,),
              ),
              RotateAnimatedText('Hope you are fine',
              textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
              ),
            ],
            totalRepeatCount: 4,
            pause:Duration(milliseconds: 500) ,
            displayFullTextOnTap: true,
            stopPauseOnTap: true ,
          ),
          AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('Welcome To Our ',
              textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
              ),
              WavyAnimatedText('Amazing World',
              textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
              )
            ],
          ),

          ],
        ),
      ),
    );
  }
}