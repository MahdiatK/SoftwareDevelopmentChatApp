import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:unity_main/components/chat_bubble.dart';
import 'package:unity_main/components/textfield.dart';
import 'package:unity_main/services/auth new/auth_service.dart';
import 'package:unity_main/services/chat/chat_service.dart';

class ChatPage extends StatelessWidget {
  final String receiverEmail;
  final String receiverID;

  ChatPage({
    super.key, 
    required this.receiverEmail,
    required this.receiverID,
  });

  //text controller
  final TextEditingController _messageController = TextEditingController();

  //chat and auths services 
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  // send message
  void sendMessage() async {
    //if there is something inside the textfield
    if (_messageController.text.isNotEmpty) {
      //send the message
      await _chatService.sendMessage(receiverID, _messageController.text);

      //clear the controller
      _messageController.clear();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(receiverEmail),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
        ),
      body: Column(
        children: [
        // display all the messages
        Expanded(child: _buildMessagesList(),
        ),

        //display the users input
        _buildUserInput(),
        ],
      ),
    );
  }

  // build messages list
  Widget _buildMessagesList() {
    String SenderID = _authService.currentUser!.uid;
    return StreamBuilder(
      stream: _chatService.getMessagesStream(SenderID, receiverID),
      builder: (context, snapshot) {
        //error
        if (snapshot.hasError) {
          return const Text("Error");
        }

        //loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading...");
        }

        //return list view of messages
        return ListView(
          children:
              snapshot.data!.docs.map((doc) => _buildMessageItem(doc)).toList(),
          );
        },
      );
    }

    // build individual message item
    Widget _buildMessageItem(DocumentSnapshot doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

      //Is current user
      bool isCurrentUser = data["senderID"] == _authService.currentUser!.uid;  //Checks if the senderID matches the current user's ID

      //Align message to right if sender is current user, otherwise align to left
      var alignment =
      isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;

      return Container(
        alignment: alignment,
        child: Column(
          crossAxisAlignment: 
              isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            ChatBubble(
              message: data["message"],
              isCurrentUser: isCurrentUser,
              )
          ],
        ),
        );
    }

    //build message input 
    Widget _buildUserInput() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Row(
          children: [
            // textfield should take up most of the space
            Expanded(
              child: MyTextField(
                controller: _messageController,
                hintText: "Enter your message",
                obscureText: false,
              ),
            ),
        
            // send button
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 208, 222, 17),
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.only(right: 25),
              child: IconButton(
                onPressed: sendMessage,
                icon: const Icon(Icons.arrow_upward,
                color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
