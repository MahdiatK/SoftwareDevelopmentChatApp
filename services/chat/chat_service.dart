import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unity_main/models/message.dart';

class ChatService {

// get instance of firestore and auth
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final FirebaseAuth _auth = FirebaseAuth.instance;

// get user stream
/*

List<Map<String,dynamic> = 

  [
  {
   'email':test3@gmail.com,
   'id': ..
  }
  {
   'email':test4@gmail.com,
   'id': ..
  }
  ]
  
*/
Stream<List<Map<String, dynamic>>>  getUsersStream() {
  return _firestore.collection("Users").snapshots().map((snapshot) {
    return snapshot.docs.map((doc) {
      // go through each individual user
      final user = doc.data();

      // return user 
      return user;
    }).toList();
  });
}

// send message
Future<void> sendMessage(String receiverID, message) async {
  // get current user info
  final String currentUserID = _auth.currentUser!.uid;
  final String currentUserEmail = _auth.currentUser!.email!;
  final Timestamp timestamp = Timestamp.now();

  // create a new message
  Message newMessage = Message(
    senderID: currentUserID,
    senderemail: currentUserEmail,
    receiverID: receiverID,
    message: message,
    timestamp: timestamp,
  );

  //construct a chatroom ID for these two users (sorted to ensure uniqueness))
  List<String> ids = [currentUserID, receiverID];
  ids.sort(); //sort the ids (ensures the chat id is same for two people)
  String chatRoomID = ids.join("_"); // join with underscore

  //add new message to database
  await _firestore
      .collection("ChatRooms")
      .doc(chatRoomID)
      .collection("Messages")
      .add(newMessage.toMap());
}

// get messages
Stream<QuerySnapshot> getMessagesStream(String userID, otherUserID) {
  //construct a chatroom ID for these two users (sorted to ensure uniqueness))
  List<String> ids = [userID, otherUserID];
  ids.sort(); //sort the ids (ensures the chat id is same for two people)
  String chatRoomID = ids.join("_"); 

  return _firestore
      .collection("ChatRooms")
      .doc(chatRoomID)
      .collection("Messages")
      .orderBy("timestamp", descending: false)
      .snapshots();
 }
}
