//! 1. Tính trừu tượng
//? Cách hoạt động trong Dart:
//?   - Trừu tượng hóa được thực hiện thông qua các lớp trừu tượng (abstract classes)
//!   - Abstract class không thể được khởi tạo trực tiếp
//?      mà chỉ có thể làm lớp cha cho các lớp con.
//?   - Các lớp con sẽ kế thừa (extends) hoặc thực thi (implements) các phương thức trừu tượng từ abstract class cha.
//! 2. Abstract class
// abstract class là class trừu tượng, các class khác sẽ kế thừa hoặc thực thi từ class này.
// Mục đích của abstract class giống như 1 bản thiết kế
//  dùng để chỉ định các properties, method phải có trong class con, chứ ko quan tâm nội dung method
//! 3. extends
//? Các lớp con sẽ kế thừa (extends) các phương thức trừu tượng từ abstract class cha
//abstract class Vehicle {
  // Abstract Class có thể chứa các thuộc tính có hoặc không có giá trị khởi tạo.
  //int odometer;
  // Khi bạn định nghĩa thuộc tính của class, bạn bắt buộc phải có constructor
  //Vehicle({required this.odometer});
  // Vehicle({this.odometer = 10});

  // Bạn có thể định nghĩa các thuộc tính cụ thể trong abstract class và cung cấp giá trị khởi tạo cho chúng.
  // Các lớp con có thể kế thừa và sử dụng trực tiếp các thuộc tính này.

  // method chỉ khai báo tên, hoàn toàn ko có body
//  
//! 4. Interface
//! Đặc điểm Interface
// Khi sử dụng implements, lớp mới phải triển khai
// tất cả các phương thức và thuộc tính của Interface nó đang triển khai, ngay cả khi lớp đó đã có triển khai mặc định.
abstract class Animal {
  // Khi bạn định nghĩa thuộc tính trong lớp và sau đó sử dụng lớp này như một interface
  // các lớp thực hiện (implementing class) phải triển khai (thường là cung cấp giá trị cho)
  // tất cả các thuộc tính và phương thức được định nghĩa trong Interface.

  // Khác với abstract class, các thuộc tính trong interface dù có giá trị khởi tạo.
  // Lớp con thực hiện phải cung cấp giá trị cho các thuộc tính đó.

  String name;
  int age;
  Animal({
    this.name = "john",
    this.age = 1,
  });
  void makeSound(){
    print('Animal sound');
  }

  void sleep() {
    print('Animal is sleeping');
  }
}
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }

  @override
  void sleep() {
    print('Dog is sleeping');
  }

  @override
  int age;

  @override
  String name;

  Dog(this.name, this.age);
}