import 'suv.dart';

main(List<String> arguments) {
  Suv jeep = new Suv();
  jeep.honkHorn();
  jeep.playMusic();
  print(jeep.doors());
  print(jeep.color());
}