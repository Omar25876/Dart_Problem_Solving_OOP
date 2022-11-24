import 'dart:io';

void main(){
  //null safety is on
  stdout.write('Please, Enter the Letter =  ');
 String letter = stdin.readLineSync()!.toLowerCase();

 switch(letter){
   case ('a'):{
     print('The alphabet is a vowel.');
   }
   break;
   case ('l'):{
     print('The alphabet is a vowel.');
   }
   break;
   case ('o'):{
     print('The alphabet is a vowel.');
   }
   break;
   case ('u'):{
     print('The alphabet is a vowel.');
   }
   break;
   case ('e'):{
     print('The alphabet is a vowel.');
   }
   break;
   default:{
     print('The alphabet is a consonant.');
   }
 }

}