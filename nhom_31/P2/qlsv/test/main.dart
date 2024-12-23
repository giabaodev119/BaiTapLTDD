import '../models/LopHoc.dart';
import '../models/SinhVien.dart';

void main() {
  // var sv = SinhVien("Nguyen Van A", 8.5, "SV001", 20);
  // print(sv.hoTen);
  // sv.hienThiThongTin();
  // sv.hoTen = "Nguyen Van B";
  // sv.hienThiThongTin();
  // sv.hoTen = "";
  // sv.hienThiThongTin();

  // print(sv.xetDiemTB());

  var lopHoc = Lophoc("21DTHF1");
  lopHoc.themSinhVien(SinhVien("Nguyen Van A", 8.5, "SV001", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van B", 8.5, "SV002", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van C", 8.5, "SV003", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van D", 8.5, "SV004", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van E", 8.5, "SV005", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van F", 8.5, "SV006", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van G", 8.5, "SV007", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van H", 8.5, "SV008", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van J", 8.5, "SV009", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van K", 8.5, "SV010", 20));
  lopHoc.themSinhVien(SinhVien("Nguyen Van L", 8.5, "SV011", 20));

  lopHoc.hienThiDanhSach();
}
