import 'package:f4or/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: 'current user',
  imageUrl: 'assets/img1.png',
);

final User marcel = User(
  id: 1,
  name: 'marcel',
  imageUrl: 'assets/img1.png',
);
final User bacsan = User(
  id: 2,
  name: 'bacsan',
  imageUrl: 'assets/img2.png',
);
final User tisha = User(
  id: 3,
  name: 'tisha',
  imageUrl: 'assets/img1.png',
);
final User tasha = User(
  id: 4,
  name: 'tasha',
  imageUrl: 'assets/img1.png',
);
final User mark = User(
  id: 5,
  name: 'mark',
  imageUrl: 'assets/img2.png',
);
final User tybie = User(
  id: 6,
  name: 'tybie',
  imageUrl: 'assets/img1.png',
);
final User jessey = User(
  id: 7,
  name: 'jessey',
  imageUrl: 'assets/img2.png',
);
List<User> favourates = [tybie, marcel, tisha, bacsan,tasha];

List<Message> chats = [
  Message(
    sender: tybie,
    time: '15:03',
    text: 'how are you today? hahahahah brae ha',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tasha,
    time: '16:43',
    text: 'hey hillary',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jessey,
    time: '16:56',
    text: 'yoo weh you at',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: bacsan,
    time: '17:08',
    text: 'maan dat movie is killa',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mark,
    time: '18:14',
    text: 'am a BAM student not a/c',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tisha,
    time: '18:14',
    text: 'where are you now!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: marcel,
    time: '19:02',
    text: 'yo, ar u in Lab',
    isLiked: false,
    unread: true,
  ),
];
List<Message> messages = [
  Message(
    sender: tasha,
    time: '15:03',
    text: 'how u today? op ur fine and hav to talk to yah lyk soon ',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tasha,
    time: '16:43',
    text: 'hey hillary',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '16:56',
    text: 'hi, there weh you at',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tasha,
    time: '17:08',
    text: 'am at e movies',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '18:14',
    text: 'ohh how is it',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tasha,
    time: '18:14',
    text: 'lit, shud come',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: tasha,
    time: '19:02',
    text: 'for real',
    isLiked: false,
    unread: true,
  ),
];