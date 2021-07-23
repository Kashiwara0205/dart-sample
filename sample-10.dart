// dartのfactoryはシングルトンパターンの実装に使用
// デザパタのfactoryと混同しないように注意
class Person {
  final String name;
  static Map<String,Person> _cache;

  void putsName(){
    print(this.name);
  }

  factory Person(String name) {
    _cache ??= new Map<String,Person>();
    _cache[name] ??= new Person._internal(name); 
    return _cache[name];
  }
   
  // Named Constructors
  Person._internal(this.name);

  Person.hoge(this.name);

  Person.tarou()
    : name = "tarou";
}

void main(){
  final person = new Person("ss");
  person.putsName();

  final person2 = new Person("ss");
  person2.putsName();

  final person3 = new Person.hoge("tarou");
  person3.putsName();

  final person4 = new Person.tarou();
  person4.putsName();

  print(person == person2);
  print(person3 == person4);
}