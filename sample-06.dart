class Event{
  final String name;

  Event(this.name);

  String getName() => "name";
  String getTest() => "test";
}

class AEvent implements Event {
  final String name;

  AEvent(this.name);

  String getName() => this.name;
  String getTest() => "test";
}

class BEvent implements Event {
  final String name;

  BEvent(this.name);

  String getName() => this.name;
  String getTest() => "test";
}

// interfaceによるDI
void echoEventName(Event event){
  print( event.getName() );
}

void echoAEventName(AEvent event){
  print( event.getName() );
}

void main(){
  final aEvent = new AEvent("A");
  final bEvent = new BEvent("B");
  echoEventName(aEvent);
  echoEventName(bEvent);

  // AEventで型付されているので実行不可
  // echoAEventName(bEvent);
}