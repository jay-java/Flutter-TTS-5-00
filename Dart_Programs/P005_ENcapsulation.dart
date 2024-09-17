class Employee {
  int? _id;
  String? _name;
  double? _salary;
  Employee() {}
  Employee.named(int id, String name, double salary) {
    this._id = id;
    this._name = name;
    this._salary = salary;
  }
  void setId(int id) {
    this._id = id;
  }

  void setName(String name) {
    this._name = name;
  }

  void setSalary(double salary) {
    this._salary = salary;
  }

  int? getId() {
    return _id;
  }

  String? getName() {
    return _name;
  }

  double? getSalary() {
    return _salary;
  }

  @override
  String toString() {
    return "id : $_id name : $_name salary : $_salary";
  }
}

void main(List<String> args) {
  Employee e1 = new Employee();
  e1.setId(12);
  e1.setName('dart');
  e1.setSalary(345343.3453);
  print(e1);
  // print(e1.getId());
  // print(e1.getName());
  // print(e1.getSalary());
}
