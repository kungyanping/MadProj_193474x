import 'package:flutter/material.dart';
import 'package:madproj/services/auth.dart';

class MyDrawer extends StatelessWidget{
  final Function onTap;
  MyDrawer({this.onTap});
  final AuthService _auth=AuthService();

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            decoration:BoxDecoration(color: Colors.pink[400]),
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('SAVERS',
                  style: TextStyle(
                    fontSize:25,
                    fontWeight:FontWeight.bold,
                    color:Colors.white
                  ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: ()=> onTap(context,0,'Savers'),
          ),
          ListTile(
            leading: Icon(Icons.comment ),
            title: Text('About'),
            onTap: ()=> onTap(context,1,'Savers'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: ()=> onTap(context,2,'Savers'),
          ),
          ListTile(
            leading: Icon(Icons.assignment_turned_in_outlined ),
            title: Text('Points'),
            onTap: ()=> onTap(context,3,'Savers'),
          ),
          ListTile(
            leading: Icon(Icons.payments ),
            title: Text('My Voucher'),
            onTap: ()=> onTap(context,4,'Savers'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: ()=> onTap(_auth.signOut()),
          ),
        ],
        ),
      ),
    );
  }
}