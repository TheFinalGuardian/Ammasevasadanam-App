import 'package:ammasevasadanam_app/widget_tree.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();


  Future<String> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try{
    UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
      );  
    
    DocumentSnapshot userDoc = await _firestore.collection("roles").doc(userCredential.user!.uid).get();
    fetch();
    return userDoc['role']; 

    } catch (e){
      return e.toString();
    }
  }

  Future<void> createWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
      );

    await _firestore.collection("roles").doc(userCredential.user!.uid).set({
      'username': email,
      'role':"user",
    });
    fetch();
  }

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }
}

fetch() async {
  User? firebaseUser = FirebaseAuth.instance.currentUser;

  if (firebaseUser != null) {
    final docSnapshot = await FirebaseFirestore.instance
        .collection("roles")
        .doc(firebaseUser.uid)
        .get();

    if (docSnapshot.exists) {
      userRole = docSnapshot.data()!['role'];
    }
  }
}