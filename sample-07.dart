abstract class Event{
  String getName() => "name";
  String getTest() => "test";
}

// astract classによるDI
void echoEventName(Event event){
  print( event.getName() );
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
}