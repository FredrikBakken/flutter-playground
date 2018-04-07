import 'colorerror.dart';


void catchError() {
  print('Starting...');

  try { // Try
    print('Trying...');
    test a;
    print('test: $test');
  } catch (e) { // Catch
    print('Error: ' + e.toString());
  } finally { // Finally
    print('Done!');
  }
}


void raiseError(int a, int b) {
  try {
    // Throw an error
    if(a != b) {
      throw 'not the same';
    }
  } catch (e) {
    // Do something
    print('Something went boom: ' + e.toString());
    a = b;
  } finally {
      print('Completed');
  }
}


void internal() {
  throw 'nope';
}

void outer() {
  try {
    internal();
  } catch (e) {
    print('Program failed: ' + e.toString());
  }
}


enum Color { black, white, brown }
void cats(Color color) {
  try {
    if (color != Color.black) {
      throw new ColorError('Must be black!');
    }
      print('Pet the cat!');
    
    // cat a;
    // print('testing $cat');

  } on ColorError catch (e) {
    print('You selected the wrong color.');
  } catch (e) {
    print('Unknown Error: ' + e.toString());
  } finally {
    print('Done!');
  }
}


main(List<String> arguments) {
  catchError();
  raiseError(1, 2);
  outer();
  cats(Color.black);
}