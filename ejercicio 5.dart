/*
 5.Cree una clase CuentaBancaria que tenga las propiedades titular y saldo. Implemente métodos para:
    a. Depositar dinero.
    b. Retirar dinero (asegurándote de que el saldo no sea negativo).
    c. Consultar el saldo. 
  */

void main() {
  CuentaBancaria cuenta = CuentaBancaria(titular: "Juanito Alcachofa", saldo: 5000);

  print("Saldo inicial de la cuenta de ${cuenta.titular}: \$${cuenta.consultarSaldo()}");

  cuenta.depositar(1000);
  print("Saldo después del depósito de \$1000: \$${cuenta.consultarSaldo()}");

  cuenta.retirar(2000);
  print("Saldo después de retirar \$2000: \$${cuenta.consultarSaldo()}");

  cuenta.retirar(5000);
  print("Saldo después de intentar retirar \$5000: \$${cuenta.consultarSaldo()}");
}

class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria({required this.titular, required this.saldo});

  void depositar(double monto) {
    if (monto > 0) {
      saldo += monto;
      print("Se depositaron \$${monto} en la cuenta.");
    } else {
      print("El monto a depositar debe ser positivo.");
    }
  }

  void retirar(double monto) {
    if (monto > 0) {
      if (monto <= saldo) {
        saldo -= monto;
        print("Se retiraron \$${monto} de la cuenta.");
      } else {
        print("No hay suficiente saldo para retirar \$${monto}.");
      }
    } else {
      print("El monto a retirar debe ser positivo.");
    }
  }

  double consultarSaldo() {
    return saldo;
  }
}