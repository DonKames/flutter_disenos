import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            icon: Icons.border_all_rounded,
            text: 'General',
            color: Colors.lightBlue,
          ),
          _SingleCard(
            icon: Icons.emoji_transportation_rounded,
            text: 'Transport',
            color: Colors.purple,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shopping_bag_rounded,
            text: 'Shopping',
            color: Colors.pink,
          ),
          _SingleCard(
            icon: Icons.checklist_rtl_rounded,
            text: 'Bills',
            color: Colors.orange,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie_filter_rounded,
            text: 'Entertainment',
            color: Colors.blue,
          ),
          _SingleCard(
            icon: Icons.local_grocery_store_rounded,
            text: 'Grocery',
            color: Colors.green,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie_filter_rounded,
            text: 'Entertainment',
            color: Colors.blue,
          ),
          _SingleCard(
            icon: Icons.local_grocery_store_rounded,
            text: 'Grocery',
            color: Colors.green,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie_filter_rounded,
            text: 'Entertainment',
            color: Colors.blue,
          ),
          _SingleCard(
            icon: Icons.local_grocery_store_rounded,
            text: 'Grocery',
            color: Colors.green,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 25,
            child: Icon(
              color: Colors.white,
              icon,
              size: 35,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text, style: TextStyle(color: color, fontSize: 18)),
        ],
      ),
    );
  }
}

class _SingleCardBackground extends StatelessWidget {
  final Widget child;

  const _SingleCardBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
