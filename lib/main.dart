import 'package:flutter/material.dart';

void main() {
  runApp(const MisIconosV());
}

class MisIconosV extends StatelessWidget {
const MisIconosV({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Roberto Cerna Mat: 22308051281055",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 67, 64, 255),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconWithSubtitle(
                icon: Icons.restaurant,
                color: Colors.red,
                subtitle: 'Cubiertos',
                subtitleColor: Colors.red[700]!,
              ),
              IconWithSubtitle(
                icon: Icons.emoji_food_beverage,
                color: Colors.brown,
                subtitle: 'Bebidas',
                subtitleColor: Colors.brown[700]!,
              ),
              IconWithSubtitle(
                icon: Icons.cut,
                color: Colors.orange,
                subtitle: 'Trabajo',
                subtitleColor: Colors.orange[700]!,
              ),
              IconWithSubtitle(
                icon: Icons.local_bar,
                color: Colors.blue,
                subtitle: 'Bar',
                subtitleColor: Colors.blue[700]!,
              ),
              IconWithSubtitle(
                icon: Icons.cake,
                color: Colors.purple,
                subtitle: 'Postre',
                subtitleColor: Colors.purple[700]!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String subtitle;
  final Color subtitleColor;

  IconWithSubtitle({
    required this.icon,
    required this.color,
    required this.subtitle,
    required this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
          size: 40.0,
        ),
        SizedBox(height: 8.0),
        Text(
          subtitle,
          style: TextStyle(
            color: subtitleColor,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}

