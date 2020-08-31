
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



Other questions: 

Abstract: Thinking through a senerio question (no wrong answer)

Dart specific: 

ObjectiveC specific: 

C++ specific: 



