import 'package:flutter/material.dart';
import 'package:madproj/services/auth.dart';
import 'package:madproj/shared/constants.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn ({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth=AuthService();
  final _formKey=GlobalKey<FormState>();

  //textfield state
  String email='';
  String password='';
  String error='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        elevation: 0.0,
        title: Text('Log in'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Register'),
            onPressed: (){
              widget.toggleView();
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical:20.0, horizontal:50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height:20.0),
              TextFormField(
                decoration: TextInputDecoration.copyWith(hintText:'Email'),
                validator: (val)=> val.isEmpty? 'Enter an email' : null,
                onChanged: (val){
                  setState(()=>email=val);
                },
              ),
              SizedBox(height:20.0),
              TextFormField(
                decoration: TextInputDecoration.copyWith(hintText:'Password'),
                validator: (val)=> val.length<6 ? 'Enter a password with more than 6 chars long':null,
                obscureText: true,
                onChanged: (val){
                  setState(()=>password=val);
                },
              ),
              SizedBox(height:20.0),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async{
                  if(_formKey.currentState.validate()){
                    dynamic result=await _auth.signInwithEmailAndPassword(email, password);
                    if(result == null){
                      setState(()=>error='Invalid email or password');
                    }
                  }
                },
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red,fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}