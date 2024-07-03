import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wizo/Bloc/wizo_bloc.dart';
import 'package:wizo/UI/screen2.dart';

import '../Repository/Modelclass/ProductModel.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  late ProductModel result;
  @override
  void initState() {
    BlocProvider.of<WizoBloc>(context).add(FetcwizoEvent());
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,body: Column(children: [
      Padding(
        padding:  EdgeInsets.only(top: 20,left: 15),
        child: Row(children: [
          SizedBox(width: 40,child: Image.asset('assets/1.png')),Padding(
            padding:  EdgeInsets.only(left: 15),
            child: Text(
              'Wizo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 160),
            child: Icon(Icons.notification_add_rounded),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 25),
            child: Icon(Icons.favorite_border),
          ),
        ],),
      ),Padding(
        padding:  EdgeInsets.only(top: 15),
        child: Container(child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),hintText: 'search',
            hintStyle: TextStyle(color: CupertinoColors.inactiveGray,fontWeight: FontWeight.w400)
          ),
        ),
            width: 353,
            height: 40,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            ),
            shadows: [
            BoxShadow(
            color: Color(0x11000000),
            blurRadius: 40,
            offset: Offset(0, 0),
            spreadRadius: 0,
            )
            ],
            ),
        ),
      ),SizedBox(height: 20,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Padding(
          padding:  EdgeInsets.only(left: 15),
          child: Text(
            'Categories',
            style: TextStyle(
              color: Color(0xFF414141),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),Padding(
          padding:  EdgeInsets.only(right: 15),
          child: Text(
            'See all',
            style: TextStyle(
              color: Color(0xFF8204FF),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ],),SizedBox(height: 20,),
      Row(children: [
        Padding(
          padding:  EdgeInsets.only(left: 15),
          child: SizedBox(width: 50,child: Image.asset('assets/2.png')),
        ),SizedBox(width: 20,),
        SizedBox(width: 50,child: Image.asset('assets/3.png')),SizedBox(width: 20,),
        SizedBox(width: 50,child: Image.asset('assets/4.png')),SizedBox(width: 20,),
        SizedBox(width: 50,child: Image.asset('assets/5.png')),SizedBox(width: 20,),
        SizedBox(width: 50,child: Image.asset('assets/6.png')),
      ],),SizedBox(height: 20,),
      Row(children: [
        Padding(
          padding:  EdgeInsets.only(left: 18),
          child: Text(
            'Foods',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),SizedBox(width: 45,),
        Text(
          'Gift',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),SizedBox(width: 55,),
        Text(
          'Fashion',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),SizedBox(width: 35,),
        Text(
          'Gadget',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),SizedBox(width: 35,),
        Text(
          'Accessory',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        )
      ],),SizedBox(height: 20,),
      Column(children: [
    Container(
    width: 330,
    height: 123,
    padding: const EdgeInsets.only(
    top: 20,
    left: 20,
    right: 197,
    bottom: 24,
    ),
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
    image: DecorationImage(
    image: AssetImage("assets/7.png"),
    fit: BoxFit.fill,
    ),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    ),
    ),
    )],),SizedBox(height: 20,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Padding(
          padding:  EdgeInsets.only(left: 15),
          child: Text(
            'Featured products',
            style: TextStyle(
              color: Color(0xFF414141),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
              'See all',
              style: TextStyle(
                color: Color(0xFF8204FF),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
        )
      ],),
      SizedBox(height: 15,),
      Expanded(child:BlocBuilder<WizoBloc, WizoState>(
  builder: (context, state) {
    if (state is WizoBlocloading) {
      return Center(child: CircularProgressIndicator(),);
    }
      if (state is WizoBlocerror) {
    return Center(child: Text("Error"),);
    }
        if (state is WizoBlocloaded) {
    result = BlocProvider.of<WizoBloc>(context).productModel;
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: 350/450,
      shrinkWrap: true,
      children: List.generate(result.data!.products!.length, (index) {
      return Padding(
      padding: const EdgeInsets.all(10.0),
      child:
      TextButton(
        onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen2(productId:result.data!.products![index].asin.toString() ,)));},
        child: Container(
          margin: EdgeInsets.only(bottom: 10),child: Column(
        children: [
        Padding(
        padding:  EdgeInsets.only(top: 8),
        child: SizedBox(width: 80,height: 78,child: Image.network(result.data!.products![index].productPhoto.toString())),
        ),Padding(
        padding:  EdgeInsets.only(top: 10),
        child: SizedBox(
        width: 120,
        child: SizedBox(width: 80,height: 24,
          child: Text(
                 result.data!.products![index].productTitle.toString(),maxLines: 1,
          style: TextStyle(
          color: Color(0xFF212529),
          fontSize: 15,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          ),
          ),
        ),
        ),
        ),SizedBox(height:25 ,),
          Row(children: [
            Padding(
              padding:  EdgeInsets.only(left: 5),
              child: SizedBox(width: 110,
                child: SizedBox(width: 200,
                  child: Text(
                   result.data!.products![index].productPrice.toString(),
                    style: TextStyle(
                      color: Color(0xFF8204FF),
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),SizedBox(width: 15,child: Image.asset('assets/12.png'))
          ],),



        ],
        ),
        width: 150,
        height: 250,
        decoration: ShapeDecoration(
        color: Color(0xFFF9FAFB),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1),
        ),
        shadows: [
        BoxShadow(
        color: Color(0x28000000),
        blurRadius: 8,
        offset: Offset(0, 4),
        spreadRadius: 0,
        ),
        ],
        ),
        ),
      )
      );
      },),
      ); } else {return SizedBox(width: 10,);}
  },
),
      )
    ],),);
  }
}
