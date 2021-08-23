import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_database/firebase_database.dart';

class FirAuth {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  void signUp(String username, String pass, ) {
    _firebaseAuth
        .signInWithEmailAndPassword(email: username, password: pass).then((user) {
          _signInUser( username, pass, );
      print(user);
    }).catchError((err){

    });
  }
  void reset(String username){
    _firebaseAuth.sendPasswordResetEmail(email: username);
  }
  _signInUser(String username, String pass, ){
    var user = {
      'Username': username,
      'Pass': pass,
    };
    var ref = FirebaseDatabase.instance.reference().child('user');
    ref.child(username).set(user).then((user){
    })..catchError((err){

    });


  }
}
