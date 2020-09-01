# INF1300 - Agile Development Course for Cross-Platform Mobile Apps 

![](https://miro.medium.com/max/3200/0*LjBPCQFGjmSJ6D46.png)

Practical grasp of fundamental concepts regarding the Dart programming language and the Flutter framework. Understanding of basic and advanced programming techniques, concepts of Plugins and Modules, as well as obtaining practical experience with the development of cross-platform mobile applications (Android and iOS).

## What is Flutter?
Flutter is Google’s portable UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.

Flutter includes a modern reactive framework and a fast 2D rendering engine. With Flutter's reactive framework, a View is built as an imutable tree of widgets. 

### Widgets
Widgets are the foundation of Flutter apps. They are built using a modern framework that take an inspiration from [React](https://github.com/pedrochamberlain/react-topic-path). The central idea is that Flutter's UI is composed exclusively by them.

![](https://gblobscdn.gitbook.com/assets%2F-LanYWbVFl837-fblbH8%2F-LiFm-Sr9OsLQFZjpJy3%2F-LiFm5eKD6Kxk4ghWuw5%2Fstate-management-explainer-5495afe6c3d6162f145107fe45794583bc4f2b55be377c76a92ab210be74c033.gif?alt=media&token=400ab588-1304-41cc-ab60-78ffe95134ba)

Widgets describe what their view should look like given their current configuration and state. When a widget’s state changes, the widget rebuilds its description, which the framework diffs against the previous description in order to determine the minimal changes needed in the underlying render tree to transition from one state to the next.

There are both Stateless and Stateful widgets. A `StatelessWidget` is an immutable widget. All its fields are final after creation. A `StatefulWidget` is a widget that creates a State object. Developers familiar with React will notice familiar concepts derived from Functional and Class components.

Flutter comes with built-in customizable widgets that you can browse through in [Flutter's Official Widget Catalog](https://flutter.dev/docs/development/ui/widgets).

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
- [Start Flutter - Free Flutter Themes](https://startflutter.com/)
