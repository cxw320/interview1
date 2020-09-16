
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

Abstract/Problem Solving/Role Play: Thinking through a senerio question (no wrong answer) 
You are given instructions by your boss to stop at a warehouse on your way to work to pick up a package. 
The information he gives you is as follows: 
Go to the warehouse to pick up my package. It will be a blue warehouse at 111 star drive, Albany NY 10005. When you pull up, you should see a door at the front of the building. The door should be unlocked so just enter and you'll see the packagage sitting at a desk when you enter. It will have my name on it "Boss", so just grab it and bring it on your way to work. Please try to have it here before our 10am meeting. 

Dart specific: 

Objective-C specific: 

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
