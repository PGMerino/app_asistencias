class Profesor {
  String nombre;
  String password;
  String email;

  Profesor({
    required this.nombre,
    required this.password,
    required this.email
  });
}

List<Profesor> Profes =
[
  new Profesor(nombre: "nombre", password: "password", email: "email"),
  new Profesor(nombre: "nombre", password: "password", email: "email"),
  new Profesor(nombre: "nombre", password: "password", email: "email")
];