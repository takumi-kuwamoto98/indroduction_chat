import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            children: [
              Expanded(
                  child: Column(
                children: [
                  LeftBalloon(),
                  RightBalloon(),
                  RightBalloon(),
                  RightBalloon(),
                ],
              )),
              TextInputWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class LeftBalloon extends StatelessWidget {
  const LeftBalloon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Row(children: [
        const CircleAvatar(),
        const SizedBox(width: 16.0),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 233, 233, 233)),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('hello'),
          ),
        )
      ]),
    );
  }
}

class RightBalloon extends StatelessWidget {
  const RightBalloon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 28.0),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
              gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  Color.fromARGB(255, 108, 132, 235),
                  Color.fromARGB(255, 132, 199, 250),
                ],
                stops: [0.0, 1.0],
              )),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Hello',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.camera_alt_outlined),
            color: Colors.black54,
            onPressed: () {},
          ),
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.photo_outlined),
            color: Colors.black54,
            onPressed: () {},
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(40)),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.mic_outlined),
            color: Colors.black54,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
