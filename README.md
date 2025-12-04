# <p align=center> [Software-Development-Unity](https://placehold.it/150/ffffff/ff0000) </p>

<img width="1024" height="218" alt="image" src="https://github.com/user-attachments/assets/6e5fcdc3-3477-4cd8-a2bf-b6d7d500b18a" />

  # <ins> Reviewing Available Projects <ins/>
## Hangman
A simple, GUI multiplater game where players take turns guessing letters to reveal a hidden word, with ach incorrect guess adding to a 'hangman' drawing.

Target audience;
- This will be catered towards students, casual gamers or anyone looking for a quick game that they can play with a group of people

Considerations;
- Difficulty level, simple, intuitive gameplay
- Platform, likely to be played on desktop or mobile
- Multiplater, it would require syncing between players and managing turn taking on the game

Pros;
- Easy to implement and can be made with simple graphics
- Fun for all ages

Cons;
- Could get repetivie, may need to add creative elements to make it fresh
- May require extensive html, java code to make it look aesthetically pleasing and futuristic

## Hide and seek
Players can hide either objects or their avatars within a game mode, while another player (team) tries to find them. 

Target audience;
- This would be catered towards younger players (kids and teenagers), it may be appealing for small groups of people who enjoy multiplayer games.

Considerations;
- Game design, the hiding areas must be dynamic full with objects
- Multiplayer, involve different roles such as hiders and seekers, potentially multiple people in each team
- Technology, a simple 2 dimensional environment to host the game

Pros;
- Other a variatey of ways to play the game
- Encourages creativity in how players of the game design their hiding spots

Cons;
- Development could be more complex, especially if good graphics needed
- Might appeal to a narrower audience 

## Chat App
A simple text based chat app, multiple users can send messages to each other. Text formatting, private/group messaging and file sharing could be features involved in this app.

Target audience;
- Social users, students-anyone who communicates regulary and wants to used a customized chat app to communicate with others. It could be used for casual users or communites/businesses with specific needs

Considerations;
- Security, Either a basic messaging system, or if it requires a username and password to access the system
- User experience, easy-to=use interface, real-time messaging and notifications systems when receiving messages from others
- Multiplayer, Real-time nature of talking to others, be able to hold multiple users at once

Pros;
- Demand is high for chat apps
- Can add features like user profiles, media sharing and video calls

Cons;
- Can be challenging to make (data base management of users)
- Highly competitive market
- Will need alot of time spent on coding 

# <ins> Reviewing Target Audiences <ins/>
As any software project goes, it's essential to plan and build around an intended target audience. For the chosen project of building functioning mobile-ready Chat App, there are multiple possible target audiences to consider from:

## Family and Friends
Chacteristics;
- Prefer a simple, friendly interface
- Lightweight features
- Primarily mobile based usage

## Students
Chacteristics;
- Use messaging apps daily
- Need fast, simple communication
- Often collaborate in virtual spaces
- Appeals to engaging, intuitive UI

## Workforce Teams
Chacteristics;
- Need reliability and message persistence
- May need channels, tagging, or file exchange
- Values security


# <ins> Intended Primary Target Audience <ins/>
## Family and Friends

The project will be completed with casual use in mind, for families and friends who need an easy and convenient way of communication. This demographic will be favoring ease of use, instant messaging and an intuitive, accessible UI. By targeting users who prefer casual communication, the project can focus on core messaging without requiring more complex functionalities to support team-based environments. This will let the project fall under a realistic and achievable scope of work, as the members don't have extensive experience in designing mobile apps, or java.

# <ins> Overall Specification – Chat Application <ins/>

# Core User Requirements
- Create an account or log in using a username
- Join a global chat room or create/join private chat rooms

- Send and receive text messages in real time
- View a list of online users
- Receive notifications when new messages arrive
- View past messages (chat history)

# Optional User Requirements
- Send emojis or simple reactions
- Edit or delete their own messages within a set time limit
- Block or mute other users
- Customise basic profile information (avatar, display name)

# System Requirements
Functional Requirements;
- The system must store user accounts (username, password hash, profile info)
- The system must store messages with timestamps
- The system must update all connected clients in real time when a new message is sent
- The system must allow creation of multiple chat rooms
- The system must keep track of which users are currently online
- The system must prevent unauthorised access through authentication

