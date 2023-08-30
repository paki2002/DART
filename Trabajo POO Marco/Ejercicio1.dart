void main(){
   // Se Crea una cuenta con titular y una cantidad inicial de 5000 soles
  Cuenta cuenta = Cuenta('Marco Antonio Rivera', 0);
  cuenta.mostrarDetalles();
  // Realizar operaciones de ingreso y retiro
  cuenta.ingresar(1000);
  cuenta.retirar(2000);
  

  cuenta.mostrarDetalles();

}
// Se define la clase Cuenta
class Cuenta {
  String titular;
  double cantidad;

  // Constructor que recibe el titular y la cantidad 
  Cuenta(this.titular, [this.cantidad = 0]);

  // Método para ingresar dinero a la cuenta
  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
      print('Ingreso exitoso. Nuevo saldo: S/${this.cantidad.toStringAsFixed(2)}');
    }
  }

  // Método para retirar dinero de la cuenta
  void retirar(double cantidad) {
    if (cantidad > 0) {
      if (cantidad <= this.cantidad) { 
        this.cantidad -= cantidad;
        print('Retiro exitoso. Nuevo saldo: S/${this.cantidad.toStringAsFixed(2)}');
      } else {
        print('Saldo insuficiente. No se puede realizar el retiro.');
      }
    }
  }

  // Método para mostrar los detalles de la cuenta
  void mostrarDetalles() {
    print('Titular: $titular');
    print('Cantidad: S/${cantidad.toStringAsFixed(2)}');
  }
}

