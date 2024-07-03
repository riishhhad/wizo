import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wizo/Bloc/wizoprdct_bloc.dart';
import 'package:wizo/Repository/Modelclass/Wizoprdct.dart';

class screen2 extends StatefulWidget {
  final String productId;
  const screen2({super.key,required this.productId});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  late Wizoprdct winner;
  @override
  void initState() {
    BlocProvider.of<WizoprdctBloc>(context).add(FetcwizoEvent(productId: widget.productId));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,body:BlocBuilder<WizoprdctBloc, WizoprdctState>(
  builder: (context, state)
    {
      if (state is Wizoprdctblocloading) {
        return Center(child: CircularProgressIndicator(),);
      }
      if (state is Wizoprdctblocerror) {
        return Center(child: Text("Error"),);
      }
      if (state is Wizoprdctblocloaded) {
        winner = BlocProvider
            .of<WizoprdctBloc>(context)
            .wizoprdct;
        return Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Row(children: [
              Icon(Icons.arrow_back_ios_new_rounded), Padding(
                padding: EdgeInsets.only(left: 210),
                child: Icon(Icons.notification_add_rounded),
              ), Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.favorite_border),
              ),
            ],),
          ), Column(children: [
            SizedBox(width: 320, child: CarouselSlider.builder(
              itemCount: winner.data!.productPhotos!.length,
              itemBuilder: (BuildContext context, int itemIndex,
                  int pageViewIndex) =>
                  Container(
                    child: Image.network(winner.data!.productPhotos![itemIndex].toString()),
                  ), options: CarouselOptions(autoPlay: true),


            ))
          ],), Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: SizedBox(
                  height: 80,
                  width: 60,
                  child: Icon(Icons.more_horiz_outlined)),
            )
          ],), Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(children: [
              Container(
                width: 90,
                height: 70,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 350,height: 25,
                      child: Text(
                        winner.data!.productTitle.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 22,),
                    SizedBox(width: 200,height: 20,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: winner.data!.productPrice.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: winner.data!.productPrice.toString(),
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
                    ),
                  ],
                ),
              ), Padding(
                padding: EdgeInsets.only(left: 130),
                child: Container(
                  width: 90,
                  height: 36,
                  padding: const EdgeInsets.symmetric(horizontal: 14,
                      vertical: 10),
                  decoration: ShapeDecoration(
                    color: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [Icon(Icons.discount_outlined),
                          Text(
                            'On sale',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],),
          ), Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(children: [
              Container(
                width: 62,
                height: 28,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                decoration: ShapeDecoration(
                  color: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(width: 5,
                        height: 20,
                        child: Icon(
                          CupertinoIcons.star_fill, color: Colors.yellow,)),
                    SizedBox(width: 20,),
                    Text(
                      winner.data!.productStarRating.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ), Container(
                width: 62,
                height: 28,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                decoration: ShapeDecoration(
                  color: Colors.black26,
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
                      width: 0,
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
                    SizedBox(width: 3,
                        height: 20,
                        child: Icon(Icons.thumb_up_off_alt_sharp)), SizedBox(
                      width: 5,),
                    Text(
                      winner.data!.productNumRatings.toString(),
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ), SizedBox(width: 30,),
              Text(
                '132 Reviews',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],),
          ), SizedBox(height: 15,),
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
          ), Padding(
            padding: EdgeInsets.only(left: 20, top: 5),
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
                            color: Colors.orangeAccent,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 22,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Colors.white60,
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
                            color: Colors.deepPurpleAccent,
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
                            color: Colors.deepPurpleAccent,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ), SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 5),
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
          ), SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.only(left: 20,),
            child: Row(children: [
              SizedBox(
                width: 340,
                child: Opacity(
                  opacity: 0.60,
                  child: Text(
                    winner.data!.productDescription.toString(),
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],),
          ), SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
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
          ), SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 73,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'Model Name',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ), SizedBox(
                  width: 120,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'Boat Airdopes 121V2',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                )
              ],),
          ), SizedBox(height: 3,),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 73,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'Color',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ), SizedBox(
                  width: 119,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'Gray',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],),
          ), Padding(
            padding: EdgeInsets.only(top: 25),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.deepPurpleAccent,
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
                            width: 10,
                            height: 24,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              ],
                            ),
                          ),
                          SizedBox(width: 1),
                          Icon(CupertinoIcons.minus, color: Colors.deepPurple,),
                          SizedBox(width: 1,),
                          Text(
                            '1',
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Icon(CupertinoIcons.plus, color: Colors.purple,),
                        ],
                      ),
                    ),
                    const SizedBox(width: 19),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      decoration: ShapeDecoration(
                        color: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1, color: Colors.deepPurpleAccent),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.shopping_cart),
                          Text(
                            'Buy now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ), SizedBox(width: 10,),
                    Container(
                      height: 38,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      decoration: ShapeDecoration(
                        color: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_border),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],),
          ),

        ],); } else {return SizedBox(width: 10,);}
    }
    ) ,
  );
  }
}
