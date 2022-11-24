
void main(){
  ///null Safety on
  List<int> arr1 = [8,2,0,9,9];
  var x = calculateEven(arr1);
  print('Sum Even = $x');
}
int calculateEven(List<int> arr){
 int sum = 0;
  for(int i = 0 ; i < arr.length - 1; i++){
    if(arr[i] % 2 == 0 ){
      sum  += arr[i];
    }
  }
  return sum;
}