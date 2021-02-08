import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference profileCollection = Firestore.instance.collection('profile');

  Future updateUserData(String name, String number, int age) async{
    return await profileCollection.document(uid).setData({
      'name':name,
      'number':number,
      'age':age,
    });
  }
}
