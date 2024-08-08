import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
   
  const BasicDesign({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // Image
          Image(image: AssetImage('assets/landscape.png')),
          // Title
          Title(),
          // Button Section
          ButtonSection(),
          // Description
          Padding(
            padding: EdgeInsets.all(30),
            child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.', 
              softWrap: true, textAlign: TextAlign.justify
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const Color color = Colors.blue;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL', color: color),
          CustomButton(icon: Icons.near_me, text: 'ROUTE', color: color),
          CustomButton(icon: Icons.share, text: 'SHARE', color: color)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const CustomButton({ super.key, required this.icon, required this.text, required this.color });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 10),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}