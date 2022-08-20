import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Image
          const Image(image: AssetImage('assets/Portrait-vs-Landscape.webp')),

          //Title
          const Title(),

          //Button Section
          const ButtonSection(),

          //Description
          Container(
            margin: const EdgeInsets.all(25),
            child: const Text(
                'Cillum exercitation do ut adipisicing culpa velit laborum consequat fugiat sint tempor anim. Pariatur ipsum amet mollit officia enim in mollit velit officia fugiat nulla. Id exercitation nostrud aute fugiat exercitation incididunt anim. Aliqua laborum culpa dolor id ut ad ad labore pariatur ea nisi. Nisi consequat laboris in esse irure consectetur ut nulla adipisicing velit ex. Ullamco enim commodo minim consequat exercitation consectetur veniam eu nostrud sunt.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ActionButton(
          icon: Icons.phone,
          text: 'CALL',
        ),
        ActionButton(
          icon: Icons.room_outlined,
          text: 'ROUTE',
        ),
        ActionButton(
          icon: Icons.share,
          text: 'SHARE',
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;

  final String text;

  const ActionButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
