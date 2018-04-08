class House {
  // Private variable
  int _age = 0;

  // Public variable
  String color = 'White';
  int width = 0;
  int length = 0;


  // Get function
  /*
  int footage() {
    return width * length;
  }
  */
  int get footage => width * length;
  int get yearsold => _age;

  // Set function
  set yearsold(int years) => _age = years + 10;
}