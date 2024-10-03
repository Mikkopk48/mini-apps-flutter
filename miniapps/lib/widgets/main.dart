import 'package:flutter/material.dart';
import 'package:miniapps/Screens/contacts_screen.dart';
import 'package:miniapps/Screens/home_screen.dart';
import 'package:miniapps/Screens/music_screen.dart';
import 'package:miniapps/Screens/my_canine_age_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes:{
        'home':( _ ) => const HomeScreen(),
        'my_canine_age':( _ ) => const MyCanineAgeScreen(),
        'contacts_app':( _ ) =>  const ContactsScreen(),
        'music_app':( _ ) =>  const MusicScreen(),
        
      },
      
    );
  }
}