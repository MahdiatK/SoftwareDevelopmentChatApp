import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:unity_main/components/chat_bubble.dart';
import 'package:unity_main/components/textfield.dart';
import 'package:unity_main/services/auth new/auth_service.dart';
import 'package:unity_main/services/chat/chat_service.dart';

class ChatPage extends StatefulWidget {
  final String receiverEmail;
  final String receiverID;

  const ChatPage({
    super.key, 
    required this.receiverEmail,
    required this.receiverID,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  //text controller
  final TextEditingController _messageController = TextEditingController();

  //chat and auths services 
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  //For textfield focus
  FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
   
      //Add listner to focus node
      myFocusNode.addListener(() {
        if (myFocusNode.hasFocus) {
          //Cause a delay to ensure keyboard is shown
          //Then calc remaining space
          //Then scroll down
          Future.delayed(
            const Duration(milliseconds: 500),
            () => scrolldown(),
          );
        } // Rebuild to reflect focus changes
      });

      //Wait a little while for listview to be built, then scroll to bottom
      Future.delayed(
        const Duration(milliseconds: 500),
        () => scrolldown(),
      );
    }

    @override
    void dispose() {
      myFocusNode.dispose();
      _messageController.dispose();
      super.dispose();
    }

    //Scroll Controller
    final ScrollController _scrollController = ScrollController();
    void scrolldown() {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    }

  // send message
  void sendMessage() async {
    //if there is something inside the textfield
    if (_messageController.text.isNotEmpty) {
      //send the message
      await _chatService.sendMessage(widget.receiverID, _messageController.text);

      //clear the controller
      _messageController.clear();
    }

    scrolldown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(widget.receiverEmail),
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
      stream: _chatService.getMessagesStream(SenderID, widget.receiverID),
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
          controller: _scrollController,
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
                focusNode: myFocusNode,
              ),
            ),
        
            // send button
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 104, 95, 14),
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
