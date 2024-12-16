import 'package:flutter/material.dart';
import 'package:money_chat/chat_screen.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const ChatScreen();
            }));
          },
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('A'),
          ),
          trailing: const Text('52年前'),
          title: const Text('Steaven'),
          subtitle: const Text('おはよ！昨日はありがとう。'),
        ),
      ],
    );
  }
}
