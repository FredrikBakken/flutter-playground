
main() {
  int age = 25;

  switch(age) {
    case 18:
      print('You are 18, you can vote!');
      break;

    case 21:
      print('You are 21, you are an adult (US)');
      break;
    
    case 25:
      print('You are 25, getting old!');
      break;
    
    default:
      print('Nothing special about this age');
      break;
  }

  print('Finished!');
}