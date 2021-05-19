import 'package:whatsapp_clone/models/message_model.dart';
import 'dart:math';

class ChatModel{

  final String profilePictureUrl;
  final String name;
  final List<MessageModel> chatMessages;

  const ChatModel(this.name, this.profilePictureUrl, this.chatMessages);

  MessageModel get lastMessage{
    final random = Random().nextInt(18);
    return chatMessages[random];
  }
}

