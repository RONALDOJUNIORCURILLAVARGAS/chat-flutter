import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final bool mymessage;
  final String message;
  const ChatBubble({super.key, required this.message, required this.mymessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(8),
        borderRadius:  BorderRadius.only(
          topLeft:const Radius.circular(8),
          topRight: const Radius.circular(8),
          bottomLeft: Radius.circular((mymessage)?8:0),
          bottomRight: Radius.circular((mymessage)?0:8),
        ),
        color: (mymessage) ? Colors.indigo[900] : Colors.grey[300],
      ),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 16,
          color: (mymessage) ? Colors.white : Color.fromARGB(255, 0, 2, 102),
        ),
      ),
    );
  }
}
