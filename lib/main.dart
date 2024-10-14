import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/Home/home_page.dart';
import 'package:bank_sha/ui/pages/Home/pin_page.dart';
import 'package:bank_sha/ui/pages/Home/profile_page.dart';
import 'package:bank_sha/ui/pages/Profile/edit_pin.dart';
import 'package:bank_sha/ui/pages/Profile/edit_profile.dart';
import 'package:bank_sha/ui/pages/Profile/edit_succes.dart';
import 'package:bank_sha/ui/pages/SignIn/sign_in.dart';
import 'package:bank_sha/ui/pages/SignUp/sign_up_passport.dart';
import 'package:bank_sha/ui/pages/SignUp/sign_up_pic.dart';
import 'package:bank_sha/ui/pages/SignUp/sign_up.dart';
import 'package:bank_sha/ui/pages/SignUp/sign_up_succes.dart';
import 'package:bank_sha/ui/pages/SignUp/sign_up_upload.dart';
import 'package:bank_sha/ui/pages/Splash/onboarding1.dart';
import 'package:bank_sha/ui/pages/ToupUp/toupup_amount.dart';
import 'package:bank_sha/ui/pages/ToupUp/toupup_page.dart';
import 'package:bank_sha/ui/pages/ToupUp/toupup_succes.dart';
import 'package:bank_sha/ui/pages/Transfer/transfer_page.dart';
import 'package:bank_sha/ui/pages/Transfer/transfer_amount.dart';
import 'package:bank_sha/ui/pages/Transfer/transfer_succes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: whiteLightColor,
        appBarTheme: AppBarTheme(
          backgroundColor: whiteLightColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "/onboarding1": (context) => const Onboarding1(),
        "/sign-in": (context) => const SignIn(),
        "/sign-up": (context) => const SignUp(),
        "/upload": (context) => const Upload(),
        "/pic": (context) => const Pic(),
        "/passport": (context) => const Passport(),
        "/succes": (context) => const SignUpSucces(),
        "/home": (context) => const HomePage(),
        "/profile": (context) => const ProfilePage(),
        "/pin": (context) => const PinPage(),
        "/edit-profile": (context) => const EditProfile(),
        "/edit-succes": (context) => const EditSucces(),
        "/edit-pin": (context) => const EditPin(),
        "/toupup": (context) => const ToupUp(),
        "/toupup-amount": (context) => const ToupUpAmount(),
        "/toupup-succes": (context) => const ToupUpSucces(),
        "/transfer": (context) => const TransferPage(),
        "/transfer-amount": (context) => const TransferAmount(),
        "/transfer-succes": (context) => const TransferSucces(),
      },
    );
  }
}
