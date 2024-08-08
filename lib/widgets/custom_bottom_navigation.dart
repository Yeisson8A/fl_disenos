import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false, // Mostrar/Ocultar labels items (Seleccionado)
      showUnselectedLabels: false, // Mostrar/Ocultar labels items (No seleccionado)
      iconSize: 30, // Tamaño de los iconos (Items)
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      items: const [
        BottomNavigationBarItem(label: 'Calendario',icon: Icon(Icons.calendar_month_outlined)),
        BottomNavigationBarItem(label: 'Gráfica', icon: Icon(Icons.bar_chart_outlined)),
        BottomNavigationBarItem(label: 'Usuarios', icon: Icon(Icons.supervisor_account_rounded))
      ]
    );
  }
}