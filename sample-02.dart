import 'package:collection/collection.dart';

main(){
  var list = [5, 4, 3, 2, 1];
  final size = list.length;

  for (int i = 0; i < size; i++){
    for(int j = i + 1; j < size; j++){
      if(list[i] > list[j]){
        final tmp = list[i];
        list[i] = list[j];
        list[j] = tmp;
      }
    }
  }

  Function eq = const ListEquality().equals;

  print(list);
  print(eq( [1, 2, 3, 4, 5], list));
}