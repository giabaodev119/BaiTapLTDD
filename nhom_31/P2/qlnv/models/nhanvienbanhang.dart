import 'nhanvien.dart';

class Nhanvienbanhang extends Nhanvien {
  double _doanhSo;
  double _hoaHong;

  Nhanvienbanhang(String maNV, String hoTen, double luongCoBan,
      double this._doanhSo, double this._hoaHong)
      : super(maNV, hoTen, luongCoBan);

  double get doanhSo => _doanhSo;
  double get hoaHong => _hoaHong;

  set doanhSo(double doanhSo) {
    if (doanhSo >= 0) {
      _doanhSo = doanhSo;
    }
  }

  set hoaHong(double hoaHong) {
    if (hoaHong >= 0 && hoaHong <= 1) {
      _hoaHong = hoaHong;
    }
  }

  @override
  double tinLuong() {
    // TODO: implement tinLuong
    return luongCoBan + doanhSo * hoaHong;
  }

  @override
  void hienThiThongTin() {
    // TODO: implement hienThiThongTin
    super.hienThiThongTin();
    print("Doanh số: $doanhSo");
    print("Hoa hồng: $hoaHong");
  }
}
