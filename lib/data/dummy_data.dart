
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/models/message_model.dart';

const List<ChatModel> chats = [
  ChatModel("George", "https://st4.depositphotos.com/12982378/22072/i/600/depositphotos_220729084-stock-photo-smiling-adult-man-crossed-arms.jpg", _messages),
  ChatModel("Jeremy", "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", _messages),
  ChatModel("Rihanna", "https://img.freepik.com/free-photo/fashion-portrait-woman-with-natural-make-up_176420-7615.jpg?size=626&ext=jpg", _messages),
  ChatModel("John", "https://img.freepik.com/free-photo/mand-holding-cup_1258-340.jpg?size=626&ext=jpg", _messages),
  ChatModel("Jessica", "https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg", _messages),
  ChatModel("Selena", "https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half-caption/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=0hb44OrI", _messages),
  ChatModel("Victor", "https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg", _messages),
  ChatModel("Amanda", "https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half-caption/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=0hb44OrI", _messages),
  ChatModel("James", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo4zGSr25cTfr__JnNBlxju18g9geM7uir_g&usqp=CAU", _messages),
  ChatModel("Matilda", "https://st3.depositphotos.com/12985848/16098/i/600/depositphotos_160982490-stock-photo-confident-businesswoman-in-formal-wear.jpg", _messages),
  ChatModel("Cameron", "https://st4.depositphotos.com/12982378/22072/i/600/depositphotos_220729084-stock-photo-smiling-adult-man-crossed-arms.jpg", _messages),
  ChatModel("Carolyn", "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", _messages),
  ChatModel("Rhea", "https://img.freepik.com/free-photo/fashion-portrait-woman-with-natural-make-up_176420-7615.jpg?size=626&ext=jpg", _messages),
  ChatModel("Steve", "https://img.freepik.com/free-photo/mand-holding-cup_1258-340.jpg?size=626&ext=jpg", _messages),
  ChatModel("Violette", "https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg", _messages),
  ChatModel("Adele", "https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half-caption/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=0hb44OrI", _messages),
  ChatModel("Jason", "https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg", _messages),
  ChatModel("Gwen", "https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half-caption/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=0hb44OrI", _messages),
  ChatModel("Daryl", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo4zGSr25cTfr__JnNBlxju18g9geM7uir_g&usqp=CAU", _messages),
  ChatModel("Monica", "https://st3.depositphotos.com/12985848/16098/i/600/depositphotos_160982490-stock-photo-confident-businesswoman-in-formal-wear.jpg", _messages),

];

const List<MessageModel> _messages = [
  MessageModel("Hey", "04:56 PM",isSelf: true),
  MessageModel("Hi", "04:57 PM",isSelf: false),
  MessageModel("How are you?", "04:58 PM",isSelf: false),
  MessageModel("I'm fine", "04:59 PM",isSelf: true),
  MessageModel("How are you?", "05:23 PM",isSelf: false),
  MessageModel("I'm fine too", "05:24 PM",isSelf: true),
  MessageModel("I needed your help", "05:25 PM",isSelf: true),
  MessageModel("with what?", "05:26 PM",isSelf: false),
  MessageModel("some tax related stuff", "05:27 PM",isSelf: true),
  MessageModel("I had to file mine this week", "05:28 PM",isSelf: true),
  MessageModel("its the deadline I think", "05:29 PM",isSelf: true),
  MessageModel("Oh", "05:30 PM",isSelf: false),
  MessageModel("okay", "05:31 PM",isSelf: false),
  MessageModel("we can meetup this weekend to discuss more on this", "05:32 PM",isSelf: false),
  MessageModel("lets plan something", "05:33 PM",isSelf: true),
  MessageModel("cool", "05:34 PM",isSelf: false),
  MessageModel("A new restaurant opened up nearby", "05:35 PM",isSelf: true),
  MessageModel("We should go there?", "05:36 PM",isSelf: true),
  MessageModel("Sure", "05:37 PM",isSelf: false),
  MessageModel("I'll call you this weekend", "05:38 PM",isSelf: true),
  MessageModel("perfect", "05:39 PM",isSelf: false),
  MessageModel("perfect", "05:40 PM",isSelf: true),
];