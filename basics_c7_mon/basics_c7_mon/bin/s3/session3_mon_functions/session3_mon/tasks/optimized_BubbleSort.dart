
import 'dart:io';

void main(){
  ///null Safety on
  List<int> arr1 = [9,6,5,4,2,1,7,3,8];
  optimiazbubblesort(arr1);
}
void optimiazbubblesort(List<int> arr){
  for (int i = 1; i < arr.length; i++) {
    bool is_swap = false;
    for (int j = 0; j < arr.length-1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        is_swap = true;
      }
    }

    for(int i = 0; i < arr.length ; i++){
      int o = arr[i];
      stdout.write(' $o ');
    }
    print('Is swapped ? $is_swap');
    if (!is_swap) break;
  }
}