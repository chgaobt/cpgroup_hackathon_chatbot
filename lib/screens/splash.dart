import 'package:cpgroup_hackathon_chatbot/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    // Future.delayed(const Duration(seconds: 2), () {
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => home()));
    // });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/SplashScreen.png',),
                  fit: BoxFit.fill,
                  ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 450),
                  Center(
                    child: Text(
                      'ChatBot',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 32,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}