class Event{
  String getName() => "name";
  String getTest() => "test";
}

// 親クラスを型にしても実行化
void echoEventName(Event event){
  print( event.getName() );
}

// 親に実装されていないメソッドを叩くことは不可能
/*
void echoEventName(Event event){
  print( event.getFuga() );
}
*/

class AEvent extends Event {
  final String name;

  AEvent(this.name);

  String getName() => this.name;
  String getFuga() => this.name;
}

void main(){
  final aEvent = new AEvent("xxx");
  print(aEvent.getName());
  echoEventName(aEvent);
}