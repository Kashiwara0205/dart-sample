import "sample-03.dart";

void main(){
  final musicEvent = new MusicEvent("AEvent", 100, true);
  musicEvent.pustMax();

  // privateMethod,privateFieldを叩くとtryで囲っても絶対に落ちる
  try{
    musicEvent._privateMethod();
    musicEvent.status();
  }catch(e){
    print(e)
  }
}