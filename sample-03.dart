class Event{
  final String name;
  final int max;
  final bool _status;

  Event(this.name, this.max, this._status);

  void putsName(){
    print(this.name);
  }

  void pustMax(){
    print(this.max);
  }
}

class MusicEvent extends Event{

  MusicEvent(String name, int max, bool status) : super(name, max, status);

  void pustMax(){
    print("This is MusicEvent");
    print(this.max);
  }

  void _privateMethod(){
    print("cant' accesse from other library");
  }
}

main(){
  final event = new Event("AEvent", 100, true);
  event.putsName();
  event.pustMax();

  // カスケード記法
  final event2 = ( new Event("AEvent", 100, true)
    ..putsName()
    ..pustMax()
  );

  final event3 = new MusicEvent("AEvent", 100, true);
  event3.pustMax();
  // can accesse within the same library 
  event3._privateMethod();
  print(event3.name);
  print(event3._status);
}