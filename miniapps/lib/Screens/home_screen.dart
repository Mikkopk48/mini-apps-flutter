import 'package:flutter/material.dart';
import 'package:miniapps/widgets/custom_card_with_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mini Apps'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                CustomCardWithImage(
                  cardText:'Mi Edad Canina',
                  heroTag:'my_canine_age_image',
                  image:'assets/perro.png',
                  routeName:'my_canine_age'
                ),
                SizedBox(height: 20),
                CustomCardWithImage(
                  cardText:'Contacts App',
                  heroTag:'contacts_app',
                  image:'assets/cantacs.png',
                  routeName:'contacts_app',
                  isAsset:false,),
              SizedBox(height: 20),
                CustomCardWithImage(
                  cardText:'Music',
                  heroTag:'music',
                  image:'assets/music.png',
                  routeName:'music_app',),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
