//! 1. OOP - Object Oriented 
//! 2. Vậy đối tượng là gì?
// Hiểu đơn giản đối tượng là 1 thực thể, sinh vật, đồ vật, ...
// sở hữu những tính chất và có thể có hành động khác nhau

// ví dụ: Car, People, Employee, Student, Animal
// Trong một đối tượng sẽ có các attribute (field, properties) và các method,
// có thể hiểu attribute các thuộc tính, tính chất
// và method là các phương thức, chức năng mà đối tượng đó có thể làm.
//! 3. Class
// Lớp là một bản thiết kế cho đối tượng. Class định nghĩa các thuộc tính (attribute) và phương thức (method) mà đối tượng sẽ có.
// Trong Dart, bạn tạo một lớp bằng cách sử dụng từ khóa class.
// class Person {
//   //! 4. Properties
//   // Là các biến bạn khai báo trong class
//   // để định nghĩa các thuộc tính (tính chất, đặc điểm) mà class đó có
//   final String name;
//   final int age;
//   final double height;
//   final String nationality;
// //! 5. Constructor
//   // Constructor là một hàm đặc biệt được gọi khi một đối tượng mới của lớp được tạo ra.
//   // Bạn có thể sử dụng constructor để khởi tạo giá trị cho các thuộc tính của đối tượng.
//   // Constructor mặc định trong Dart là một hàm có tên trùng với tên của lớp
//   Person(this.name, this.age, this.height, this.nationality);
// //! 6. Method
//   // Method là một hàm (function) được định nghĩa bên trong class
//   // và hoạt động trên các đối tượng của class đó

//   // Method trong Dart tương tự như các hàm bình thường,
//   // nhưng chúng có thể truy cập và thao tác với các thuộc tính (properties) của đối tượng mà chúng thuộc về.
//   void sayHello() {
//     print('Hello, my name is $name and I am $age years old.');
//   }

//   void snore() {
//     print("zzz.zzzzz....zzzzz...zzz");
//   }
// }
// //! 7. Đối tượng
// // Đối tượng là một thể hiện cụ thể của một lớp
// // Bạn có thể tạo nhiều đối tượng từ cùng một lớp,
// // và mỗi đối tượng có thể có các giá trị thuộc tính riêng biệt.
// void main(List<String> args) {
//   // Object là 1 phiên bản hiện hữu của class, có thể gọi là instance
//   // Khởi tạo đối tượng chính là tạo ra 1 đối tượng mới bằng cách gọi hàm khởi tạo () của Class đó
//   var alice = Person('alice', 30, 170, "USA");
//   var huy = Person('Huy', 26, 175, "Vietnam");
//   alice.sayHello(); // In ra: Hello, my name is Alice and I am 30 years old.
//   huy.sayHello();
// }
// //! 8. Bài tập
// //? Bài tập 1: Quản lý thông tin nhân viên
// // Yêu cầu:
// //?  - Tạo một lớp Employee với các thuộc tính: name, age, và position.
// //?  - Tạo một constructor để khởi tạo các thuộc tính.
// //?  - Tạo một phương thức displayInfo() để in thông tin nhân viên.
//  void main(List<String> args) {
//    final employee1 = Employee("Huy", 26, "Flutter developer");
//    employee1.displayInfo();
//    final employee2 = Employee("Việt", 25, "Mobile developer");
//    employee2.displayInfo();
//  }
// class Employee{
//   String name;
//   int age;
//   String position;

//   Employee(this.name,this.age,this.position);

//   void displayInfo(){
//     print("Nhân Viên : $name , Tuổi $age , Position $position");
//   }
// }
//! Bài tập về tính Đóng gói 
// class BankAccount {
//   final String _accountNumber;
//   double _balance;

//   BankAccount(this._accountNumber, this._balance);

//   // Getter cho số tài khoản
//   String get bankNumber => _accountNumber;

//   // Getter cho số dư
//   double get totalBalance => _balance;

//   // Method để gửi tiền
//   void deposit(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }

//   set depositVer2(double amount){
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }

//   // Method để rút tiền
//   void withdraw(double amount) {
//     if (amount > 0 && amount <= _balance) {
//       _balance -= amount;
//     }
//   }

//   set withdrawVer2(double amount){
//     if (amount > 0 && amount <= _balance) {
//       _balance -= amount;
//     }
//   }
// }

