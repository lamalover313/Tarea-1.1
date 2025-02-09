/*

 3. Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree
una lista de “empleados” y una función que calcule el salario total de todos los empleados y otra
que calcule el salario promedio

 */
void main() {
  List<Empleado> empleados = [
    Empleado(nombre: "Juan", puesto: "Doctor", salario: 30000),
    Empleado(nombre: "Ana", puesto: "Bombero", salario: 25000),
    Empleado(nombre: "Luis", puesto: "Gerente", salario: 40000),
    Empleado(nombre: "Maria", puesto: "Ingeniero Civil", salario: 28000),
  ];

  double salarioTotal = calcularSalarioTotal(empleados);
  print("Salario total de todos los empleados: \$${salarioTotal}");

  double salarioPromedio = calcularSalarioPromedio(empleados);
  print("Salario promedio de los empleados: \$${salarioPromedio}");
}

class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado({required this.nombre, required this.puesto, required this.salario});
}

double calcularSalarioTotal(List<Empleado> empleados) {
  double total = 0;
  for (int i = 0; i < empleados.length; i++) {
    total += empleados[i].salario;
  }
  return total;
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) return 0;
  double total = calcularSalarioTotal(empleados);
  return total/empleados.length;
}