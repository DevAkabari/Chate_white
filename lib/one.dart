import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFFFD5EB),
                Color(0xffffffff),
                Color(0xFFCFC2FF),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: -10,
                      blurRadius: 20,
                      offset: Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/image/clogo_white.png',
                  height: 80,
                ),
              ),
              ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    colors: [
                      Color(0xFF875DFC),
                      Color(0xFFFA70FF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(Offset.zero & bounds.size);
                },
                child: const Text(
                  "Chameleon",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                'Private chat application',
                style: TextStyle(
                    fontSize: 10, color: Color(0xFF875DFC), height: 0.8),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Lets chat with your partner and\nenjoy your good life from now!',
                style: TextStyle(color: Color(0xFFB7AAFF)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              Spacer(),
              Container(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/icon/google icon.png'),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/icon/apple logo.png'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "you don't have an account ",
                        style: TextStyle(color: Color(0xFF2C2C2C))),
                    TextSpan(
                        text: 'Sign up',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ),
                            );
                            print("hdfgd");
                          }),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