# Non-Functional Requirements
- Performance, Messages should appear for all users in under 1 second
- Reliability, Server uptime should be above 99%
- Scalability, Support a minimum of 100 concurrent users
- Compatibility, Work across desktop and mobile browsers (responsive design).

# Human–Computer Interaction (HCI) Requirements
Interface Layout;
- Clean, minimalistic UI
- Message area takes up the majority of the screen
- User list panel visible on the side
- Text input box fixed at the bottom
- Date/time separators for clarity

# Usability Requirements
- Simple login flow
- Predictable behaviour for send button and “Enter” key
- Messages shown in chat bubbles with clear sender labels
- Distinguishable color scheme for own messages vs others

Clear feedback when:
- Message has been sent
- Message has failed
- A user joins/leaves

# Accessibility
- Adjustable text size
- Keyboard-only navigation support
- High-contrast mode

# Game-Rules and Game-Mechanics Equivalent
Games rules;
- A user must be logged in to send or receive messages
- Users can only delete their own messages
- A chat room must have at least one user to exist
- A user cannot see messages in rooms they are not part of
- Muted users’ messages will not be shown to the muting user

# System Mechanics
- Users are marked online when authenticated and connected; offline when disconnected
- Users may join or leave rooms, When joining, the last X messages are loaded from history

# Notifications appear when;
- a new message arrives
- a user joins or leaves the room

# Control System (How the user controls the “game”)
- Press “Enter” to send
- Click “Send” button
- Join/leave room buttons
- User settings panel

# Non-Player Characters (NPCs Equivalent)
- There are no true NPCs, but the system may include automated system messages acting like NPC interactions:
- “System: User123 has joined the room.”
- “System: Message failed to send.”
- “System: You were disconnected.”

# Data Requirements
- UserID
- Username
- PasswordHash
- Avatar (optional)
- Status (online/offline)

# Message Data Structure
- MessageID
- RoomID
- SenderID
- Timestamp
- MessageText

# System Architecture Overview
- Frontend (Client): HTML/CSS/JavaScript UI
- Backend (Server): Node.js / Python / Java 
- Database: SQL or NoSQL
- Communication: WebSockets or long-polling for real-time messaging

# Constraints
- The system must support multiple active rooms
- Only text messages (and optional emojis) — no file transfers unless extended
- The entire application must run efficiently on low-spec mobile devices

# Acceptance Criteria
The project is deemed successful if;
- Multiple users can sign in simultaneously
- Users can join a room and exchange real-time text messages
- System remains stable with 100+ concurrent connections
- Chat history loads correctly
- Basic moderation tools (mute/block) work as designed



# <ins> User Profiles <ins/>

# User Profile 1 — Emily (Mother and Casual Tech User)

Age: 42


Occupation: Teacher


Technical Skill Level: Basic to moderate


Family Role: Mother, regularly communicates with extended family

# Wants & Needs:

Simple, easy to navigate interface.

Fast and reliable messaging to stay in touch with her children and parents.

Notifications so she doesn’t miss important family messages.

Private, secure conversations for family messages or chats.

Ability to create small group chats.

# User Profile 2 — Liam (Teenager and Social Communicator)

Age: 16


Occupation: Student


Technical Skill Level: High


Family Role: Son, active in social circles

# Wants & Needs:

Fast, responsive chat system for quick texting.

Clean, modern interface that feels familiar and comfortable.

Reliable message delivery so conversations feel instant.

Lightweight app that works smoothly on mobile devices.


# <ins> High-Level Functional Specifications <ins/>

# Minimum Hardware Requirements
 - Android OS 5.0 / iOS 15
 - At least 1GB RAM
 - Around 300MB free storage
 - A stable internet connection

# Application Functions

**User Account Management**

- The system must allow users to create an account using a unique username.

- The system must allow existing users to log in and authenticate securely.

- The system must store and manage basic user profile information.

**Real-Time Messaging**

- The system must allow users to send and receive text messages in real time.

- The system must display message timestamps and sender information.

- The system must show message delivery status (sent/failed).

**Chat Rooms Management**

- The system must maintain multiple active chat rooms simultaneously.

- The system must load recent chat history when users join a room.

