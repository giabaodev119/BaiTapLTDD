//Lop SV

class SinhVien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;

  //contructer

  SinhVien(this._hoTen, this._diemTB, this._maSV, this._tuoi);

  //Getter

  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  //Setter

  set hoTen(String hoTen) {
    if (hoTen.isEmpty) return;
    _hoTen = hoTen;
  }

  set tuoi(int tuoi) {
    _tuoi = (tuoi > 0) ? tuoi : _tuoi;
  }

  set maSV(String maSV) {
    if (maSV.isNotEmpty && maSV.length > 0) _maSV = maSV;
  }

  set diemTB(double diemTB) {
    if (diemTB < 0 && diemTB > 10) {
      return;
    }
    _diemTB = diemTB;
  }

  void hienThiThongTin() {
    print("Họ tên:$hoTen");
    print("Tuổi:$tuoi");
    print("MSSV:$maSV");
    print("Điểm trung bình:$diemTB");
  }

  String xetDiemTB() {
    if (_diemTB >= 8) return "gioi";
    if (_diemTB >= 6.5) return "kha";
    if (_diemTB >= 5.0)
      return "trung binh";
    else
      return "yeu";
  }
}
