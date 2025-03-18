void main() {
  Animal animal1 = Animal("tiger", 1);
  print(animal1.isAdult());
  Animal animal2 = Animal("bear", 3);
  print(animal2.isAdult());
  Animal animal3 = Animal.origin("wolf");
  print(animal3.isAdult());
}

class Animal {
  final String type;
  final int age;

  Animal(this.type, this.age);
  Animal.origin(this.type) : this.age = 0;

  bool isAdult() {
    return age > 2 ? true : false;
  }
}
