
void main(){
  ///null Safety on
  List<int> arr1 = [1,1,2,2,2,2,2,2,5,8,8,8,8];
  countGeneral(arr1);
}
void countGeneral(List<int> arr){
  for(int i = 0 ; i < arr.length ; i++){
    int counter = 0;
    int o = arr[i];
    for(int j = 0 ; j < arr.length  ; j++)
      {
        if(arr[i] == arr[j]){
          counter ++;
        }
      }
    for(int j = 0 ; j < arr.length-1  ; j++)
    {
      if(arr[i] == arr[i+1] ) arr.removeAt(i);
    }

    print('Occurrences of Number $o =  $counter');

  }
}