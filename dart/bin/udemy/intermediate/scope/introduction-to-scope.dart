
// import 'package:dart/udemy/intermediate/scope/intro-scope.dart';
import 'package:dart/udemy/intermediate/scope/animal.dart';

main() {
  Animal dog = new Animal('Bent');
  print(dog.name);


  for (int i = 0; i < 10; i++) {
    print(i);

    if (i < 8) {
      // int i = 5;

      if (i > 4) {
        print('i is < 8 and > 4');
      }
    }
  }
}
