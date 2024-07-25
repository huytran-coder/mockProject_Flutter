import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mock_project/src/welcomeHome_screen.dart';
import 'package:pinput/pinput.dart';


class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    final defaultTheme=PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'Mulish',
        color: Color(0xFF252525),
      ),
      decoration: BoxDecoration(
        color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent),

      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 150),
            child: Row(
              children: [
                const SizedBox(
                  width: 21,
                ),
                Container(
                  child: const Text(
                    'Almost there',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

          ),
          Row(
            children: [
              const SizedBox(
                width: 21,
              ),
              Container(
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'please enter the 6-digit code sent to your\n',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'email ',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'contact.uiuxexperts@gmail.com ',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFFF3951),
                      ),
                    ),
                    TextSpan(
                      text: 'for \n',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'verification',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),
          Container(
            width: 300,
            height: 60,
            child: Pinput(
              length: 6,
              defaultPinTheme:defaultTheme,
              focusedPinTheme: defaultTheme.copyWith(
                decoration:   defaultTheme.decoration !.copyWith(
                  border: Border.all(color: Colors.black),
                ),
              ),
              onClipboardFound: (pin)=>debugPrint(pin),
            ),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFF3951),
                ),
                width: 300,
                height: 50,
                child: Expanded(
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                        WidgetStatePropertyAll(Color(0xFFFF3951))),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const WelcomehomeScreen()),
                      );
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Verify ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFCFCFC),
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
          const Padding(padding: EdgeInsets.only(top:80),
            child: Text(
              'Didn’t receive any code? Resend Again',
              style: TextStyle(
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
                fontSize: 13,
                color: Color(0xFF252525),
              ),
            ),

          ),
          const Text('Request new code in 00:30s',

          style: TextStyle(
            fontSize: 13,
            fontWeight:FontWeight.w400,
            fontFamily: 'mulish',
            color: Colors.grey,
          ),)



        ],
      ),
    );
  }
}
