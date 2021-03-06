abstract class Event{
  // constructorを持てない
  
  String getName() => "name";
  String getTest() => "test";
}

// astract classによるDI
void echoEventName(Event event){
  print( event.getName() );
}

void echoEventTest(Event event){
  print( event.getTest() );
}

class AEvent extends Event {
  final String name;

  AEvent(this.name);

  String getName() => this.name;
}

void main(){
  final aEvent = new AEvent("xxx");
  print(aEvent.getName());
  echoEventName(aEvent);
  echoEventTest(aEvent);
}