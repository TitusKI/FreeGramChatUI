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
final User eleni = User(
  id: 2,
  name:'Eleni',
  imageUrl: 'assets/images/jemal.jpg'

);
final User rita = User(
  id: 4,
  name:'Rita',
  imageUrl: 'assets/images/jemberu.jpg'

);
final User tina = User(
  id: 5,
  name:'Tina',
  imageUrl: 'assets/images/john.jpg'

);
final User kidist = User(
  id: 6,
  name:'Kidist',
  imageUrl: 'assets/images/kaleab.jpg'

);
final User pheven = User(
  id: 7,
  name:'Pheven',
  imageUrl: 'assets/images/kira.jpg'

);

// List of favorite contact

List<User> favorites = [devol, currentUser, pheven, kidist,tina];

// Examples chat on home screen
List<Message> chats = [

     Message(
    sender: currentUser,
    time: '4:30 PM', 
    text: 'Hey love! 😊 Just wanted to let you know how much you mean to me. 💖',
    isLiked: false,
     unread: true),
  Message(
      sender: devol,
      time: '4:34 PM',
      text: 'Aw, you\'re so sweet! 😍 What\'s on your mind?',
      isLiked: false,
      unread: false),
  Message(
      sender: pheven,
      time: '4:35 PM',
      text: 'BTW, I\'m fucking miss you babe',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '4:38 PM',
      text: 'Well, I was just thinking about how lucky I am to have you in my life. Every day with you feels like a beautiful adventure.',
      isLiked: true,
      unread: false),
  Message(
      sender: tina,
      time: '4:45 PM',
      text: 'That\'s so cute! 😊 I feel the same way. What\'s brought this on?',
      isLiked: true,
      unread: false),
  Message(
      sender: kidist,
      time: '4:47PM',
      text: '😍😍😍💖💖💖',
      isLiked: true,
      unread: true),
  Message(
      sender: currentUser,
      time: '4:55 PM',
      text: 'I don\'t need a reason to tell you how amazing you are, but tonight, the stars are shining just as brightly as my love for you. 🌟',
      isLiked: true,
      unread: false),
  Message(
      sender: rita,
      time: '5:00 PM',
      text: 'Aww, stop it! You\'re making me blush. 😄',
      isLiked: true,
      unread: false),
  Message(
      sender: currentUser,
      time: '5:30 PM',
      text: 'It\'s true, though. You\'re my sunshine on the cloudy days and my warmth in the cold. I can\'t imagine my life without you.',
      isLiked: true,
      unread: false),
  Message(
      sender: kidist,
      time: '5:35 PM',
      text: 'You\'re melting my heart right now. ❤️ I\'m so grateful for you too. What\'s your favorite thing about us?',
      isLiked: true,
      unread: false),
     Message(
    sender: currentUser,
    time: '5:38 PM',
    text: 'Likewise, sweetheart. Here\'s to us and the beautiful journey we\'re on together. Cheers to many more memories and adventures!',
    isLiked: true,
     unread: false),
     Message(
    sender: pheven,
    time: '5:42 PM',
    text: ' Cheers! 🥂 I love you more than words can express.',
    isLiked: false,
     unread: true),
     Message(
    sender: currentUser,
    time: '5:47 PM',
    text: ' And I love you beyond measure. Goodnight, my love. Sweet dreams. 💫',
    isLiked: false,
     unread: true),

  Message(
      sender: devol,
      time: '6:01 PM',
      text: 'Goodnight, my heart. I\'ll dream of you. 💖',
      isLiked: false,
      unread: true),


];