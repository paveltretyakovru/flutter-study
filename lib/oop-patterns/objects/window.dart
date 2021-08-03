import 'package:myapp/oop-patterns/objects/rectangle.dart';

class Window {
  Rectangle rectangle = Rectangle(10, 10);

  num area() {
    return rectangle.area();
  }
}
