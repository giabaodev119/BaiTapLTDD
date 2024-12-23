import '../models/nhanvien.dart';
import '../models/nhanvienbanhang.dart';

void main() {
  var nv = Nhanvien("NV01", "Nguyen Van A", 500000);
  print("Nhân viên thông thường: ");
  nv.hienThiThongTin();

  var nv1 = Nhanvienbanhang("NV02", "Nguyễn Văn B", 500000, 2000000, 0.5);
  print("Nhân viên bán hàng:");
  nv1.hienThiThongTin();

  nv1.doanhSo = 60000000;
  print("Lương sau khi thay đổi doanh số:");
  nv1.hienThiThongTin();
}
