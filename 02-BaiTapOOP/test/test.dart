import '../models/cuahang.dart';
import '../models/dienthoai.dart';
import '../models/hoadon.dart';

void main() {
  // try {
  //   var dienThoai = DienThoai(
  //     'DT-001',
  //     'iPhone 15',
  //     'Apple',
  //     20000000,
  //     25000000,
  //     10,
  //     true,
  //   );

  //   dienThoai.hienThiThongTin();

  //   print("\n ------------------------------ \n");

  //   // Tạo một hóa đơn mẫu
  //   var hoaDon = HoaDon(
  //     'HD-001',
  //     DateTime.now(),
  //     dienThoai,
  //     5,
  //     24000000,
  //     'Nguyen Van A',
  //     '0912345678',
  //   );

  //   hoaDon.hienThiThongTinHoaDon();

  //   print('Có thể bán không: ${dienThoai.coTheBan() ? 'Có' : 'Không'}');

  // } catch (e) {
  //   print('Lỗi: $e');
  // }
  var cuaHang = CuaHang('Cửa hàng ABC', '123 Đường XYZ');

  var dienThoai1 =
      DienThoai('DT-001', 'iPhone 15', 'Apple', 20000000, 25000000, 20, true);
  var dienThoai2 = DienThoai(
      'DT-002', 'Samsung Galaxy S23', 'Samsung', 18000000, 22000000, 15, true);

  cuaHang.themDienThoai(dienThoai1);
  cuaHang.themDienThoai(dienThoai2);

  cuaHang.hienThiDanhSachDienThoai();

  var hoaDon = HoaDon('HD-001', DateTime.now(), dienThoai1, 5, 24000000,
      'Nguyen Van A', '0912345678');
  cuaHang.taoHoaDon(hoaDon);

  cuaHang.hienThiDanhSachHoaDon();

  print(
      'Tổng doanh thu: ${cuaHang.tinhTongDoanhThu(DateTime(2023, 1, 1), DateTime(2024, 1, 1))}');
  print(
      'Tổng lợi nhuận: ${cuaHang.tinhTongLoiNhuan(DateTime(2023, 1, 1), DateTime(2024, 1, 1))}');

  var topBanChay = cuaHang.thongKeTopBanChay();
  print('Top điện thoại bán chạy:');
  for (var item in topBanChay) {
    print('${item['tenDienThoai']} - Số lượng bán: ${item['soLuongBan']}');
  }

  cuaHang.thongKeTonKho();
}
