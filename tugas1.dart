import 'dart:io';

void main(){
  // Menerima input string
  stdout.write('Masukkan nama Anda: ');
  String? nama = stdin.readLineSync();
  stdout.write("Masukan Jurusan anda: ");
  String? jurusan = stdin.readLineSync();
  print('Haloooo,saya $nama dari $jurusan');

}