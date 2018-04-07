
import 'dart:math';


String randomtime(int maxsize) {
  Random randgen = new Random();
  int value = randgen.nextInt(maxsize);
  String time = '';

  // Structuring according to time standard
  if (value < 10) {
    time = '0' + value.toString();
  } else {
    time = value.toString();
  }

  return time;
}


String generateTime() {
  String hour = randomtime(12);
  String minute = randomtime(59);
  String second = randomtime(59);
  String period = 'AM';

  // Set time period
  Random randgen = new Random();
  if(randgen.nextBool()) {
    period = 'PM';
  }

  if (int.parse(hour) == 12 && int.parse(minute) > 0 && int.parse(second) > 0 && period == 'AM') {
    hour = '00';
  }

  // Return time string
  return '$hour:$minute:$second$period';
}


void convertTime(String time) {
  String period = time.substring(8, 10);
  time = time.replaceAll(period, '');
  List<String> timeparts = time.split(':');
  
  String hour = timeparts[0];
  String minute = timeparts[1];
  String second = timeparts[2];

  // Special cases
  if (period == 'AM' && hour == '12' && minute == '00' && second == '00') {
    print('00:00:00');
    return;
  } else if (period == 'PM' && hour == '12' && minute == '00' && second == '00') {
    print('12:00:00');
    return;
  }

  // PM times
  if (period == 'PM') {
    int h = int.parse(hour) + 12;
    print('$h:$minute:$second');
  } else {
    print('$hour:$minute:$second');
  }
}


main() {
  String time = generateTime();
  print(time);
  convertTime(time);
}