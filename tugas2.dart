import 'dart:io';


void main() {
  print('Pilih jenis konversi suhu:');
  print('1. Fahrenheit ke Celcius');
  print('2. Kelvin ke Celcius');
  print('3. Reamur ke Celcius ');
  stdout.write('Masukkan pilihan Anda (1/2/3): ');

  String choice = stdin.readLineSync()!;
  switch (choice) {
    case '1':
      stdout.write('Masukkan suhu dalam Fahrenheit: ');
      num suhuFahrenheit = num.parse(stdin.readLineSync()!);
      num suhuCelciusFromFahrenheit = fahrenheitToCelcius(suhuFahrenheit);
      print('$suhuFahrenheit derajat Fahrenheit = $suhuCelciusFromFahrenheit derajat Celcius');
      break;
    case '2':
      stdout.write('Masukkan suhu dalam Kelvin: ');
      num suhuKelvin = num.parse(stdin.readLineSync()!);
      num suhuCelciusFromKelvin = kelvinToCelcius(suhuKelvin);
      print('$suhuKelvin Kelvin = $suhuCelciusFromKelvin derajat Celcius');
      break;
    case '3':
      
      stdout.write('Masukkan suhu dalam Reamur: ');
      num suhuReamur = num.parse(stdin.readLineSync()!);
      num suhuCelciusFromReamur = reamurToCelcius(suhuReamur);
      print('$suhuReamur derajat Reamur = $suhuCelciusFromReamur derajat Celcius');
      break;
    default:
      print('Pilihan tidak valid!');
  }
}

num fahrenheitToCelcius(num fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

num reamurToCelcius(num reamur) {
  return reamur * 5 / 4;
}

num kelvinToCelcius(num kelvin) {
  return kelvin - 273.15;
}


