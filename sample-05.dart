class Event{
  final String name;

  Event(this.name);

  String getName() => "name";
  String getTest() => "test";
}

// getTestを実装しないと動かない
class AEvent implements Event {
  final String name;

  AEvent(this.name);

  String getName() => "";
}

void main(){
  final aEvent = new AEvent("xxx");
  print(aEvent.getName());
}