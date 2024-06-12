import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,body:Column(children: [
      Padding(
        padding:  EdgeInsets.only(left: 15,top: 20),
        child: Row(children: [
          Icon(Icons.arrow_back_ios_new_rounded), Padding(
            padding:  EdgeInsets.only(left: 210),
            child: Icon(Icons.notification_add_rounded),
          ),Padding(
            padding:  EdgeInsets.only(left: 20),
            child: Icon(Icons.favorite_border),
          ),
        ],),
      ),Column(children: [
        SizedBox(width: 200,child: Image.asset('assets/11.png')),
      ],),Column(children: [
        Padding(
          padding:  EdgeInsets.only(top: 25),
          child: SizedBox(height: 80,width:60,child: Icon(Icons.more_horiz_outlined)),
        )
      ],),Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(children: [
          Container(
            width: 109,
            height: 70,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Headphone',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 22),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\$155 / ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '\$300',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),Padding(
            padding:  EdgeInsets.only(left: 130),
            child: Container(
              width: 89,
              height: 36,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: ShapeDecoration(
                color: Color(0x198204FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    padding: const EdgeInsets.only(
                      top: 2.03,
                      left: 1.72,
                      right: 2.02,
                      bottom: 1.72,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'On sale',
                    style: TextStyle(
                      color: Color(0xFF8204FF),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],),
      ),Padding(
        padding:  EdgeInsets.only(left: 20),
        child: Row(children: [
          Container(
            width: 62,
            height: 28,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: ShapeDecoration(
              color: Color(0x19FF8037),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '4.2',
                  style: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),Container(
            width: 62,
            height: 28,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: ShapeDecoration(
              color: Color(0x191F7DFD),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  padding: const EdgeInsets.only(
                    top: 2.06,
                    left: 1.69,
                    right: 0.75,
                    bottom: 2.06,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                    ],
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '3.8',
                  style: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),Text(
            '132 Reviews',
            style: TextStyle(
              color: Color(0xFF414141),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          )
        ],),
      ),SizedBox(height: 15,),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(children: [
          Text(
            'Color',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          )
        ],),
      ),Padding(
        padding:  EdgeInsets.only(left: 20,top: 5),
        child: Row(
          children: [
            Container(
              width: 112,
              height: 22,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.20,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFF7F37),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: ShapeDecoration(
                      color: Color(0xFF8B8B8B),
                      shape: OvalBorder(side: BorderSide(width: 1)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Opacity(
                    opacity: 0.20,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: ShapeDecoration(
                        color: Color(0xFF8204FF),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Opacity(
                    opacity: 0.20,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: ShapeDecoration(
                        color: Color(0xFF133568),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),SizedBox(height: 5,),
      Padding(
        padding:  EdgeInsets.only(left: 20,top: 5),
        child: Row(children: [
          Text(
            'Description',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          )
        ],),
      ),SizedBox(height: 8,),
      Padding(
        padding:  EdgeInsets.only(left: 20,),
        child: Row(children: [
          SizedBox(
            width: 340,
            child: Opacity(
              opacity: 0.60,
              child: Text(
                'Our compact and foldable Bluetooth earbuds are renowned for their lightweight build, offering a convenient and portable solution for audiophiles on the go',
                style: TextStyle(
                  color: Color(0xFF414141),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],),
      ),SizedBox(height: 10,),
      Padding(
        padding:  EdgeInsets.only(left: 20,top: 10),
        child: Row(children: [
          Text(
            'Specifications',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          )
        ],),
      ),SizedBox(height: 5,),
      Padding(
        padding:  EdgeInsets.only(left: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(
            width: 73,
            child: Opacity(
              opacity: 0.60,
              child: Text(
                'Model Name',
                style: TextStyle(
                  color: Color(0xFF414141),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),SizedBox(
              width: 120,
              child: Opacity(
                opacity: 0.60,
                child: Text(
                  'Boat Airdopes 121V2',
                  style: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            )
        ],),
      ),SizedBox(height: 3,),
      Padding(
        padding:  EdgeInsets.only(left: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(
            width: 73,
            child: Opacity(
              opacity: 0.60,
              child: Text(
                'Color',
                style: TextStyle(
                  color: Color(0xFF414141),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),SizedBox(
              width: 119,
              child: Opacity(
                opacity: 0.60,
                child: Text(
                  'Gray',
                  style: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
        ],),
      ),Padding(
        padding:  EdgeInsets.only(top: 25),
        child: Column(children: [
          Container(
            width: 284,
            height: 38,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 104,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF8204FF),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '1',
                        style: TextStyle(
                          color: Color(0xFF8204FF),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 24,
                        height: 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 19),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: ShapeDecoration(
                    color: Color(0xFF8204FF),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF8204FF)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        padding: const EdgeInsets.only(
                          top: 3,
                          left: 2.25,
                          right: 0.75,
                          bottom: 3,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                          ],
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Buy now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 38,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: ShapeDecoration(
                    color: Color(0x198204FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width:18 ,
                        height: 18,
                        padding: const EdgeInsets.symmetric(horizontal: 2.25, vertical: 2.62),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],),
      )
    ],) ,);
  }
}
