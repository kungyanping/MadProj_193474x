import 'package:flutter/material.dart';

class MyData{
  final String name;
  final String number;
  final String age;
  MyData(this.name,this.number,this.age);
  
}


class Profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return FirstPage();
  }
}

class FirstPage extends StatelessWidget{
  bool _disableButton=false;

  handleClick(name){
    print('$name clicked');
  }
  
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  

  String _name='Yanping';
  String _number='87655678';
  String _age='20';

  @override
  Widget build(BuildContext context){
    return Container(
        alignment: Alignment.topLeft,
    child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
        Padding(
        padding:const EdgeInsets.all(20.0),
        child:Center(
        child:Text( 'Update Profile',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        ),
        ),
        ),

        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '1. Name:',
                ),
                ),
              SizedBox(
                width:63,
              ),
             Expanded(
               child: TextField(
                controller: myController,
                 onChanged: (text){
                   _name=text;
                 },
                 decoration: InputDecoration(
                   hintText:'Enter name here',
                  // hintText: this._name,
                 ),
               )
               ),
               Padding(
                padding: const EdgeInsets.all(5.0),
              ),
          ],
          ),

          Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '2. Contact number:'
                ),
                ),
             Expanded(
               child: TextField(
                 controller: myController1,
                 onChanged: (text){
                   _number=text;
                 },
                 decoration: InputDecoration(
                   hintText:'Enter contact number here',
                  // hintText: this._number,
                 ),
               )
               ),
               Padding(
                padding: const EdgeInsets.all(5.0),
              ),
          ],
          ),

          Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '3. Age:'
                ),
                ),
                SizedBox(
                width:75,
              ),
             Expanded(
               child: TextField(
                 controller: myController2,
                 onChanged: (text){
                   _age=text;
                 },
                 decoration: InputDecoration(
                   hintText:'Enter age here',
                  // hintText: this._number,
                 ),
               )
               ),
               Padding(
                padding: const EdgeInsets.all(5.0),
              ),
          ],
          ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.only(left: 20.0, right:20.0,top: 25.0,),
            child: RaisedButton(
              textColor: Colors.black,
              color: Colors.pink[400],
              child: Text('PROFILE',
              style: TextStyle(
                fontSize: 16,
              ),),
              onPressed: (){
                myController.clear();
                myController1.clear();
                myController2.clear();
                MyData data=new MyData(_name, _number,_age);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ProfilePage(data:data, str: 'Hello there!')),
                  );
          },
            ),
            ),
            Padding(
            padding: const EdgeInsets.only(left: 20.0, right:20.0,top: 25.0,),
            child: RaisedButton(
              textColor: Colors.black,
              color: Colors.pink[400],
              child: Text('UPDATE',
              style: TextStyle(
                fontSize: 16,
              ),
              ),
              onPressed: (){
                myController.clear();
                myController1.clear();
                myController2.clear();
                MyData data=new MyData(_name, _number,_age);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>SecondPage(data:data, str: 'Hello there!')),
                  );
          },
            ),
            ),
          ],
          ),
       ],
    ),
    );
  }
}

class SecondPage extends StatelessWidget{
  final MyData data;
  final String str;

  SecondPage({Key key,@required this.data,this.str = ''}):super(key:key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Text('Confirmation'),
      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Padding(
              padding:const EdgeInsets.all(20.0),
              child:Center(
                child:Text('Please confirm your entry:',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                ),
              ),
              ),
            ),

            Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   Padding(
                     padding:const EdgeInsets.all(10.0),
                     child:Text(
                       'Name: '+ data.name,
                       style: TextStyle(
                         fontSize: 17,
                       ),
                      ),
                   ),
                   Padding(
                     padding:const EdgeInsets.all(10.0),
                     child:Text(
                       'Contact Number: '+ data.number,
                       style: TextStyle(
                         fontSize: 17,
                       ),
                      ),
                   ),
                   Padding(
                     padding:const EdgeInsets.all(10.0),
                     child:Text(
                       'Comment: '+ data.age,
                       style: TextStyle(
                         fontSize: 17,
                       ),
                      ),
                   ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    color: Colors.pink[400],
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Confirm'),
                  ),
          ],
        ),
      ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget{
  final MyData data;
  final String str;

  ProfilePage({Key key,@required this.data,this.str = ''}):super(key:key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Text('Profile'),
      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Padding(
              padding:const EdgeInsets.all(20.0),
              child:Center(
              child:Text('Profile Details:',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                ),
              ),
              ),
            ),

            Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   Padding(
                     padding:const EdgeInsets.all(10.0),
                     child:Text(
                       'Name: '+ data.name,
                       style: TextStyle(
                         fontSize: 17,
                       ),
                      ),
                   ),
                   Padding(
                     padding:const EdgeInsets.all(10.0),
                     child:Text(
                       'Contact Number: '+ data.number,
                       style: TextStyle(
                         fontSize: 17,
                       ),
                      ),
                   ),
                   Padding(
                     padding:const EdgeInsets.all(10.0),
                     child:Text(
                       'Comment: '+ data.age,
                       style: TextStyle(
                         fontSize: 17,
                       ),
                      ),
                   ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    color: Colors.pink[400],
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Back',
                    style: TextStyle(
                         fontSize: 17,
                       ),),
                  ),
          ],
        ),
      ),
          ],
        ),
      ),
    );
  }
}