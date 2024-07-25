import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mock_project/src/register_screen.dart';
import 'package:flutter/gestures.dart';

class CreatAccount extends StatefulWidget {
  const CreatAccount({super.key});

  @override
  State<CreatAccount> createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {
  var _isRememberMeChecked = false;



  TextEditingController _emailController = TextEditingController(text:"");
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var recognizer;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 80),
                child: Container(
                  child: Center(
                    child: SvgPicture.asset("assets/ic_register.svg"),
                  ),
                ),
              ),
              Center(
                child: Container(

                  margin: const EdgeInsets.only(top: 210,),
                  child: const Text(
                    'Welcome back',
                    style: TextStyle(
                      color: Color(0xFF252525),
                      fontFamily: 'Mulish',
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 240, ),
                  child: const Text(
                    'sign in to access your account',
                    style: TextStyle(
                      color: Color(0xFF252525),
                      fontFamily: 'Mulish',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
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
             controller: _emailController,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
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
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFC4C4C4)),
            width: 300,
            height: 50,
            child:  TextField(
              controller:  _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
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
          const SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 31,
              ),
              Checkbox(
                value: _isRememberMeChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isRememberMeChecked = newValue ?? false;
                  });
                },
              ),

              const Text(
                'Rememberme',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Mulish',
                  fontSize: 14,
                  color: Color(0xFF252525),
                ),
              ),
              // Spacer(),
              const Padding(padding: EdgeInsets.only(left: 100)),
              const Text(
                'Forget password ?',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Mulish',
                  fontSize: 12,
                  color: Color(0xFFFF3951),
                ),
              ),
            ],
          ),

          Column(
           mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                        onPressed: () {},
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
              )

            ],
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'New member? ',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Register now',
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
                          builder: (context) => const Registor(),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
