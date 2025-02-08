void main() {
  //1. Cree un programa el cual imprima una lista con los primeros 15   números de la sucesión de Fibonacci.

  //solucion real
  List<int> fibonacci = [0, 1];
  for (int i = 2; i<15; i++){
    fibonacci.add(fibonacci[i-1] + fibonacci[i-2]);
  }
  print("solucion real: $fibonacci");

  //solucion tramposa
  List<int> fibonTrap = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377];
  print("solucion tramposa: $fibonTrap");
}
