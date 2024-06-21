import 'package:findmua/bookingmua/Provider/cart_provider_mua.dart';
import 'package:findmua/bookingmua/Provider/favorite_provider_mua.dart';
import 'package:findmua/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:findmua/muahome/screens/mualocater_options.dart';
import 'package:findmua/buymakeup/Provider/cart_provider.dart';
import 'package:findmua/buymakeup/Provider/favorite_provider.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:findmua/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => CartProviderMua()),
        ChangeNotifierProvider(create: (_) => FavoriteProviderMua()),
      ],
      child: GetMaterialApp(
        title: 'Buy Makeup App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            const MUALocateOptions(), // Adjust this as per your app's structure
        initialBinding: BindingsBuilder(() {
          // Initialize Get dependencies here if needed
          // Get.put(AppController());
        }),
      ),
    );
  }
}
