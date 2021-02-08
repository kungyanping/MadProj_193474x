import 'package:flutter/material.dart';

class Point extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MyCustomStatefulWidget(country:"Points"),
          ],
        );
  }
}

class MyCustomStatefulWidget extends StatefulWidget {
  MyCustomStatefulWidget({Key key, this.country}):super(key:key);
  final String country;


@override
_MyCustomStatefulWidgetState createState()=>_MyCustomStatefulWidgetState();
}

class _MyCustomStatefulWidgetState extends State<MyCustomStatefulWidget> {
  int counter=0;

  @override
  Widget build(BuildContext context){
    return Center(
      child:Column(
        children: <Widget>[
          Container(
            margin:const EdgeInsets.all(30.0),
            color:Colors.pink[400],
            width:300.0,
            height:100.0,
            child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text(widget.country,
                textDirection:TextDirection.ltr,
                style:TextStyle(
                  color:Colors.white,
                  fontSize:32,
                )
                ),
                Center(
                  child:GestureDetector(
                    onTap:(){
                      setState((){
                        ++counter;
                      });
                    },
                  child:Container(
                    decoration:BoxDecoration(
                      shape:BoxShape.rectangle,
                      color: Colors.white
                    ),
                    child:Center(
                      child:Text(
                        '$counter',
                        style:TextStyle(fontSize:25.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height:20),

      Text('Redeem Vouchers',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.w700,
          ),
          ),

          SizedBox(height:20.0),
          Container(
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color:Colors.black)
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 200.0,
                  child: Image.asset('images/kfc.jpg'),
                ),
                SizedBox(width: 10.0),
                Column(
                  children: <Widget>[
                    Text(
                      'KFC \$10 Voucher',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    Text(
                      '100 points',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.pink[400],
                      child:Text('Redeem',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      onPressed:
                     (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                       }
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height:20.0),
          Container(
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color:Colors.black)
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 205.0,
                  child: Image.asset('images/pizzahut.jpeg'),
                ),
                SizedBox(width: 26.0),
                Column(
                  children: <Widget>[
                    Text(
                      'PizzaHut \$10 ',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    Text(
                      'Voucher',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    Text(
                      '80 points',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.pink[400],
                      child:Text('Redeem',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      onPressed:
                      (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
      ),
    );
  }
}