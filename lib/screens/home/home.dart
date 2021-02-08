import 'package:flutter/material.dart';
import 'package:madproj/screens/home/voucher.dart';
import 'package:madproj/services/auth.dart';
import 'drawer.dart';
import 'view.dart';
import 'profile.dart';
import 'point.dart';
import 'voucher.dart';
import 'about.dart';

// class Home extends StatelessWidget {
//   final AuthService _auth=AuthService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink[100],
//       appBar: AppBar(
//         title: Text('Home'),
//         backgroundColor: Colors.pink[400],
//         elevation: 0.0,
//         actions: <Widget>[
//           FlatButton.icon(
//             icon: Icon(Icons.person),
//             label: Text('Logout'),
            // onPressed: () async{
            //   await _auth.signOut();
            // },
//           ),
//         ],
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState()=>_MyAppState();
}

class _MyAppState extends State<MyApp>{
  String title ="Home";
  int index=0;
  List<Widget> list=[View(),About(),Profile(),Point(),Voucher()];

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[400],
          title: Text(title),
        ),
        body: list[index],
        backgroundColor: Colors.pink[100],
        drawer: MyDrawer(onTap:(context,i,txt){
          setState(() {
            index = i;
            title = txt;
            Navigator.pop(context);
          });
        }),
      ),
    );
  }
}