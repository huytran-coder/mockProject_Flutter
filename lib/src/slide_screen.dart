import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mock_project/src/create_account_screen.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          controller: _pageController,
          children: const [
            PageView1(),
            PageView2(),
            PageView3(),

          ],
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_currentPage < 2) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {
           // _pageController.jumpToPage(0);
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CreatAccount()),
            );
          }
        },
        child: Icon(_currentPage < 2 ? Icons.arrow_forward_ios_outlined : Icons.arrow_forward_ios_outlined,color: Colors.white,),
        backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(40.0),
    ),


      ),
    );
  }
}

class PageView1 extends StatelessWidget {
  const PageView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: 246.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: SvgPicture.asset("assets/ic_slide1.svg"),
              ),
            ),
          ),
          SizedBox(height: 70.0),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF252525),
                  ),
                  children: [
                    TextSpan(text: 'Explore '),
                    TextSpan(text: 'the\n'),
                    // TextSpan(text: 'the\n', style: TextStyle(fontWeight: FontWeight.w800)),
                    TextSpan(text: 'world easily'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: double.infinity,
              height: 30,
              // color: Colors.black,
              child: const Text(
                'To your desire',
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 24,
                  // height: ,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF929292),
                ),
                maxLines: 2,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 170),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Container(
                    width: 16,
                    height: 6,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Radius 20
                        color: Color(0xFFFF3951),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Container(
                    width: 13,
                    height: 6,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Radius 20
                        color: Color(0xFFFFB6B6),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Container(
                    width: 13,
                    height: 6,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Radius 20
                        color: Color(0xFFFFB6B6),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

class PageView2 extends StatelessWidget {
  const PageView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: 165.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: SvgPicture.asset("assets/ic_slide2.svg"),
              ),
            ),
          ),
          SizedBox(height: 70.0),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF252525),
                  ),
                  children: [
                    TextSpan(text: 'Reach '),
                    TextSpan(text: 'the\n'),
                    // TextSpan(text: 'the\n', style: TextStyle(fontWeight: FontWeight.w800)),
                    TextSpan(text: 'unknown spot'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: double.infinity,
              height: 30,
              // color: Colors.black,
              child: const Text(
                'To your destination',
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 24,
                  // height: ,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF929292),
                ),
                maxLines: 2,
              ),
            ),
          ),
            Padding(padding: EdgeInsets.only(top:170),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Container(
                    width: 16,
                    height: 6,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Radius 20
                        color: Color(0xFFFFB6B6),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Container(
                    width: 13,
                    height: 6,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Radius 20
                        color: Color(0xFFFF3951),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Container(
                    width: 13,
                    height: 6,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Radius 20
                        color: Color(0xFFFFB6B6),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            )


        ],
      ),
    );
  }
}

class PageView3 extends StatefulWidget {
  const PageView3({super.key});

  @override
  State<PageView3> createState() => _PageView3State();
}

class _PageView3State extends State<PageView3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: 182.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: SvgPicture.asset("assets/ic_slide3.svg"),
              ),
            ),
          ),
          SizedBox(height: 70.0),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF252525),
                  ),
                  children: [
                    TextSpan(text: 'Make connects\n'),
                    // TextSpan(text: 'the\n', style: TextStyle(fontWeight: FontWeight.w800)),
                    TextSpan(text: 'world easily'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: double.infinity,
              height: 30,
              // color: Colors.black,
              child: const Text(
                'To your dream trip',
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 24,
                  // height: ,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF252525),
                ),
                maxLines: 2,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 170),
         child: Row(
           children: [
             Padding(
               padding: EdgeInsets.only(left: 28),
               child: Container(
                 width: 16,
                 height: 6,
                 child: DecoratedBox(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Radius 20
                     color: Color(0xFFFFB6B6),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 3),
               child: Container(
                 width: 13,
                 height: 6,
                 child: DecoratedBox(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Radius 20
                     color: Color(0xFFFFB6B6),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 3),
               child: Container(
                 width: 13,
                 height: 6,
                 child: DecoratedBox(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Radius 20
                     color: Color(0xFFFF3951),
                   ),
                 ),
               ),
             ),

           ],
         ),
          )

        ],
      ),
    );
  }
}
