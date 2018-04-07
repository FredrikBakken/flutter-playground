import 'dart:async';

Future<bool> longWait(String prefix) async {
  for(int i = 0; i < 5; i++) {
    print('$prefix $i');
  }
  return true;
}

Future testAsync() async {
  print('Starting');
  bool ret = await longWait('Async');
  print(ret);
  print('Done');
}

void testThen() {
  print('Starting');
  
  longWait('Then').then((bool value) {
    print('Done waiting');
  });

  print('Done');
}

void testChain() {
  print('Starting');
  
  Future f = longWait('Chains');
  f.then((bool value) {
    print('Done 1');
  }).then((bool value) {
    print('Done 2');
  }).then((bool value) {
    print('Done 3');
  });

  print('Done');
}

Future testMultiple() async {
  print('Starting');

  Future f1 = longWait('One');
  Future f2 = longWait('Two');
  Future f3 = longWait('Three');

  await Future.wait([f1, f2, f3]);

  print('Done');
}


main(List<String> arguments) {
  // testAsync();
  // testThen();
  // testChain();
  testMultiple();
}