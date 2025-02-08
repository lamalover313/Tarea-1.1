void main() {
  //Crea un programa que devuelva una lista con todos los elementos únicos de otra lista.

  List<int> lista1 = [9, 1, 3, 2, 2, 3, 4, 4, 5,1, 6, 6, 7,10, 8, 9, 9, 10];
  List<int> lista2 = lista1.toSet().toList();
  print("lista original: $lista1");
  print("lista sin repeticion: $lista2");
  
}