import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> favoriteContacts = [
    {
      'nameContact': 'Jorge Emilio',
      'phone': '55 66 33231',
      'typePhone': 'Movil',
    },
    {
      'nameContact': 'Cesar Manuel',
      'phone': '55 66 13756',
      'typePhone': 'Casa',
    },
    {
      'nameContact': 'Camilo Visman',
      'phone': '55 66 45367',
      'typePhone': 'Fijo',
    }
  ];
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 198, 17, 150),
              child: Text(
                'CA',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Phone: 553277362',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),

      ),
      body: ListView(
        children: [
          Hero(
            tag: 'my_canine_age_image',
            child: Image.asset(
              "assets/cantacs.png",
              height: 210,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'FAVORITOS',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                MaterialButton(
                  onPressed: () {},
                  textColor: Colors.blue,
                  child: const Text('AÑADIR', style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: favoriteContacts.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(favoriteContacts[index]['nameContact']!),
                subtitle: Text(favoriteContacts[index]['phone']!),
              );
            },
          ),
        ],
      ),
    );
  }
}
