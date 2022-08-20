import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [.5, .5],
      colors: [
        Color(0xff76EBCE),
        Color(0xff30BAD6),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      width: double.infinity,
      child: const Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            elevation: 10,
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
