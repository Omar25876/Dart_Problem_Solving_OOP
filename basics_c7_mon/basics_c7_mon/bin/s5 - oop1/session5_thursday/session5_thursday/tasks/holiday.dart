main(){
  ///null Safety on
  Holiday h1 = Holiday('omar','may' , 18);
  Holiday h2 = Holiday('ali','may' , 15);
  bool x = Holiday.inSameMonth(h1, h2);
  List<Holiday> holi = [h1,h2];
  double y = Holiday.aveDate(holi);
  print('the same Month ? $x');
  print(' Average Of the Day =  $y');
  print('====================================================');
  Holiday independanceDay = Holiday('Independence Day', 'July', 4 );
  independanceDay.viewall();

}

class Holiday{
  String? name;
  int? day;
  String? month;

  Holiday(this.name,this.month,this.day);

  static bool inSameMonth(Holiday h1  ,  Holiday h2)
  {
      if(h1.month == h2.month )
      {
        return true;
      }else{
        return false;
      }
  }

  static double aveDate(List<Holiday> holiday)
  {
    int counter1 = 0;
    int sum =0;
    double average =0;
    for(int i = 0 ; i<holiday.length;i++ ){
      counter1++;
      sum = sum + holiday[i].day!;
    }
    average = sum / counter1;
    return average;
  }

  void viewall() {
    print('Name =  $name');
    print('Day =  $day');
    print('Month =  $month');
  }
}