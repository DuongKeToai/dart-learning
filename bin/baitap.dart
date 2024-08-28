// //! Bài tập: Abstraction sử 
// //? Yêu cầu:
// //  - Tạo lớp trừu tượng Employee với các thuộc tính name và age.

// //  - Định nghĩa phương thức trừu tượng calculateSalary() trong lớp Employee.

// //  - Tạo lớp FullTimeEmployee kế thừa từ Employee với thuộc tính bổ sung monthlySalary
// //    và triển khai phương thức calculateSalary() trả về lương hàng tháng.

// //  - Tạo lớp PartTimeEmployee kế thừa từ Employee với thuộc tính bổ sung hourlyRate và hoursWorked.
// //    Triển khai phương thức calculateSalary() trả về lương dựa trên số giờ làm việc và mức lương theo giờ.

// //? Kết quả mong đợi:
// // In ra lương của nhân viên toàn thời gian và bán thời gian,
// // được tính toán dựa trên cách triển khai cụ thể trong từng lớp con.
// //! Giải bài tập Abstraction sử dụng extends: 
// void main(List<String> args) {
//   final fullTimeEmployee =
//       FullTimeEmployee(montlySalary: 10000000, age: 20, name: "Hùng");
//   print(
//       "Số lương của nhân viên full time ${fullTimeEmployee.name} là ${fullTimeEmployee.calculateSalary()}");

//   final partTimeEmployee = PartTimeEmployee(
//       hourlyRate: 50000, hoursWorked: 123, age: 22, name: "Huy");
//   print(
//       "Số lương của nhân viên part time ${partTimeEmployee.name} là ${partTimeEmployee.calculateSalary()}");
// }
// abstract class Employee {
//   String name;
//   int age;
//   Employee({required this.name, required this.age});

//   double calculateSalary();
// }
// class FullTimeEmployee extends Employee {
//   final double montlySalary;
//   FullTimeEmployee(
//       {required this.montlySalary, required super.age, required super.name});

//   @override
//   double calculateSalary() {
//     return montlySalary;
//   }
// }
// class PartTimeEmployee extends Employee {
//   final double hourlyRate;
//   final double hoursWorked;
//   PartTimeEmployee({
//     required this.hourlyRate,
//     required this.hoursWorked,
//     required super.age,
//     required super.name,
//   });

//   @override
//   double calculateSalary() {
//     return hoursWorked * hourlyRate;
//   }
// }
