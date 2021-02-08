import 'package:flutter/material.dart';


class Voucher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:15.0, horizontal:15.0),
      child: ListView(
        children: <Widget>[
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Text('My Vouchers',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
          ),
          SizedBox(height:20.0),


          Container(
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
                      'Price: \$5',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.pink[400],
                      child:Text('view voucher',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height:20.0),

          Container(
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
                  child: Image.asset('images/mcdonald.png'),
                ),
                SizedBox(width: 22.0),
                Column(
                  children: <Widget>[
                    Text(
                      'McDonald \$20',
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
                      'Price: \$15',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.pink[400],
                      child:Text('view voucher',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Mcdonald()));
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
      ]
    ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KFC'),
        backgroundColor: Colors.pink[400],
      ),
      body: Container(
        color: Colors.pink[100],
        padding: EdgeInsets.symmetric(vertical:15.0, horizontal:15.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:Container(
              height: 200.0,
              width: 400.0,
              child: Image.asset('images/kfc.jpg'),
            ),
            ),
            SizedBox(height:20),
            Text(
              'KFC \$10 Voucher',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:10),
            Text(
              '\$10.00',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            SizedBox(height:30),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height:10),
            Text(
              'This is a \$10 Voucher for KFC Restaurant. This voucher can be redeemed when you are ordering food from any plateform as long as the restaurant is KFC.',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),

            SizedBox(height:40),
            Center(
            child:RaisedButton(
              color: Colors.pink[400],
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Use',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class Mcdonald extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mcdonald'),
        backgroundColor: Colors.pink[400],
      ),
      body: Container(
        color: Colors.pink[100],
        padding: EdgeInsets.symmetric(vertical:15.0, horizontal:15.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:Container(
              height: 200.0,
              width: 400.0,
              child: Image.asset('images/mcdonald.png'),
            ),
            ),
            SizedBox(height:20),
            Text(
              'Mcdonald \$20 Voucher',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:10),
            Text(
              '\$20.00',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            SizedBox(height:30),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height:10),
            Text(
              'This is a \$20 Voucher for Mcdonald Restaurant. This voucher can be redeemed when you are ordering food from any plateform as long as the restaurant is Mcdonald.',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),

            SizedBox(height:40),
            Center(
            child:RaisedButton(
              color: Colors.pink[400],
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Use',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
            ),
            ),
          ],
        ),
      ),
    );
  }
}