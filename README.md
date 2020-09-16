
# Part One for Interviewers. Set up a flutter toolchain on your computer. 


In order to set up your flutter toolchain correctly, visit: 
- [Set up your toolchain](https://flutter.dev/docs/get-started/install)

## Follow these steps at minimum to get your test application up and running: 
1. [Install](https://flutter.dev/docs/get-started/install)
2. [Set up an editor](https://flutter.dev/docs/get-started/editor)
3. [Test Drive](https://flutter.dev/docs/get-started/test-drive)

Have your "Test Drive" application up and running at the start of your interview. It should look like this:

![Starter app on iOS](https://flutter.dev/assets/get-started/ios/starter-app-5e284e57b8dce587ea1dfdac7da616e6ec9dc263a409a9a8f99cf836340f47b8.png)

## For this interview process, you will need to be able to open the project in any or all of the following editors: 
- XCode 
- VSCode 
- Android Studio

Please be prepared to open the project IN ANY OR ALL of these editors.
As the first step in your interview, we ask that you be able to run this project on both an iOS simulator as well as an Android simulator on your personal computer. 
You will be asked to show your simulators running this application at the start of your interview before proceeding to the next step.


Part Two of your interivew will be based on a series of questions relating to common problems faced in Dart/Flutter Cross-Platform development.
We will walk through a simple flutter application in real time for Part Two of your interview. 


# Part Two for Interviewers. 

After you have shown the "Test Drive" app running locally to the interviewer, head to [github](https://github.com/lisa1357mae/simTest) and 
`git clone git@github.com:lisa1357mae/simTest.git` 

`cd` into the directory and `flutter run` to get the application running on your machine. 

## About the Application

This is a very basic flutter application that generates word pairs to come up with startup names. 
It depends on one dart package that can be found here:
Documentation: [english_words](https://pub.dev/documentation/english_words/latest/index.html)

At this stage of your interview, we will go through common issues that arise in flutter cross-platform development and try to solve these problems together to get the application running, change some requirements, refactor some code, and if time allows - add a new feature.

Here is a gif of what the built app looks like: 
![startupNames generator](https://flutter.dev/assets/get-started/startup-namer-part-1-9db323d8383da0000c8be4e1a12e3d9ff6ab3a0eb8b86984451b329f1f3b4196.gif)

A. Debugging and fixing errors:
- Fix the three errors in the terminal to get the application to build

B. Changing requirements:
- We no longer want pasqual case but instead, we want the two words to be separated with a space in between, how can we separate the words to read "name name" instead of "NameName" ?
- We now want to add the words "of the" in between the two generated words so that it reads "name of the name", how can we change the string to output like this instead?
- We want to make sure that the words are being saved to our list correctly, if we go to the saved list does the format match the format on the like page?
- Refactoring: Can we make our code cleaner? How would we make a function that will formatName for us so we can extract it from the main widget

C. Special Feature
- We want the heart to play a sound when the user presses it. It just so happens that we've already found a dart package that can handle playing audio in Flutter.
Documentation: [audio_players](https://pub.dev/packages/audioplayers)
- We already loaded the .wav sound file that we would like to play into our pubspec.yaml assets but haven't been able to make the heart play a sound on press for some reason. 
- After taking a look at the audio_player api documentation, can we figure out how to make the heart play a sound every time it is tapped?



## Other questions: 

## Abstract/Problem Solving/Role Play: Thinking through a senerio together question (no wrong answer) (idea is to see how the interviewer solves problems abstractly if things don't go as originally planned)
You are given instructions by your boss to stop at a warehouse on your way to work to pick up a package. 
The information he gives you is as follows: 
Go to the warehouse to pick up my package. It will be a blue warehouse at 111 star drive, Albany NY 10005. When you pull up, you should see a door at the front of the building. The door should be unlocked so just enter and you'll see the packagage sitting at a desk when you enter. It will have my name on it "Boss", so just grab it and bring it on your way to work. Please try to have it here before our 10am meeting. 
- You get to the building, walk up to the front door and it's locked. What do you do?

## Dart/Flutter Specific

## What’s a ‘Future’ in Dart?
It’s used for asynchronous programming. A Future represents a potential value (or error) that’ll be available at some time in the future.
Receivers of a Future can register callbacks that handle the value or error once it’s available.
What are the 'async’ and 'await’ keywords for?
These are keywords that make asynchronous programming much easier to use and read.
We can use those instead of writing a then callback on Future objects.


## What is Context in flutter ?

Context is a handle to the location of the widget in the widget tree. It is a BuildContext instance that gets passed to the builder of a widget in order to know where it is inside the widget tree. It is nothing but a reference to the location of a Widget within the tree structure of all the built widgets.



## Differentiate StatelessWidget and StatefulWidget?

Stateless: Widget state creates ONLY ONCE, then it can update values but not state explicitly. That's why it has only one class which extends with StatelessWidget. They can never re-run build() method again.

Stateful: Widgets can update their STATE (locally) & values multiple times upon event triggered. That's the reason, the implementation is also different. In this, we have 2 classes, one is StatefulWidget & the other is it's State implementation handler i.e. State<YourWidget>. So if I say, they can re-run build() method again & again based on events triggered.
	•	A StatelessWidget will never rebuild by itself (but can from external events). A StatefulWidget can.
	•	A StatelessWidget is static wheres a StatefulWidget is dynamic.


## What is Dart and why does Flutter use it?
Dart is an object-oriented, garbage-collected programming language that you use to develop Flutter apps. It was also created by Google, but is open-source, and has community inside and outside Google. Dart was chosen as the language of Flutter for the following reason: 
	•	Dart is AOT (Ahead Of Time) compiled to fast, predictable, native code, which allows almost all of Flutter to be written in Dart. This not only makes Flutter fast, virtually everything (including all the widgets) can be customized.
	•	Dart can also be JIT (Just In Time) compiled for exceptionally fast development cycles and game-changing workflow (including Flutter’s popular sub-second stateful hot reload).
	•	Dart allows Flutter to avoid the need for a separate declarative layout language like JSX or XML, or separate visual interface builders, because Dart’s declarative, programmatic layout is easy to read and visualize. And with all the layout in one language and in one place, it is easy for Flutter to provide advanced tooling that makes layout a snap.


## What is a "widget" and mention its importance in Flutter?
	•	Widgets are basically the UI components in Flutter.
	•	It is a way to describe the configuration of an Element.
	•	They are inspired from components in React.
	•	Widgets are important in Flutter because everything within a Flutter application is a Widget , from a simple “Text” to “Buttons” to “Screen Layouts”.

## Objective-C Specific: 

## 1. What are the CPU architectures supported by iOS devices?
Armv7s supported from iPhone 5, 5c, 5S, iPod touch-5, iPad-4, iPad Air. that’s nothing but based on processor. Armv7s designed for A6 processor. Supporting from IOS6+. It’s also support for 64-bit coding but processing get slow in those devices with armv7s instruction set.
Same as, Arm64 devices are from Iphone 5s, iPad Air. That’s related to A7 Processor. Best advantage of these device is 64-bit support.

## 2. Can I write some C++ function in same .m file? Will it compile? If no, what changes should I do to compile it?
The easiest solution is to simply tell Xcode to compile everything as Objective C++.
Set your project or target settings for Compile Sources As to Objective C++ and recompile.
Then you can use C++ or Objective C everywhere.

## 3.What are the types of iOS binaries you can create using XCode? (.app, .ipa, .a, .framework)
you can create .app,.ipa,.a and .framework

## 4. Can a static library (.a) contain resources like images, sound files etc?
NO, You can’t provide anything other than code with a static library. This is because .a files are a simple archive of object files, with the added ability under Mac/iOS of supporting multiple CPU architectures.
The only option you have is to create a Framework, which can provide code as well as other resources.


## Android Specific: 

## What is ADB in Android? 

It is acts as bridge between emulator and IDE, it executes remote shell commands to run applications on an emulator

ADB stands for Android Debug Bridge. It is a command line tool that is used to communicate with the emulator instance. ADB can control your device over USB from a computer, copy files back and forth, install and uninstall apps, run shell commands, and more.
It is a client-server program that includes three components:
• Client – which runs on your development machine. You can invoke a client from a shell by issuing an ADB command. Other Android tools such as DDMS also create ADB clients.
• Server, which runs as a background process on your development machine. The server manages communication between the client and the ADB daemon running on an emulator or device.
• Daemon, which runs as a background process on each emulator or device instance.


## What is the Android SDK?
Answer: To develop a mobile application, Android developers require some tools and this requirement is satisfied by “Android SDK” which is a set of tools that are used for developing or writing apps.
It has a Graphical User Interface that emulates the Android environment. This emulator acts like an actual mobile device on which the developers write their code and then debug/test the same code to check if anything is wrong.


## Can Android applications only be programmed in Java?

No, not necessarily. We can program Android apps using the Native Development Kit (NDK) in C/C++. The NDK is a toolset that allows us to implement parts of our app using native code languages such as C and C++. Typically, good use cases for NDK are CPU-intensive applications such as game engines, signal processing, and physics simulation.