import 'user_model.dart';
class Message{
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;
  Message({
required this.sender,
required this.time,
required this.text,
required this.isLiked,
required this.unread

  });
}

final User currentUser = User(
  id: 1,
  name:'Titus',
  imageUrl: 'assets/images/titus.jpg'

);
final User devol = User(
  id: 2,
  name:'Devol',
  imageUrl: 'assets/images/devol.jpg'

);
final User jemal = User(
  id: 2,
  name:'Jemal',
  imageUrl: 'assets/images/jemal.jpg'

);
final User jemberu = User(
  id: 4,
  name:'Jemberu',
  imageUrl: 'assets/images/jemberu.jpg'

);
final User john = User(
  id: 5,
  name:'John',
  imageUrl: 'assets/images/john.jpg'

);
final User kaleab = User(
  id: 6,
  name:'Kaleab',
  imageUrl: 'assets/images/kaleab.jpg'

);
final User kira = User(
  id: 7,
  name:'Kira',
  imageUrl: 'assets/images/kira.jpg'

);

// List of favorite contact

List<User> favorites = [devol, kaleab, john, kira];

// Examples chat on home screen
List<Message> chats = [
  Message(
    sender: devol, 
    time: '4:25 PM', 
    text: 'Hey, How is it going on campus', 
    isLiked: false,
     unread: true),
     Message(
    sender: currentUser, 
    time: '4:30 PM', 
    text: 'Everything is awesome', 
    isLiked: false,
     unread: true),
     Message(
    sender: jemal, 
    time: '4:25 PM', 
    text: 'Congratulation Bro', 
    isLiked: false,
     unread: true),
     Message(
    sender: john, 
    time: '4:25 PM', 
    text: 'i am John', 
    isLiked: false,
     unread: true),
     Message(
    sender: kaleab, 
    time: '4:25 PM', 
    text: 'be a man', 
    isLiked: false,
     unread: true),
];