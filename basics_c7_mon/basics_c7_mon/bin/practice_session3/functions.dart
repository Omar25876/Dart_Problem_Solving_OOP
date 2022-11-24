// function declaration
// functionType functionName(parameters){
// function body }
import 'dart:io';

import 'dart:math';

///
///
///
///
///
int add(int n1,int n2,[int n3=0,int n4=0]){// optional positional
  int res = n1+n2+n3+n4;
  return res;
}
int subtract(int n1,int n2,{int n3,int n4}){//optional named
  return n1-n2;
}
// null safety
double getMax(double n1,double n2){
  subtract(10,20,n3: 0,n4: 0);
  add(10,20);
  add(10,20,30);
  add(10,20,30,40);

  // 5,10
  if(n1>n2)return n1;
  return n2;
}

// create a function that takes int n as input
// and calculates it's factorial
int calculateFact(int n){
  // i-> 1,2,3,4,5
  // n = 5
 // code readability
  int res =1;
  for(int i=1;i<=n;i++){
   res = res * i;
  }
  return res;
  // int i=1;
  // while(i<=n){
  //   res =res*i;
  //   i++;
  // }

}
// create isPrime function that takes a number
// as input and return if it's prime or not (bool)
bool isPrime(int n){
  // return true or false
  // 7-> 1,7
  int counter=0;
  for(int i=1;i<=n;i++){
    if(n%i==0){
       counter++;
    }
  }

  return counter==2;
  if(counter==2)return true;
  return false;
}
bool isPrimeV2(int n){
  // n = 7
  // 2,3,4,5,6
  if(n<2){
    return false;
  }
  //n=4 -> i=2 2

  for(int i=2;i<=sqrt(n);i++){
    if(n%i==0){// found a number that n is divisible by
      return false;
    }
  }
  return true;
}
// file 1000 -> 1000
// file-> to the end of file
int sumOfDigits(int n){
  int sum = 0;
  while(n!=0){
    int d = n%10;
    sum += d;
    n= n~/10;
  }
  return sum;
  // for(;n!=0;n= n~/10){
  //   int d = n%10;
  //   sum += d;
  // }
}
// endless calculator
// 17
// 0 -> end
int endlessSummition(){
//  1 2 3 5 6 7 0
  int sum = 0;
  int n = 1;// ?? null
  // do{
  //   n = int.parse(stdin.readLineSync());//10
  //   sum+=n;
  // }while(n!=0);

  while(n!=0){
    n = int.parse(stdin.readLineSync());//10
    sum+=n;
  }
  return sum;
}
// print even numbers from start to end
void printEvens(int start,int end){
  for(int i=start;i<=end;i++){
    if(i%2==0){
      print(i);
    }
  }
}
//
// * * * *
// * * * *
// * * * *
// * * * *
//n = 4
void printLineOfAsterisks(int n){
  for(int j=0;j<n;j++){
    stdout.write(' * ');
  }
  print('');

}

void printSquare(int n){
  for(int i=0;i<n;i++){// lines
    printLineOfAsterisks(n);
  }
}
// *
// * *
// * * *
// * * * *
void printTriangle(int n){
  for(int i=1;i <= n;i++){// for lines
     printLineOfAsterisks(i);
  }
}

void main(){
  printTriangle(20);
  printSquare(20);
  // prime number
  //  5 ,10;
 // printEvens(1,20000);
  //print(endlessSummition());
  //sumOfDigits(1892);
  //print('please enter number');
  //int n = int.parse(stdin.readLineSync());
  //int res = calculateFact(n);
  //print(res);
//  print(getMax(5,10));
 // int res = add(5,10);
 // print(res);
}




