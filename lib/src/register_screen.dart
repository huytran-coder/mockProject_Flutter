import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mock_project/src/create_account_screen.dart';
import 'package:mock_project/src/verification_screen.dart';


class Registor extends StatefulWidget {
  const Registor({super.key});

  @override
  State<Registor> createState() => _RegistorState();
}

class _RegistorState extends State<Registor> {
  var nameController;

  var validEmailController;

  var phoneController;

  var strPassController;

  var _isCoditionChecked = false;
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100.0,top: 80),
                child: Container(
                  child:
                      Center(child: SvgPicture.asset("assets/ic_register.svg")),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top:195, left: 120),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Color(0xFF252525),
                    fontFamily: 'Mulish',
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top:240, left: 120),
                child: const Text(
                  'by creating a free account',
                  style: TextStyle(
                    color: Color(0xFF252525),
                    fontFamily: 'Mulish',
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFC4C4C4)),
            width: 300,
            height: 50,
            child: TextField(
              controller: nameController,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Full name',
                hintStyle: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.person_2_outlined),
              ),
            ),
          ),
          const SizedBox(height: 16,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFC4C4C4)),
            width: 300,
            height: 50,
            child: TextField(
              controller: validEmailController,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Valid email',
                hintStyle: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.email_outlined),
              ),
            ),
          ),
          const SizedBox(height: 16,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFC4C4C4)),
            width: 300,
            height: 50,
            child: TextField(
              controller:phoneController,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Phone number',
                hintStyle: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.phone_android_rounded),
              ),
            ),
          ),
          const SizedBox(height: 16,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFC4C4C4)),
            width: 300,
            height: 50,
            child: TextField(
              obscureText: true,
              controller: strPassController,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Strong password',
                hintStyle: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.lock_outline),
              ),
            ),
          ),

          Row(
            children: [
              const SizedBox(
                width: 31,
              ),
              Checkbox(
                value: _isCoditionChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isCoditionChecked = newValue ?? false;
                  });
                },
              ),
              Container(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'By checking the box you agree to our',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms ',
                        style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFF3951),
                        ),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Conditions.',
                        style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFF3951),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(height: 100,),
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
                        MaterialPageRoute(builder: (context) => const Verification()),
                      );
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Next ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFCFCFC),
                            ),
                          ),
                          const WidgetSpan(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20.0,
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
          const SizedBox(height: 10,),
          Container(
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Already a member?',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Login',
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFF3951),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreatAccount(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
