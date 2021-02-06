import 'package:flutter/material.dart';

//리다이렉팅
class Person3{
  String name;
  int age;

  Person3(this.name, this.age){
    print('person3 name:$name, age:$age');
  }

  Person3.initName(String name) : this(name, 20);
}

//팩토리
class Person2{
  Person2.init();

  factory Person2(String type){
    switch (type){
      case 'Student':
        return Student2();
      case 'Employee':
        return Employee();
    }
  }

  String getType(){
    return 'Person';
  }
}

class Student2 extends Person2{
  Student2() : super.init();

  @override
  String getType(){
    return 'Student';
  }
}

class Employee extends Person2{
  Employee() : super.init();

  @override
  String getType(){
    return 'Employee';
  }
}

class Person{
  String name;
  int age;

  //이름없는 생성자
  Person() //생성자
      : name='tt', age = 5{ //초기화
   print('person 이름없는 생성자 name:$name, age:$age');
  }

  //이름있는 생성자
  Person.init(this.name, this.age){
    print('person.init 이름있는 생성자 name:$name, age:$age');
  }
}

class Student extends Person{
  Student(){
    print('Student 이름없는 생성자 자신 name:${this.name} 자신 age:${this.age} 부모 name:${super.name} 부모 age:${super.age}');
  }
}

void main(){
  String name = '홍길동';
  int age = 152;

  var person = Person();
  print('person 이름:${person.name} 나이:${person.age}');
  print('------------------------------------------------');

  var personInit = Person.init(name, age);
  print('person2 이름:${personInit.name} 나이:${personInit.age}');
  print('------------------------------------------------');

  var student = Student();
  print('------------------------------------------------');

  var student2 = Person2('Student');
  var employee = Person2('Student');

  print('type = ${student2.getType()}');
  print('type = ${employee.getType()}');

  print('------------------------------------------------');

  var person3 = Person3.initName('kim');

}

/*
import 'package:flutter/material.dart';

void main() {
  String my_name = 'Park';
  int my_age = 39;
  String my_location = "Daejeon";

  Class_A class_A = Class_A(my_name, my_age, my_location);
  class_A.printInfo();

  Class_B class_B = Class_B(age: my_age, name: my_name);
  class_B.printInfo();

  Class_C class_c1 = Class_C(name: my_name, age: my_age, location: my_location);
  class_c1.printInfo();
  Class_C class_c2 = Class_C(name: my_name, age: my_age);
  class_c2.printInfo();
  Class_C class_c3 = Class_C(name: my_name);
  class_c3.printInfo();

  Class_D class_d1 = Class_D(my_name, age: my_age, location: my_location);
  class_d1.printInfo();
  Class_D class_d2 = Class_D(my_name, location: my_location);
  class_d2.printInfo();
}

//필수인자, 순서상관있음
class Class_A {
  String name;
  int age;
  String location;

  //1번 방법
  */
/*Class_A(String name, int age, String location) {
    //this.name = name;
    //this.age = age;
    //this.location = location;
  }*//*


  //2번 방법
  Class_A(this.name,this.age,this.location);

  void printInfo() {
    print('<Class_A> name: $name, age: $age');
  }
}

//가변인자, 순서상관없음
class Class_B {
  String name;
  int age;
  String location;

  Class_B({this.name, this.age, this.location});

  void printInfo() {
    print('<Class_B> name: $name, age: $age , location: $location');
  }
}

//가변인자, 순서상관없음
class Class_C {
  String name;
  int age;
  String location;

  Class_C({this.name, this.age, this.location});

  void printInfo() {
    print('<Class_C> name: $name, age: $age, location: $location');
  }
}

//가변인자, 순서상관없음, required는 있어도 작동함(assert 추가 필요)
class Class_D {
  String name;
  int age;
  String location;

  //1번
  */
/*Class_D(String name, {this.age, @required this.location})
      : assert(location != null){
    this.name = name;
  }*//*


  //2번
  Class_D(this.name, {this.age, @required this.location})
      : assert(location != null);

  void printInfo() {
    print('<Class_D> name: $name, age: $age, location: $location');
  }
}*/
