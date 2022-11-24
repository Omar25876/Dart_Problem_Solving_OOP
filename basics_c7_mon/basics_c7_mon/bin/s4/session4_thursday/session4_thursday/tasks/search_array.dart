
import 'dart:io';

void main(){
  ///null Safety on
  stdout.write('Enter Search Number ?  ');
  int ser = int.parse(stdin.readLineSync()!);
  List<int> arr1 = [7,6,2,1,4,8,5,2,3,4];
  bool x = linearsearch(arr1, ser);
  if(x){print('Yes');} else{print('No');}
}

///============================================7

bool linearsearch(List<int> arr, value){
  bool found = false;                         ///Time Complexity
  ///1          ///n          ///n           Big o Notation
  for(int j = 0; j < arr.length ; j++) { ///Big o(n)
    if (arr[j] == value) {
      found = true;
    }
  }
  return found;
}

