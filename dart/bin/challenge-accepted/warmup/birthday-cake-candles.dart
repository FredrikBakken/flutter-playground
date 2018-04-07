
import 'dart:math';


List<int> generateCandles(maxsize, maxvalue) {
  List<int> candles = new List<int>();
  Random randgen = new Random();

  for (int i = 0; i < maxsize; i++) {
    candles.add(randgen.nextInt(maxvalue));
  }
  return candles;
}


void numBlowCandles(List<int> candles) {
  // Find the value for the highest candle
  int maximum = 0;
  candles.forEach((candle) {
    if (candle > maximum) {
      maximum = candle;
    }
  });

  // Count number of highest candle
  int numCandles = 0;
  candles.forEach((candle) {
    if (maximum == candle) {
      numCandles++;
    }
  });

  // Print result
  print(numCandles);
  
}


main() {
    List<int> candles = generateCandles(20, 10);
    print(candles);
    numBlowCandles(candles);
}