// class Car {
  
//   String _brand;
//   String _model;
//   int _year;

//   Car(this._brand,this._model,this._year);

//   void 

//? Kế thừa (Inheritance)
// Kế thừa cho phép một lớp mới (lớp con - subclass) kế thừa các thuộc tính và phương thức của một lớp hiện có (lớp cha - superclass)
// Điều này giúp tái sử dụng mã và tạo ra các cấu trúc lớp phức tạp hơn từ các lớp cơ bản.
//? Cách hoạt động:
// - Sử dụng từ khóa extends để định nghĩa một lớp con kế thừa từ lớp cha.
// class Animal {
//   void eat() {
//     print('Animal is eating');
//   }

//   void run() {
//     print('Animal is running');
//   }
// }
// class Cat extends Animal {
//   @override
//   void eat() {
//     print("A cat is eating a fish");
//   }

//   void meow() {
//     print('Dog is meoww...');
//   }

//   @override
//   void run() {
//     print("A cat runs and jumps");
//   }
// }
// class Dog extends Cat {
//   void bark() {
//     print('Dog is barking');
//   }
// }

// class Employee {
//   String name;
//   int age;
//   Employee(this.name,this.age, );
//   void work(){
   
//   }
  
// }
// class Manager extends Employee {
//   Manager(super.name, super.age,);
  
//   @override
//   void work() {
//     print('Managing projects');
//     super.work();
//   }
// }
// class Developer extends Employee {
//   Developer( super.name,  super.age);
  
//   @override
//   void work() {
//     print('writing code');
//     super.work();
//   }
// }
// void main(){
//   final employee =Employee( 'a', 10, );
//   final manager =Manager('b',  10);
//   manager.work();
//   final deveper =Developer( 'c',  30);
//   deveper.work();
// }

// //! Đóng gói (Encapsulation)
// class BankAccount {
//   final String _accountNumber;
//   double _balance;
//   bool _isShowingBalance;

//   BankAccount(this._accountNumber, this._balance,
//       [this._isShowingBalance = false]);
// // Getter cho số dư
//   String get balance => _isShowingBalance ? _balance.toString() : "*********";

//   // Getter cho số tài khoản
//   String get bankNumber => _accountNumber;

//   set deposit2(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }
// set isShowingBalance(bool newValue) => _isShowingBalance = newValue;

//   set withdraw2(double amount) {
//     if (amount > 0 && amount <= _balance) {
//       _balance -= amount;
//     }
//   }
// // Method để gửi tiền
//   void deposit(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }

//   // Method để rút tiền
//   void withdraw(double amount) {
//     if (amount > 0 && amount <= _balance) {
//       _balance -= amount;
//     }
//   }
// }
// class Employee {
//   final String _id;
//   double _salary;

//   Employee(this._id, this._salary);

//   //! id
//   // get: để lấy giá trị
//   String get idEmployee => _id;
//   // set: ko thể gán giá trị mới do đó ko có set

//   // get
//   double get salary => _salary;

//   set salaryImporting(double amount) => _salary = _salary + amount;
// }
// // final huyBankAccount = BankAccount("666888999", 9000);
//   // print("Stk: ${huyBankAccount.bankNumber}");
//   // print("Số dư: ${huyBankAccount.balance}");
// // huyBankAccount.isShowingBalance = true;
//   // print("Số dư: ${huyBankAccount.balance}");
// // // deposit
//   // print("Nạp 1000");
//   // huyBankAccount.deposit(1000);
//   // print("Số dư: ${huyBankAccount.balance}");
// // // deposit ver 2 sử dụng set
//   // print("Nạp 2000");
//   // huyBankAccount.deposit2 = 2000;
//   // print("Số dư: ${huyBankAccount.balance}");
// // // withdraw
//   // print("Rút 500");
//   // huyBankAccount.withdraw(500);
//   // print("Số dư: ${huyBankAccount.balance}");
// // // withdraw ver 2 sử dụng set
//   // print("Rút 200");
//   // huyBankAccount.withdraw2 = 200;
//   // print("Số dư: ${huyBankAccount.balance}");
//   // final employee = Employee("abc1", 0);
//   // print("id employee: ${employee.idEmployee}");
//   // print("salary employee: ${employee.salary}");
//   // employee.salaryImporting = 1234;
//   // print("salary employee: ${employee.salary}");
// }
