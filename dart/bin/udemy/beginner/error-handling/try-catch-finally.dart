

main() {
  try {
    int age;
    int dogyears = 7;
    print(age * dogyears);
  } on NoSuchMethodError {
    print('Sorry, that will not happen');
  } catch (e) {
    print('There was an error: ${e}');
  } finally {
    print('Completed!');
  }
}