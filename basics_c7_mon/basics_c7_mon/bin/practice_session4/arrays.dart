import 'dart:io';

void printArray(List<int> arr){
  for(int i=0;i<arr.length;i++){
//    i ? index arr[i]-> value
    print(arr[i]);
  }
}
void readArrayFromUser(List<int> arr,int numOfValues){
  print('please enter $numOfValues values');
  for(int i=0;i<numOfValues;i++){
    int n = int.parse(stdin.readLineSync());
    arr.add(n);// insert new value
    // arr[0]-> access existing value
    // arr.insert(index, element)
  }
  // [1,2,7,3,4,5]
  //  0,1,2,4,5,6
  // most useful built in functions
}
//create function that takes array as input
// and returns the summition of it's values
int sumArray(List<int> arr){
  // [3,4,5,6] -> arr[i]
  //  0,1,2,3 -> i
  int sum = 0;
  for(int i=0;i<arr.length;i++){
    sum+= arr[i];
  }
  return sum;
}
// create a function that takes array as input
// return the max in array
int getMax(List<int> arr){
  int max = arr[0];// 3

  for(int i=0;i<arr.length;i++){
    if(max < arr[i]){
      max = arr[i];
    }
  }
  return max;
}
// search for a value inside array
// linear search
/// @arr array of integer to search in
/// @value is the value to search for
/// this function returns -1 of the value
/// to search in array is not found
/// and returns a valid index in-case the value
/// exists in array
/// Linear search algorithm with O(n) where n is the length of @arr
int search(List<int> arr, int value){
// [5,3,1,7,3,7,8]
//  0,1,2,3,4,5,6 -> indexes
//search for 8->
  for(int i=0;i<arr.length;i++){
    if(value == arr[i]){
      // arr[i] -> value , i-> index
      return i;
    }
  }
  // not found
  return -1;// -1 is not a valid
  // indicator that says we can't value
}
// linear search
/// this function searches for [value]
/// inside [arr] if the value was found
/// this function returns the index of the value
/// if it's not found returns -1
/// using binary search algorithm Log(n)
int binarySearch(List<int> arr, int value){
  int start= 0;
  int end = arr.length-1;

  while(start<=end){
    int mid = (start+end) ~/ 2;

    if(value == arr[mid]){
      return mid;
    }
    if(value < arr[mid]){
      end = mid-1;
    }
    else if(value > arr[mid]){
      start = mid+1;
    }
  }
  //value not found
  return -1;

}

void bubbleSort(List<int>arr){
  //           bubble    optimized-bubble
  //best case   n*n             n
  //worst case  n*n             n*n
  // most important -> worst case ->
  for(int i=0;i<arr.length;i++){ // repeat
    bool isSorted = true;
    for(int j=0;j<arr.length-1-i;j++){
      if(arr[j] > arr[j+1]){// is always false -> array is sorted
        // swap arr[j] arr[j+1]
        // swapping => not sorted
        isSorted = false;
        int temp = arr[j]; // temp= 10,
        arr[j]=arr[j+1];// x=20;
        arr[j+1]=temp;// 10
      }
    }
    if(isSorted){
      print(arr);
    }
  }
}

// getMinValueIndex -> search for min value in array
// and returns it's index
// input-> array


int getMinValueIndex(List<int>arr,int start)  {

 // [0,1,2, 9,5,7,4]
  // 0,1,2, 3,4,5,6 -> start 3
  // start -> where search starts from
  int min = arr[start];
  int index = start ;
  for(int i=start;i<arr.length;i++){
    if(min > arr[i]){
      // arr[i] -> i is index
      min = arr[i];
      index = i;
    }
  }
  return index;

}

void selectionSort(List<int>arr){

  for(int i=0;i<arr.length;i++){
    int minValueIndex = getMinValueIndex(arr,i);
    // swap min Value index with i element
    int temp = arr[i];
    arr[i] = arr[minValueIndex];
    arr[minValueIndex] = temp;
  }

}

void main(){
  // selection sort
  // binary search
  List<int> myArr = [5,3,2,1];
  selectionSort(myArr);


  bubbleSort(myArr);

  List<int> arr = []; // empty array
  readArrayFromUser(arr, 4);
  // int sum = sumArray(arr);
  // print('sumition of array = $sum');
  int max = getMax(arr);
  print('max value is $max');
  int index = search(arr,7);
  if(index==-1){
    // 7 not found
  }else {

  }
  // printArray(arr);
}