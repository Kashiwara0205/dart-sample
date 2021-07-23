abstract class Animal{
  final String name;

    Animal(this.name);

  void putsName() => print(this.name);
}

class Dog extends Animal{

  Dog(String name) : super(name);

  void putsName(){
    print("DOG");
    print(this.name);
  }
}

class Cat extends Animal{

  Cat(String name) : super(name);

  void putsName(){
    print("CAT");
    print(this.name);
  }
}

class Bird extends Animal{

  Bird(String name) : super(name);

  Bird putsName(){
    print("Bird");
    print(this.name);
  }
}

class AnimalFactory{
  static Animal create(String type){
    switch(type){
      case "DOG":
        return new Dog("OOOH");
        break;
      case "CAT":
        return new Cat("OOOO");
        break;
      case "BIRD":
      return new Bird("xxx");
        break;
    }
  }
}

void main(){
  final dog = new Dog("OOOH");
  dog.putsName();

  final cat = AnimalFactory.create("CAT");
  cat.putsName();
}