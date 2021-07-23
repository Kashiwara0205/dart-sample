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
}

void main(){
  final person = new Person("ss");
  final person2 = new Person("ss");
   print(person == person2);
}