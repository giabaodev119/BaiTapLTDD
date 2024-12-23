class Nhanvien {
  String _maNV;
  String _hoTen;
  double _luongCoBan;

  Nhanvien(this._maNV, this._hoTen, this._luongCoBan);

  String get maNV => _maNV;
  String get hoTen => _hoTen;
  double get luongCoBan => _luongCoBan;

  set maNV(String maNV) {
    if (maNV.isEmpty) return;
    _maNV = maNV;
  }

  set hoTen(String hoTen) {
    if (hoTen.isEmpty) return;
    _hoTen = hoTen;
  }

  set luongCoBan(double LCB) {
    _luongCoBan = (LCB > 0) ? LCB : _luongCoBan;
  }

  double tinLuong() {
    return _luongCoBan;
  }

  void hienThiThongTin() {
    print("Mã NV: $_maNV");
    print("Họ tên: $_hoTen");
    print("Lương cơ bản: $_luongCoBan");
    print("Tổng lương: ${tinLuong()}");
  }
}
