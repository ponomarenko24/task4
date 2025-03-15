import 'package:equatable/equatable.dart';

void main() {
  Rectangle rectangle1 = Rectangle(10, 10);
  Rectangle rectangle2 = Rectangle(10, 10);
  print("Rectangle:");
  print(rectangle1 == rectangle2);
  print(rectangle2.toString());
  print(rectangle1.hashCode);
  print(rectangle2.hashCode);

  RectangleEquitable rectEquit1 = RectangleEquitable(10, 10);
  RectangleEquitable rectEquit2 = RectangleEquitable(10, 10);

  print("\nRectangle Equitable:");
  print(rectEquit1 == rectEquit2);
  print(rectEquit1.toString());
  print(rectEquit1.hashCode);
  print(rectEquit2.hashCode);
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);
  @override
  bool operator ==(Object other) =>
      other is Rectangle &&
      height == other.width &&
      width == other.height;

  @override
  String toString() {
    return "This rectange has $height height and $width width";
  }

  @override
  int get hashCode => width.hashCode ^ height.hashCode;
}

class RectangleEquitable extends Equatable {
  double width;
  double height;

  RectangleEquitable(this.width, this.height);

  @override
  List<Object> get props => [width, height];

  @override
  bool get stringify => true;
}
