import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  bool isLoading = false;

  setLoading(bool loading) {
    isLoading = loading;
    update();
  }

  Future<void> createAccount(String email, String password) async {
    try {
      setLoading(true);
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        Get.snackbar("Success", "User created successfully");
      }
    } catch (e) {
      Get.snackbar("Error!!", e.toString());
    } finally {
      setLoading(false);
    }
  }

  Future<void> loginAccount(String email, String password) async {
    try {
      setLoading(true);
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        Get.snackbar("Success", "Login successfully");
      }
    } catch (e) {
      Get.snackbar("Error!!", e.toString());
    } finally {
      setLoading(false);
    }
  }
}