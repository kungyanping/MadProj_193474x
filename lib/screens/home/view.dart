import 'package:flutter/material.dart';

class View extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(vertical:15.0, horizontal:15.0),
      child: ListView(children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Text('Vouchers',
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
                      child:Text('more info',
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
                      child:Text('more info',
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
                  child: Image.asset('images/pizzahut.jpeg'),
                ),
                SizedBox(width: 22.0),
                Column(
                  children: <Widget>[
                    Text(
                      'Pizza Hut \$15',
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
                      'Price: \$13',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.pink[400],
                      child:Text('more info',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Pizzahut()));
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
                  child: Image.asset('images/subway.png'),
                ),
                SizedBox(width: 22.0),
                Column(
                  children: <Widget>[
                    Text(
                      'Subway \$20',
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
                      'Price: \$17',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.pink[400],
                      child:Text('more info',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Subway()));
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
      ],
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int counter = 0;
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
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'KFC \$10 Voucher',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      'Price: \$5.00',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(width:95),
                Text('Quantity: ',
                style: TextStyle(
                  fontSize: 17,
                ),),
              SizedBox(height: 10.0),
              GestureDetector(
                child: Icon(
                  Icons.add_circle,
                  size: 20.0,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    ++counter;
                  });
                },
              ),
              SizedBox(width:2),
              Text(
                '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(width:2),
              GestureDetector(
                child: Icon(
                  Icons.remove_circle,
                  size: 20.0,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    --counter;
                  });
                },
              )
              ],
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
              child: Text('Purchase',
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

class Mcdonald extends StatefulWidget {
  @override
  _McdonaldState createState() => _McdonaldState();
}

class _McdonaldState extends State<Mcdonald> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('McDonald'),
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
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Mcdonald \$20 Voucher',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      'Price: \$15.00',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(width:50),
                Text('Quantity: ',
                style: TextStyle(
                  fontSize: 17,
                ),),
              SizedBox(height: 10.0),
              GestureDetector(
                child: Icon(
                  Icons.add_circle,
                  size: 20.0,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    ++counter;
                  });
                },
              ),
              SizedBox(width:2),
              Text(
                '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(width:2),
              GestureDetector(
                child: Icon(
                  Icons.remove_circle,
                  size: 20.0,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    --counter;
                  });
                },
              )
              ],
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
              child: Text('Purchase',
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

class Pizzahut extends StatefulWidget {
  @override
  _PizzahutState createState() => _PizzahutState();
}

class _PizzahutState extends State<Pizzahut> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Hut'),
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
              child: Image.asset('images/pizzahut.jpeg'),
            ),
            ),
            SizedBox(height:20),
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Pizza Hut \$15 Voucher',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      'Price: \$13.00',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(width:50),
                Text('Quantity: ',
                style: TextStyle(
                  fontSize: 17,
                ),),
              SizedBox(height: 10.0),
              GestureDetector(
                child: Icon(
                  Icons.add_circle,
                  size: 20.0,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    ++counter;
                  });
                },
              ),
              SizedBox(width:2),
              Text(
                '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(width:2),
              GestureDetector(
                child: Icon(
                  Icons.remove_circle,
                  size: 20.0,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    --counter;
                  });
                },
              )
              ],
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
              'This is a \$15 Voucher for Pizza Hut Restaurant. This voucher can be redeemed when you are ordering food from any plateform as long as the restaurant is Pizza Hut.',
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
              child: Text('Purchase',
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


class Subway extends StatefulWidget {
  @override
  _SubwayState createState() => _SubwayState();
}

class _SubwayState extends State<Subway> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subway'),
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
              child: Image.asset('images/subway.png'),
            ),
            ),
            SizedBox(height:20),
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Subway \$20 Voucher',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      'Price: \$17.00',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(width:60),
                Text('Quantity: ',
                style: TextStyle(
                  fontSize: 17,
                ),),
              SizedBox(height: 10.0),
              GestureDetector(
                child: Icon(
                  Icons.add_circle,
                  size: 20.0,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    ++counter;
                  });
                },
              ),
              SizedBox(width:2),
              Text(
                '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(width:2),
              GestureDetector(
                child: Icon(
                  Icons.remove_circle,
                  size: 20.0,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    --counter;
                  });
                },
              )
              ],
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
              'This is a \$20 Voucher for Subway Restaurant. This voucher can be redeemed when you are ordering food from any plateform as long as the restaurant is Subway.',
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
              child: Text('Purchase',
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