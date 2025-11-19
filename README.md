# <p align=center> [Software-Devlopment-ChatApp / Daniel, Sayf and Mahdiat](https://placehold.it/150/ffffff/ff0000?text=hello) </p>

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
- Create an account or log in using a username.
- Join a global chat room or create/join private chat rooms.

- Send and receive text messages in real time.
- View a list of online users.
- See timestamps for messages.
- Receive notifications when new messages arrive.
- View past messages (chat history).

# Optional User Requirements
- Send emojis or simple reactions.
- Edit or delete their own messages within a set time limit.
- Block or mute other users.
- Customise basic profile information (avatar, display name).

# System Requirements
Functional Requirements;
- The system must store user accounts (username, password hash, profile info).
- The system must transmit messages between users via a server.
- The system must store messages with timestamps.
- The system must update all connected clients in real time when a new message is sent.
- The system must allow creation of multiple chat rooms.
- The system must keep track of which users are currently online.
- The system must prevent unauthorised access through authentication.

# Non-Functional Requirements
- Performance: Messages should appear for all users in under 1 second.
- Reliability: Server uptime should be above 99%.
- Scalability: Support a minimum of 100 concurrent users.
- Security: Passwords stored using hashing; all communication encrypted.
- Compatibility: Work across desktop and mobile browsers (responsive design).

# Human–Computer Interaction (HCI) Requirements
Interface Layout;
- Clean, minimalistic UI.
- Message area takes up the majority of the screen.
- User list panel visible on the side.
- Text input box fixed at the bottom.
- Date/time separators for clarity.

# Usability Requirements
- Simple login flow.
- Predictable behaviour for send button and “Enter” key.
- Messages shown in chat bubbles with clear sender labels.
- Distinguishable color scheme for own messages vs others.

Clear feedback when:
- Message has been sent
- Message has failed
- A user joins/leaves

# Accessibility
- Adjustable text size.
- Keyboard-only navigation support.
- High-contrast mode.

# Game-Rules and Game-Mechanics Equivalent
Games rules;
- A user must be logged in to send or receive messages.
- Users can only delete their own messages.
- A chat room must have at least one user to exist.
- A user cannot see messages in rooms they are not part of.
- Muted users’ messages will not be shown to the muting user.

# System Mechanics
- When a message is sent, the server verifies sender identity, stores message in the database, and broadcasts to all users in the room.
- Users are marked online when authenticated and connected; offline when disconnected.
- Users may join or leave rooms. When joining, the last X messages are loaded from history.

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
- Backend (Server): Node.js / Python / Java / etc.
- Database: SQL or NoSQL
- Communication: WebSockets or long-polling for real-time messaging

# Constraints
- The system must support multiple active rooms.
- Only text messages (and optional emojis) — no file transfers unless extended.
- The entire application must run efficiently on low-spec mobile devices.

# Acceptance Criteria
The project is deemed successful if;
- Multiple users can sign in simultaneously.
- Users can join a room and exchange real-time text messages.
- System remains stable with 100+ concurrent connections.
- Chat history loads correctly.
- Basic moderation tools (mute/block) work as designed.


# <ins> User Profiles <ins/>

# <ins> User Profile 1 — Emily (Mother and Casual Tech User) <ins/>

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

# <ins> User Profile 2 — Liam (Teenager and Social Communicator) <ins/>

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

