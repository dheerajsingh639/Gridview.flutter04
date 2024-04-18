import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choice {
  const Choice({required this.title, required this.icon, required this.des});

  final String title;
  final IconData icon;
  final String des;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.mode_fan_off_outlined, des: "Home"),
  const Choice(title: 'Contact', icon: Icons.contacts, des: "Contact"),
  const Choice(title: 'Map', icon: Icons.map, des: ""),
  const Choice(title: 'Phone', icon: Icons.phone, des: ""),
  const Choice(title: 'Camera', icon: Icons.camera_alt, des: ""),
  const Choice(title: 'Setting', icon: Icons.settings, des: ""),
  const Choice(title: 'Album', icon: Icons.photo_album, des: ""),
  const Choice(title: 'WiFi', icon: Icons.wifi, des: ""),
  // const Choice(title: 'Home', icon: Icons.home, des: "Home"),
  // const Choice(title: 'Contact', icon: Icons.contacts, des: "Contact"),
  // const Choice(title: 'Map', icon: Icons.map, des: ""),
  // const Choice(title: 'Phone', icon: Icons.phone, des: ""),
  // const Choice(title: 'Camera', icon: Icons.camera_alt, des: ""),
  // const Choice(title: 'Setting', icon: Icons.settings, des: ""),
  // const Choice(title: 'Album', icon: Icons.photo_album, des: ""),
  // const Choice(title: 'WiFi', icon: Icons.wifi, des: ""),
];

class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid View'), backgroundColor: Colors.blue),
      body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 34,
          mainAxisSpacing: 20,
          children: List.generate(choices.length, (index) {
            return Center(
              child: Card(
                color: Colors.blueAccent,
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        '../images/tv.webp',
                        height: 300,
                        width: 300,
                      ),
                      Expanded(
                          child: Icon(
                        choices[index].icon,
                        size: 50,
                      )),
                      Text(choices[index].title)
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
