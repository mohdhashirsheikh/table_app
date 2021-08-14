class Employee {
  String firstName;
  String lastName;
  int id;
  String email;

  Employee(
      {required this.firstName,
      required this.lastName,
      required this.id,
      required this.email});
  static List<Employee> getUsers() {
    return <Employee>[
      Employee(
          firstName: "Shubham",
          lastName: "B",
          id: 1001,
          email: "shubham.b@walkingtree.tech"),
      Employee(
          firstName: "HariKrishna",
          lastName: "S",
          id: 1001,
          email: "harikrishna.s@walkingtree.tech"),
      Employee(
          firstName: "Vishnu",
          lastName: "P",
          id: 1001,
          email: "vishnu.p@walkingtree.tech"),
      Employee(
          firstName: "Suman",
          lastName: "R",
          id: 1001,
          email: "Suman.r@walkingtree.tech "),
      Employee(
          firstName: "Prashanth",
          lastName: "K",
          id: 1001,
          email: "Prashanth.k@walkingtree.tech ")
    ];
  }
}
