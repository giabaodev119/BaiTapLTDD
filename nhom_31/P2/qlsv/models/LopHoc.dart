import 'SinhVien.dart';

class Lophoc {
  String _tenLop;
  List<SinhVien> _danhSachSV = [];

  Lophoc(this._tenLop);

  String get tenLop => _tenLop;
  List<SinhVien> get danhSachSV => _danhSachSV;

  set tenLop(String tenLop) {
    if (tenLop.isEmpty) return;
    _tenLop = tenLop;
  }

  void themSinhVien(SinhVien SV) => _danhSachSV.add(SV);

  void hienThiDanhSach() {
    print("\n\n -----------------");
    print("\n Danh sach sinh vien lop $_tenLop");
    for (var sv in _danhSachSV) {
      print("\n Thong tin");
      sv.hienThiThongTin();
      print("\n Xep loai: ${sv.xetDiemTB()}");
    }
  }
}
