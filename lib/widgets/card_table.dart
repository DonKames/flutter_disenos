import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
      ),
    );
  }
}
