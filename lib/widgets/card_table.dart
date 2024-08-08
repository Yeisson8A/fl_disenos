import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    // Tabla
    return Table(
      children: const [
        // Fila de la tabla
        TableRow(
          children: [
            _SingleCard(text: 'General', icon: Icons.border_all, color: Colors.blue),
            _SingleCard(text: 'Transport', icon: Icons.directions_car, color: Colors.deepPurple)
          ]
        ),
        // Fila de la tabla
        TableRow(
          children: [
            _SingleCard(text: 'Shopping', icon: Icons.shopping_bag, color: Colors.purple),
            _SingleCard(text: 'Bills', icon: Icons.receipt_long, color: Colors.orange)
          ]
        ),
        // Fila de la tabla
        TableRow(
          children: [
            _SingleCard(text: 'Entertainment', icon: Icons.movie_filter_sharp, color: Colors.indigo),
            _SingleCard(text: 'Grocery', icon: Icons.local_grocery_store, color: Colors.green)
          ]
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const _SingleCard({super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(color: const Color.fromRGBO(62, 66, 107, 0.7), borderRadius: BorderRadius.circular(20));
    
    return _CardBackground(
      decoration: decoration, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(backgroundColor: color, radius: 30, child: Icon(icon, size: 35, color: Colors.white)),
          const SizedBox(height: 20),
          Text(text, style: TextStyle(color: color, fontSize: 18))
        ],
      )
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  final BoxDecoration decoration;
  const _CardBackground({super.key, required this.child, required this.decoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(height: 180, decoration: decoration, child: child)
        ),
      ),
    );
  }
}