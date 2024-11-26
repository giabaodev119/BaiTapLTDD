class DienThoai {
  String _maDT;
  String _tenDt;
  String _hangSX;
  double _giaNhap;
  double _giaBan;
  int _soLuongTon;
  bool _trangThai;

  DienThoai(this._maDT, this._tenDt, this._hangSX, this._giaNhap, this._giaBan,
      this._soLuongTon, this._trangThai) {
    maDT = _maDT;
    tenDT = _tenDt;
    hangSX = _hangSX;
    giaNhap = _giaNhap;
    giaBan = _giaBan;
    soLuongTon = _soLuongTon;
  }

  String get maDT => _maDT;
  String get tenDT => _tenDt;
  String get hangSX => _hangSX;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get soLuongTon => _soLuongTon;
  bool get trangThai => _trangThai;

  set maDT(String value) {
    if (value.isEmpty || !RegExp(r'^DT-\d{3}$').hasMatch(value)) {
      throw ArgumentError(
          'Mã điện thoại không hợp lệ. Định dạng phải là "DT-XXX".');
    }
    _maDT = value;
  }

  set tenDT(String value) {
    if (value.isEmpty) {
      throw ArgumentError('Tên điện thoại không được để trống.');
    }
    _tenDt = value;
  }

  set hangSX(String value) {
    if (value.isEmpty) {
      throw ArgumentError('Hãng sản xuất không được để trống.');
    }
    _hangSX = value;
  }

  set giaNhap(double value) {
    if (value <= 0) {
      throw ArgumentError('Giá nhập phải lớn hơn 0.');
    }
    _giaNhap = value;
  }

  set giaBan(double value) {
    if (value <= _giaNhap) {
      throw ArgumentError('Giá bán phải lớn hơn giá nhập.');
    }
    _giaBan = value;
  }

  set soLuongTon(int value) {
    if (value < 0) {
      throw ArgumentError('Số lượng tồn kho phải lớn hơn hoặc bằng 0.');
    }
    _soLuongTon = value;
  }

  set trangThai(bool value) {
    _trangThai = value;
  }

  double tinhLoiNhuan() {
    return _giaBan - _giaNhap;
  }

  void hienThiThongTin() {
    print('Mã điện thoại: $_maDT');
    print('Tên điện thoại: $_tenDt');
    print('Hãng sản xuất: $_hangSX');
    print('Giá nhập: $_giaNhap');
    print('Giá bán: $_giaBan');
    print('Số lượng tồn kho: $_soLuongTon');
    print('Trạng thái: ${_trangThai ? 'Còn kinh doanh' : 'Ngừng kinh doanh'}');
    print('Lợi nhuận dự kiến: ${tinhLoiNhuan()}');
  }

  bool coTheBan() {
    return _soLuongTon > 0 && _trangThai;
  }
}
