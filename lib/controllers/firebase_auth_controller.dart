import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nusantara_android_developer_test/screens/home.dart';
import 'package:nusantara_android_developer_test/screens/login.dart';
import 'package:nusantara_android_developer_test/screens/register.dart';

class FirebaseAuthController extends GetxController { 

  static final FirebaseAuthController _instance = Get.find();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late Rx<User?> _user;
  
  @override
  void onReady() {
    _user = Rx<User?>(_auth.currentUser);
    _user.bindStream(_auth.userChanges());
    ever(_user, _initial);
    super.onReady();
  }

  FirebaseAuth get auth => _auth;
  FirebaseAuthController get instance => _instance;

  _initial(User? user) => user == null ? 
    Get.offAll( () => const Login() ) : 
    Get.offAll( () => const Home() );

}