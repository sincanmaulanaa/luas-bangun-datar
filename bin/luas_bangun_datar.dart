import 'dart:io';
void main() {
  print("=============== Selamat Datang ===============\n"
      "==== Program Menghitung Luas Bangun Datar ====\n"
      "============ Sincan Maulana (1A) =============");

  for(var i = 1; i <= double.infinity; i++) {
    print("\nOpsi tersedia>");
    print("\t\t\t\t1. Hitung Luas Segitiga\n"
        "\t\t\t\t2. Hitung Luas Lingkaran\n"
        "\t\t\t\t3. Hitung Luas Persegi\n"
        "\t\t\t\t4. Hitung Luas Persegi Panjang\n"
        "\t\t\t\t5. Keluar dari Program");

    stdout.write("Masukkan pilihan sesuai nomor: ");
    var user = stdin.readLineSync()!;

    if(user == '1')
      segitiga();
    else if(user == '2')
      lingkaran();
    else if(user == '3')
      persegi();
    else if(user == '4')
      persegiPanjang();
    else if(user == '5') {
      print("Terima kasih telah menggunakan program ini!");
      exit(1);
    }
    else {
      print("Pilihan tidak tersedia.");
    }
    print("-----------------------------------------------");
  }
}

void segitiga() {
  stdout.write("Masukkan Alas: ");
  num alas = num.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Tinggi: ");
  num tinggi = num.parse(stdin.readLineSync()!);

  num luas =  0.5 * alas * tinggi;
  print("Hasil luas segitiga: $luas");
}

void lingkaran() {
  double phi = 3.14;

  stdout.write("Masukkan jari - jari: ");
  num r = num.parse(stdin.readLineSync()!);

  num luas = phi * r * r;
  print("Hasil luas lingkaran: $luas");
}

void persegi() {
  stdout.write("Masukkan sisi: ");
  num sisi = num.parse(stdin.readLineSync()!);

  num luas = sisi * sisi;
  print("Hasil luas persegi: $luas");
}

void persegiPanjang() {
  stdout.write("Masukkan panjang: ");
  num panjang = num.parse(stdin.readLineSync()!);

  stdout.write("Masukkan lebar: ");
  num lebar = num.parse(stdin.readLineSync()!);

  num luas = panjang * lebar;
  print("Hasil luas persegi panjang: $luas");
}