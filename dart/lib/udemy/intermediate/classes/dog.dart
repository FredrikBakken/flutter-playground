
class Dog {
  // Class variables
  int age = 1;
  String name = 'Fido';

  // Class constructor
  Dog({int age = null, String name = null}) {
    if (age != null && name != null) {
      this.age = age;
      this.name = name;
    }
  }

  // Class function
  int ageInDogYears() {
    return age * 7;
  }
}