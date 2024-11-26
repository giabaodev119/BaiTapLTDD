import 'dienthoai.dart';
import 'hoadon.dart';

class CuaHang {
  String _tenCH;
  String _diaChi;
  List<DienThoai> _dsDT = [];
  List<HoaDon> _dsHD = [];

  CuaHang(this._tenCH, this._diaChi);

  String get tenCH => _tenCH;
  String get diaChi => _diaChi;

  set tenCH(String tenCH) {
    _tenCH = tenCH;
  }

  set diaChi(String diaChi) {
    _diaChi = diaChi;
  }

  // Thêm điện thoại mới
  void themDienThoai(DienThoai dienThoai) {
    _dsDT.add(dienThoai);
    print('Đã thêm điện thoại: ${dienThoai.tenDT}');
  }

  // Cập nhật thông tin điện thoại
  void capNhatDienThoai(String maDienThoai, DienThoai thongTinMoi) {
    var dienThoai = _dsDT.firstWhere((dt) => dt.maDT == maDienThoai,
        orElse: () => throw ArgumentError('Không tìm thấy mã điện thoại.'));
    dienThoai.tenDT = thongTinMoi.tenDT;
    dienThoai.hangSX = thongTinMoi.hangSX;
    dienThoai.giaNhap = thongTinMoi.giaNhap;
    dienThoai.giaBan = thongTinMoi.giaBan;
    dienThoai.soLuongTon = thongTinMoi.soLuongTon;
    dienThoai.trangThai = thongTinMoi.trangThai;
    print('Đã cập nhật thông tin điện thoại: ${dienThoai.tenDT}');
  }

  // Ngừng kinh doanh điện thoại
  void ngungKinhDoanhDienThoai(String maDienThoai) {
    var dienThoai = _dsDT.firstWhere((dt) => dt.maDT == maDienThoai,
        orElse: () => throw ArgumentError('Không tìm thấy mã điện thoại.'));
    dienThoai.trangThai = false;
    print('Điện thoại ${dienThoai.tenDT} đã ngừng kinh doanh.');
  }

  // Tìm kiếm điện thoại (theo mã, tên, hãng)
  List<DienThoai> timKiemDienThoai({String? ma, String? ten, String? hang}) {
    return _dsDT.where((dt) {
      return (ma != null && dt.maDT.contains(ma)) ||
          (ten != null && dt.tenDT.toLowerCase().contains(ten.toLowerCase())) ||
          (hang != null &&
              dt.hangSX.toLowerCase().contains(hang.toLowerCase()));
    }).toList();
  }

  // Hiển thị danh sách điện thoại
  void hienThiDanhSachDienThoai() {
    for (var dienThoai in _dsDT) {
      dienThoai.hienThiThongTin();
      print('-----------------------------');
    }
  }

  // Phương thức quản lý hóa đơn

  // Tạo hóa đơn mới
  void taoHoaDon(HoaDon hoaDon) {
    _dsHD.add(hoaDon);
    print('Đã tạo hóa đơn: ${hoaDon.maHD}');
  }

  // Tìm kiếm hóa đơn (theo mã, ngày, khách hàng)
  List<HoaDon> timKiemHoaDon({String? ma, DateTime? ngay, String? tenKhach}) {
    return _dsHD.where((hd) {
      return (ma != null && hd.maHD.contains(ma)) ||
          (ngay != null && hd.ngayBan.isAtSameMomentAs(ngay)) ||
          (tenKhach != null &&
              hd.tenKhachHang.toLowerCase().contains(tenKhach.toLowerCase()));
    }).toList();
  }

  // Hiển thị danh sách hóa đơn
  void hienThiDanhSachHoaDon() {
    for (var hoaDon in _dsHD) {
      hoaDon.hienThiThongTinHoaDon();
      print('-----------------------------');
    }
  }

  // Phương thức thống kê

  // Tính tổng doanh thu theo khoảng thời gian
  double tinhTongDoanhThu(DateTime tuNgay, DateTime denNgay) {
    return _dsHD
        .where(
            (hd) => hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay))
        .map((hd) => hd.tinhTongTien())
        .reduce((value, element) => value + element);
  }

  // Tính tổng lợi nhuận theo khoảng thời gian
  double tinhTongLoiNhuan(DateTime tuNgay, DateTime denNgay) {
    return _dsHD
        .where(
            (hd) => hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay))
        .map((hd) => hd.tinhLoiNhuanThucTe())
        .reduce((value, element) => value + element);
  }

  // Thống kê top điện thoại bán chạy
  List<Map<String, dynamic>> thongKeTopBanChay() {
    var thongKe = <String, int>{};
    for (var hoaDon in _dsHD) {
      var maDienThoai = hoaDon.dtDaBan.maDT;
      thongKe[maDienThoai] = (thongKe[maDienThoai] ?? 0) + hoaDon.soLuongMua;
    }

    var topBanChay = thongKe.entries
        .map((e) => {
              'maDienThoai': e.key,
              'tenDienThoai': _dsDT.firstWhere((dt) => dt.maDT == e.key).tenDT,
              'soLuongBan': e.value
            })
        .toList();

    // Ép kiểu rõ ràng
    topBanChay.sort(
        (a, b) => (b['soLuongBan'] as int).compareTo(a['soLuongBan'] as int));
    return topBanChay;
  }

  // Thống kê tồn kho
  void thongKeTonKho() {
    for (var dienThoai in _dsDT) {
      print(
          '${dienThoai.tenDT} (Mã: ${dienThoai.maDT}) - Tồn kho: ${dienThoai.soLuongTon}');
    }
  }
}
