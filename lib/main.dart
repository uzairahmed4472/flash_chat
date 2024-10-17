import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screen_names.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.black54),
        ),
      ),
      // home: WelcomeScreen(),
      initialRoute: ScreenNames.welcome_screen,
      routes: {
        // "/": (context) => WelcomeScreen(),
        ScreenNames.welcome_screen: (context) => WelcomeScreen(),
        ScreenNames.login_screen: (context) => LoginScreen(),
        ScreenNames.register_screen: (context) => RegistrationScreen(),
        ScreenNames.chat_screen: (context) => ChatScreen(),
      },
    );
  }
}
