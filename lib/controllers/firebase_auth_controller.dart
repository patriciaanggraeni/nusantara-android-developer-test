import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nusantara_android_developer_test/screens/home.dart';
import 'package:nusantara_android_developer_test/screens/login.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';

class FirebaseAuthController extends GetxController { 
  static final FirebaseAuthController _instance = Get.find();
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  late Rx<User?> _user;
  late UserCredential userCredential;
  
  @override
  void onReady() {
    _user = Rx<User?>(_auth.currentUser);
    _user.bindStream(_auth.userChanges());
    ever(_user, _initial);
    super.onReady();
  }

  _initial(User? user) => user == null ? 
    Get.offAll( () => const Login() ) : 
    Get.offAll( () => Home(username: user.displayName ?? "User") );

  void register(String username, String email, String password) async {
    try {
      userCredential = await FirebaseAuthController.auth.createUserWithEmailAndPassword(
        email: email, 
        password: password,
      );

      userCredential.user!.updateDisplayName(username);

      Util.snackBar(message: "Create account successfully!", statusCode: 1,);
    } on FirebaseAuthException catch (e) {
      late String message;

      switch (e.code) {
        case "weak-password":
          message = "Weak password";
          break;
        case "email-already-in-use":
          message = "Email already exists";
          break;
        default:
          message = "Error: ${e.code}";
      }

      Util.snackBar(message: message);
    }
  }

  void login(String email, String password) async {
    try {
      userCredential = await _auth.signInWithEmailAndPassword(
        email: email, 
        password: password,
      );

      Util.snackBar(message: "Login account successfully!", statusCode: 1,);
    } on FirebaseAuthException catch (e) {
      late String message;

      switch (e.code) {
        case "user-not-found":
          message = "User not found with this email";
          break;
        case "wrong-password":
          message = "Incorrect password";
          break;
        default:
          message = "Error: ${e.code}";
      }
      
      Util.snackBar(message: message);
      return null;
    }
  }

  void logout() async {
    try {
      await _auth.signOut();
      Util.snackBar(
        message: "Logout successfully!",
        statusCode: 1,
      );  
    } catch (e) {
      Util.snackBar(
        message: "Error: {$e.code}",
      );
    }
  }

  static FirebaseAuth get auth => _auth;
  static FirebaseAuthController get instance => _instance;
}