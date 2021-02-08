import 'package:flutter/material.dart';
import 'package:madproj/screens/authenticate/authenticate.dart';
import 'package:madproj/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:madproj/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user=Provider.of<User>(context);

    //return either home or autheticate widget
    if(user==null){
      return Authenticate();
    }
    else{
      return MyApp();
    }
  }
}