import 'package:chatapp/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class ChatHome extends StatefulWidget{
  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome>{
  with TickerProviderStateMixin {
    AnimationController mainController;
    Animation mainAnimation;
    @override
    void initState() {
      super.initState();
      mainController = AnimationController(
        duration: const Duration(milliseconds: 500),
        vsync: this,
        );
        mainAnimation =
          ColorTween(begin: Colors.deepPurple[900], end: Colors.grey[100])
          .animate(mainController);
          mainController.forward();
          mainController.addListener(() {
            setState(() {});
          });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: mainAnimation.value,
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'heroin', 
                    child: Icon(
                      Icon.textsms,
                      size: mainController.value * 100,
                      color: Colors.deepPurple[900],
                      ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Hero(
                          tag: 'HeroTitle',
                          child: Text(
                            "Chat",
                            style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontFamily: 'Poppins',
                              fontSize: 26,
                              fontWeight: FontWeight.w700
                            ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                              ),
                              TyperAnimatedTextkit(
                                isRepeatAnimation: false,
                                speed:const Duration(milliseconds: 60),
                                text:["Centrifugo Test".toUpperCase()],
                                textStyle: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Colors.deepPurple
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.15,
                                ),
                                Hero(
                                  tag: 'loginbutton',
                                  child: CustomButton(
                                    text: 'Login',
                                    accentColor: Colors.deepPurple,
                                    onpress: () {
                                      Navigator.pushReplacementNamed(context, '/login');
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Hero(
                                  tag: 'signupbutton',
                                  child: CustomButton(
                                    text: 'Signup',
                                    accentColor: Colors.white,
                                    mainColor: Colors.deepPurple,
                                    onpress: () {
                                      Navigator.pushReplacementNamed(context, '/signup');
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                ),
                                const Text('Made with ♥ by ishandeveloper')
                              ],
                                              ),
                                            ),
                                      ),
                ),
                );
  }
}
}
