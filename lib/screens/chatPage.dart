import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:http/http.dart' as http;

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chat(
          theme: const DefaultChatTheme(
            backgroundColor: Color.fromRGBO(76, 94, 135, 1),
            inputBackgroundColor: Colors.white,
            inputTextColor: Color.fromRGBO(76, 94, 135, 1),
            primaryColor: Color.fromRGBO(114, 144, 203, 1),
            secondaryColor: Color.fromRGBO(193, 205, 228, 1)
          ),
          scrollPhysics: const BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          messages: _messages, 
          onSendPressed: _handleSendPressed, 
          user: _user,
        ),
    );
  }  

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      // id: const Uuid().v4(),
      id: "id",
      text: message.text,
    );

    _addMessage(textMessage);
  }

}