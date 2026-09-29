class Mahasiswa {
  final String nim;
  final String nama;
  String alamat; 
  String email;  
  String? hobi;  
  String? telepon; 
  double ipk;

  Mahasiswa({
    required this.nim,
    required this.nama,
    required this.alamat, 
    required this.email,  
    this.hobi,
    this.telepon,
    this.ipk = 0.0,
  });

  String getInfo(String targetNim) {
    if (nim == targetNim) {
      return '''
--- Data Mahasiswa ---
NIM     : $nim
Nama    : $nama
Alamat  : $alamat
Email   : $email
Hobi    : ${hobi ?? '-'}
Telepon : ${telepon ?? '-'}
IPK     : $ipk''';
    } else {
      return 'Data mahasiswa tidak ditemukan! NIM $targetNim tidak sesuai.';
    }
  }
}
