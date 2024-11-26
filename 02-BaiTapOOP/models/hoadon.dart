import 'dienthoai.dart';

class HoaDon {
  String _maHD;
  DateTime _ngayBan;
  DienThoai _dtDaBan;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _sdtKhach;

  HoaDon(this._maHD, this._ngayBan, this._dtDaBan, this._soLuongMua,
      this._giaBanThucTe, this._tenKhachHang, this._sdtKhach) {
    maHD = _maHD;
    ngayBan = _ngayBan;
    soLuongMua = _soLuongMua;
    giaBanThucTe = _giaBanThucTe;
    tenKhachHang = _tenKhachHang;
    sdtKhach = _sdtKhach;
  }

  String get maHD => _maHD;
  DateTime get ngayBan => _ngayBan;
  int get soLuongMua => _soLuongMua;
  double get giaBanThucTe => _giaBanThucTe;
  String get tenKhachHang => _tenKhachHang;
  DienThoai get dtDaBan => _dtDaBan;
  String get sdtKhach => _sdtKhach;

  set maHD(String value) {
    if (value.isEmpty || !RegExp(r'^HD-\d{3}$').hasMatch(value)) {
      throw ArgumentError(
          'Mã hóa đơn không hợp lệ. Định dạng phải là "HD-XXX".');
    }
    _maHD = value;
  }

  set ngayBan(DateTime value) {
    if (value.isAfter(DateTime.now())) {
      throw ArgumentError('Ngày bán không được sau ngày hiện tại.');
    }
    _ngayBan = value;
  }

  set soLuongMua(int value) {
    if (value <= 0 || value > _dtDaBan.soLuongTon) {
      throw ArgumentError(
          'Số lượng mua phải lớn hơn 0 và không vượt quá tồn kho.');
    }
    _soLuongMua = value;
    _dtDaBan.soLuongTon -= value; // Cập nhật tồn kho sau khi bán
  }

  set giaBanThucTe(double value) {
    if (value <= 0) {
      throw ArgumentError('Giá bán thực tế phải lớn hơn 0.');
    }
    _giaBanThucTe = value;
  }

  set tenKhachHang(String value) {
    if (value.isEmpty) {
      throw ArgumentError('Tên khách hàng không được để trống.');
    }
    _tenKhachHang = value;
  }

  set sdtKhach(String value) {
    if (!RegExp(r'^\d{10,11}$').hasMatch(value)) {
      throw ArgumentError('Số điện thoại khách không hợp lệ.');
    }
    _sdtKhach = value;
  }

  // Phương thức tính tổng tiền
  double tinhTongTien() {
    return _giaBanThucTe * _soLuongMua;
  }

  // Phương thức tính lợi nhuận thực tế
  double tinhLoiNhuanThucTe() {
    double loiNhuanMotSanPham = _giaBanThucTe - _dtDaBan.giaNhap;
    return loiNhuanMotSanPham * _soLuongMua;
  }

  // Phương thức hiển thị thông tin hóa đơn
  void hienThiThongTinHoaDon() {
    print('Mã hóa đơn: $_maHD');
    print('Ngày bán: $_ngayBan');
    print('Tên điện thoại: ${_dtDaBan.tenDT}');
    print('Số lượng mua: $_soLuongMua');
    print('Giá bán thực tế: $_giaBanThucTe');
    print('Tên khách hàng: $_tenKhachHang');
    print('Số điện thoại khách: $_sdtKhach');
    print('Tổng tiền: ${tinhTongTien()}');
    print('Lợi nhuận thực tế: ${tinhLoiNhuanThucTe()}');
  }
}
