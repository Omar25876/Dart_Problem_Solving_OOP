
void main(){
  ///null Safety on
  List<int> arr1 = [1,1,2,2,2,2,2,2,4,8,6,2,4,5,1,2,5,2];
  int x = count2(arr1);
  print('Occurrences of number [2]  = $x');
}
int count2(List<int> arr){
  int counter = 0;
  for(int i = 0 ; i < arr.length ; i++){
    if(arr[i] == 2 ){
      counter ++;
    }
  }
  return counter;
}