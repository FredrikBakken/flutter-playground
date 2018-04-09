

main() {
  try {
    int age;
    int dogyears = 8;
    
    if (dogyears != 7) {
      throw new Exception('\nDog years must be 7');
    }
    
    if (age == null) {
      throw new NullThrownError();
    }
    print(age * dogyears);
  } on NullThrownError {
    print('The value was null!');
  } on NoSuchMethodError {
    print('Sorry, no such method');
  } catch (e) {
    print('Unknown error: ${e}');
  } finally {
    print('Completed!');
  }
}