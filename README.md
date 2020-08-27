# INF1300 - Agile Development Course for Cross-Platform Mobile Apps 

![](https://miro.medium.com/max/3200/0*LjBPCQFGjmSJ6D46.png)

Practical grasp of fundamental concepts regarding the Dart programming language and the Flutter framework. Understanding of basic and advanced programming techniques, concepts of Plugins and Modules, as well as obtaining practical experience with the development of cross-platform mobile applications (Android and iOS).

## What is Flutter?
Flutter is Google’s portable UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.

## Dart
Flutter is written in Dart. A terse, strongly-typed, object-oriented language. It's similar in syntax with programming languages like Swift, C#, Java and JavaScript. You can test Dart on [DartPad](https://dartpad.dev/).

### A basic Dart program
```dart
// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.
}
```
Dart has built-in types for numbers, strings, booleans, lists (also known as arrays), sets, maps, runes (for expressing Unicode characters in a string), symbols. It also has `var` as a way to declare a variable without specifying its type.

Like JavaScript, everything you place in a variable is an object, and every object is an instance of a class. Numbers, functions, and null are objects. All objects inherit from the `Object` class.

Although Dart is strongly typed, type annotations are optional because Dart can infer types. In the code above, number is inferred to be of type int. When you want to explicitly say that no type is expected, use the special type `dynamic`. Dart also supports generic types, like `List<int>` or `List<dynamic>` (a list of objects of any type).

Unlike Java, Dart doesn’t have the keywords `public`, `protected`, and `private`. If an identifier starts with an underscore (_), it’s private to its library.

For more information, check [Dart's own Language Tour](https://dart.dev/guides/language/language-tour).

## Setup

First, follow the official documentation on [Installing Flutter](https://flutter.dev/docs/get-started/install).

The use of [Visual Studio Code](https://flutter.dev/docs/get-started/editor?tab=vscode) and it's [Flutter Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter) are highly recommended for the course.

## Links
- [Flutter Official Website](http://flutter.io)
- [Dart Official Website](https://dart.dev/)
- [Class Exercises](https://bitbucket.org/endler/workspace/projects/FLUT)
- [Awesome Flutter](https://github.com/Solido/awesome-flutter)
- [Udacity - Free Flutter Course](https://www.udacity.com/course/build-native-mobile-apps-with-flutter--ud905)
