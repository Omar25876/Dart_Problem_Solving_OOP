void main(){
  int n=5;
 // fact(5) = 5*4*3*2*1 -> 120
 // fact 7 => 7*6 -> 1
 // n = 5;
  // 1,2,3,4,5
  int res = 1;
  for(int i=1;i<=n;i++){
    res = res * i;
  }
  print(res);

}