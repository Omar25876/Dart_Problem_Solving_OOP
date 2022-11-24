
import 'dart:io';

void main(){
  ///null Safety on
  stdout.write('Enter Search Number ?  ');
  int ser = int.parse(stdin.readLineSync()!);
  List<int> arr1 = [7,6,2,1,4,7,8,5,2,3,4];
  bool x = linearsearch(arr1, ser);
  print('Linear Search : ');
  if(x){print('The Value $ser Found ');} else{print('The Value $ser Not Found');}
  print('========================================================');
  print('Binary Search : ');
  binarysearch(arr1,ser);
}

///============================================

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

///============================================

void binarysearch(List<int> arr,value){
  int h = arr.length - 1;
  int l = 0;
  while (h - l > 1) {                    ///Big o(log n)
    int mid = (h + l) ~/ 2;
    if (arr[mid] < value) {
      l = mid + 1;
    }
    else {
      h = mid;
    }
  }
  if (arr[l] == value) {

  }
  else if (arr[h] == value) {
    print("Found At Index $h ") ;
  }
  else {
    print("Not Found") ;
  }

}