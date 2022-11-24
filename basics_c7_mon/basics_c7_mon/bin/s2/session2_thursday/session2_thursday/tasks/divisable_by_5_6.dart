import 'dart:io';

void main(){
  ///null Safety on
   int i = 100;
   while(i < 1000){
     if(i % 5 == 0 && i % 6 == 0){
       stdout.write(' $i ');
     }
     i++;
   }

}