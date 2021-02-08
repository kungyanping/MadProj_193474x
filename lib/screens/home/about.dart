import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(vertical:15.0, horizontal:15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Container(
            height: 200.0,
            width: 400.0,
            child: Image.asset('images/fooddelivery.jpeg'),
          ),
          SizedBox(height:20.0),
          
          Text('About Us',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
          ),
          
          SizedBox(height:10.0),
          Container(
            height: 130,
            width: 450,
            color: Colors.pink[200],
          child:Padding(
            padding: const EdgeInsets.all(10),
            child:Text(
            'Our company strives to help people who uses delivery app often to save up on expenses and reduce the amount spend. We provide vouchers to different food so that users can buy food at a cheaper price.',
            style: TextStyle(
            fontSize: 18.0,
          ),
          ),
          ),
          ),
          SizedBox(height:20.0),
          Text(
            'Contact Us',
            style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
          ),
          SizedBox(height:20.0),
          Text(
            'Contact: 97223763',
            style: TextStyle(
            fontSize: 18.0,
          ),
          ),
          SizedBox(height:10.0),
          Text(
            'Email: yanping@gmail.com',
            style: TextStyle(
            fontSize: 18.0,
          ),
          ),
          SizedBox(height:20.0),

          Container(
            height: 30,
            width: 450,
            color: Colors.pink[200],
          child:Padding(
            padding: const EdgeInsets.all(5),
            child:Text(
            'Application Developed by: yanping',
            style: TextStyle(
            fontSize: 17.0,
          ),
          textAlign: TextAlign.center,
          ),
          ),
          ),
        ],
    ),
    );
  }
}