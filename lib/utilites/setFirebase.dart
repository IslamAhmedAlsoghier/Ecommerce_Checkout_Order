import 'package:ecommerce_checkout/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> setFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