**User Presence and Online Status**

- The system must track which users are currently online.

- The system must display a list of online users in each room.

**Notifications**

- Users must receive notifications when new messages arrive.

**Message History**

- The system must store past messages.

- Users must be able to view message histories of chats

**Security and Access Control**

- Users must only see messages in rooms they are part of.

- Users must only be able to delete or edit their own messages (optional)

**User Interaction Controls**

- Users must be able to join or leave chat rooms from the interface.

- Users must access basic settings such as profile and mute/block controls.









# <ins> High-Level Non-Functional Specifications <ins/>

# Aesthetics
Chat game will have a clean and minimalistic layout/design. The background will be a solid colour, with easy to read font types. Finally the menu on the side with be high quality and large enough to properly gather what people and online and offline via their names.

# Usability
The game will have a simple navigation system with clear visual cues to understand what next to do, the chat app allows users of all ages to understand how to use the app and get started via creating an account.

# Feedback style
when sending a message to someone else, it will have a verification bar next to the message, one bar to show its sent and two bars to show it has been sent and read. If a user ypes and is about to send an incomplete message, the ap could suggest improvements or format corrections.

# Basic needs
Each user will have a profile with an avatar and username, each user has options to create direct or groups messages (up to 12). Search functionality for finding old chats or different contacts, finally message history with ability to see previous messages from few weeks back.
 
 # Error handling
If a message can't be sent due to connectivity issues, users should receive a notification saying something went wrong "please check your connections and try again", a retry button to try resend a undelivered messae and a offline warning, messages saved until other user back online to receive it.


# <ins> Designing the Mockups <ins/>

# Mahdiat Drafts

<img width="363" height="197" alt="image" src="https://github.com/user-attachments/assets/4dd141aa-3c17-4f51-b52b-1c7d3ee84f51" />

<img width="812" height="398" alt="image" src="https://github.com/user-attachments/assets/bc8cb4a1-62c6-457a-9c26-306aeb798554" />

<img width="860" height="427" alt="image" src="https://github.com/user-attachments/assets/7910fd55-b45f-48c3-afe1-534e879d2331" />

<img width="1185" height="580" alt="image" src="https://github.com/user-attachments/assets/22307332-bd28-468c-9f11-761144d1b43e" />

<img width="1173" height="586" alt="image" src="https://github.com/user-attachments/assets/f14a57ec-4fd9-47ae-bab2-4c135caf3d94" />

<img width="1179" height="577" alt="image" src="https://github.com/user-attachments/assets/ddf4fec8-c728-458d-88ea-8b6dfee09db5" />

<img width="1183" height="574" alt="image" src="https://github.com/user-attachments/assets/40890b6c-5bdf-49a7-baf7-0bef11b1c849" />

<img width="1513" height="433" alt="image" src="https://github.com/user-attachments/assets/5a70f9fb-5dfa-47c4-9fa7-5174967ae46b" />

# ***FINAL MOCKUPS FROM MAHDIAT***

<img width="408" height="775" alt="image" src="https://github.com/user-attachments/assets/3d42b076-8bae-4080-9011-520fb1b74dcb" />

<img width="406" height="784" alt="image" src="https://github.com/user-attachments/assets/60c4e149-a7c4-43dc-8497-ded3fcc581ef" />

<img width="981" height="701" alt="image" src="https://github.com/user-attachments/assets/590036b4-2d7d-456b-9f6a-1ea8ccf7d7f0" />

<img width="983" height="714" alt="image" src="https://github.com/user-attachments/assets/494e63ae-e7af-4db2-992a-6b0e4890b18b" />


# Daniel Drafts

<img width="409" height="248" alt="image" src="https://github.com/user-attachments/assets/7b4e22fb-8e71-4621-a134-b5c3c60b9ad1" />

<img width="838" height="575" alt="image" src="https://github.com/user-attachments/assets/dd8f488a-2fc7-4acf-b3d8-b9b6214f22ce" />

<img width="366" height="675" alt="image" src="https://github.com/user-attachments/assets/9f68b7c8-9783-4e14-ae00-7af832c18621" />

# ***FINAL MOCKUPS FROM DANIEL/storyboard***

