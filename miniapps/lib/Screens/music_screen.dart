import 'package:flutter/material.dart';

void main() => runApp(const MusicScreen());

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
    body: CustomScrollView(
    slivers: [
      SliverAppBar(
        backgroundColor: Color.fromRGBO(252, 25, 9, 1),
        flexibleSpace:FlexibleSpaceBar(
          background: Hero(tag: 'music', child: Image.asset('assets/music.png'
          ,fit: BoxFit.cover,)),
          title: Text('Pinapla Musik',style:TextStyle(color: Colors.white),),
        ),
      )
    ],
    ));
  }
}