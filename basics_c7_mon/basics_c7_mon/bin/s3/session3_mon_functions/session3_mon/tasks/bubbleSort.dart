
import 'dart:io';

void main(){
  ///null Safety on
  List<int> arr1 = [7,6,2,1,4,7,8,5,2,3,4];
  bubblesort(arr1);
}
void bubblesort(List<int> arr){
  int temp;
  for(int j = 0; j < arr.length ; j++) {
    for (int i = 0; i < arr.length -1; i++) {
      if (arr[i] > arr[i + 1]) {
        temp = arr[i + 1];
        arr[i + 1] = arr[i];
        arr[i] = temp;
      }
    }
  }
  print('Sorted Array : ');
  for(int i = 0; i < arr.length ; i++){
    int o = arr[i];
    stdout.write(' $o ');
  }

}