<img width="304" height="595" alt="image" src="https://github.com/user-attachments/assets/09cd2323-b56a-4123-a0d3-be9508036ee4" />

<img width="299" height="588" alt="image" src="https://github.com/user-attachments/assets/10306ed2-966d-41b0-a10f-e490306e58ee" />

<img width="857" height="621" alt="image" src="https://github.com/user-attachments/assets/c0622307-1854-44d0-af0e-cda4774fb48a" />

# Sayf's Mock-ups
- Settings Page
<img width="838" height="799" alt="image" src="https://github.com/user-attachments/assets/05f09fe2-aa98-43fe-b74e-32a8611f48b9" />

- Profile Page
<img width="794" height="747" alt="image" src="https://github.com/user-attachments/assets/c44ad11e-e3f7-438d-b89c-6a5118dfa284" />

## Potential Project Risks

# Technical arcitecture #
- The app may not be designed to handle multiple users simultaneously texting, this could lead to crashes, message delays or loss of messages.

# Real tiime communication #
- Real time messaging protocols may exceed the teams technical familiarity, we have to research alot of these protocols before we can use them, poor implementation can lead to unreliable communication.

# Testing and quality assurance #
- Inadequate unit testing, increases amount of bugs, slow development

# Security vulnerabilities # 
- Week authentication, unsafe message storage, Chat apps deal with sensitive user information so security flaws can compromise user trust and violate regulations

# Api dependancies #
- Reliance on hosted cloud services, outages or deprecations can break and slow down the apps features leading to unhappy customers

# Integration between front and backend #
- Mismatched data formats, incosistent API behaviour, miscomunnication, these all can lead to core feaatures breaking or behaving unpredicitably

# Database design problems #
- Poor schema choices, this could result in slow message retrieval or lost messages

# Limited deployment knowledge #
- Possible difficulty deploying servers, this could lead to deployment errors making the system unusable

## Core requirements ##

# User Accounts #
- Register, login, logout
- Profile management (username, avatar, status)

# Real-Time Messaging #
- One-to-one chat
- Group chats
- Message sending, receiving, editing, deleting
- Typing indicators and read receipts

# Media Support #
- Send images, videos, documents, voice notes

# Notifications #
- Push notifications for new messages
- Contact Management
- Add/remove contacts
- Search contacts

# Additional (Optional) Features #
- Voice/video calls
- Status updates
- Multi-device sync
- Message backup/export
- End-to-end encryption (E2EE) or at minimum message encryption in transit (TLS)
- Secure user authentication (OAuth 2.0, JWT, or password-based authentication with hashing)

## basic pseudo coide ##

# Login #
function registerUser(username, password):
    if usernameExists(username):
        return "Username taken"
    hashedPassword = hash(password)
    saveToDatabase(username, hashedPassword)
    return "Registration successful"
    

function loginUser(username, password):
    if !usernameExists(username):
        return "User not found"
    if compareHash(password, getStoredHash(username)):
        createSession(username)
        return "Login successful"
    else:
        return "Invalid credentials"

# send messages #
function sendMessage(senderID, receiverID, messageText):
    encryptedText = encrypt(messageText, receiverPublicKey)
    message = createMessageObject(senderID, receiverID, encryptedText)
    saveToDatabase(message)
    pushToReceiver(receiverID, message)
    return "Message Sent"

# Create group chat #
function createGroupChat(creatorID, memberList):
    groupID = generateGroupID()
    saveGroup(groupID, creatorID, memberList)
    notifyMembers(memberList)
    return groupID

## Basic UML-Style Flowcharts ##

# Login flow chart #
<img width="518" height="716" alt="login flow" src="https://github.com/user-attachments/assets/79abbb37-6332-44cd-9aed-a98fb43dcecf" />

# Chat screen state flow chart   #
<img width="359" height="489" alt="image" src="https://github.com/user-attachments/assets/42df6081-9545-4bfb-903d-8dfd1fe338e2" />

# Message sending flow chart #
<img width="377" height="651" alt="message sending flow" src="https://github.com/user-attachments/assets/454e6a0a-3633-49af-929f-6eb2da85054d" />

## Establishing Game state ##

<img width="567" height="820" alt="image" src="https://github.com/user-attachments/assets/53562708-8607-4b0c-82c1-3e8c3a49a003" />

