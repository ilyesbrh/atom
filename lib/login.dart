import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Stack(
          children: [
            FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 1,
                child: const Image(
                  image: AssetImage('images/Background.png'),
                  fit: BoxFit.fill,
                )),
            FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 1,
              child: Container(
                  margin: EdgeInsets.all(16.0),
                  padding:
                      EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      SvgPicture.asset('images/logo.svg'),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Welcome to Atome',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(35, 48, 66, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 24,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            ),
                            Text(
                              'The pharmacy companion',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(128, 142, 163, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 13,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Login into your account to get started',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(35, 48, 66, 1),
                                fontFamily: 'Inter',
                                fontSize: 12,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                border: Border.all(
                                  color: Color(0xffb2bbbb),
                                  width: 2,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('images/profile.svg'),
                                Container(
                                  color: Colors.black,
                                  width: 1,
                                  height: 22,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 12),
                                ),
                                Expanded(
                                    child: TextField(
                                  // maxLines: 1,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(0.0),
                                      border: InputBorder.none,
                                      hintText: "Hint here"),
                                )),
                              ],
                            ),
                          )
                        ],
                      )),
                      Image(
                        image: AssetImage('images/Madeby.png'),
                        fit: BoxFit.none,
                      ),
                    ],
                  )),
            )
          ],
        ));
  }
}
