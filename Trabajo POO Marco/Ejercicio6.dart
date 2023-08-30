
void main() {
  Cuenta cuenta = Cuenta('Ronaldo Flores', 100.0);
  cuenta.mostrar();
  cuenta.ingresar(50.0);
  cuenta.retirar(30.0);
  cuenta.mostrar();
}

class Cuenta {
  String titular;
  double cantidad;

  Cuenta(this.titular, [this.cantidad = 0.0]);

  String getTitular() {
    return titular;
  }

  void setTitular(String titular) {
    this.titular = titular;
  }

  double getCantidad() {
    return cantidad;
  }

  void setCantidad(double cantidad) {
    if (cantidad >= 0) {
      this.cantidad = cantidad;
    }
  }

  void mostrar() {
    print('Titular: $titular');
    print('Cantidad: $cantidad');
  }

  void ingresar(double cantidad) {
    if (cantidad >= 0) {
      this.cantidad += cantidad;
    }
  }

  void retirar(double cantidad) {
    this.cantidad -= cantidad;
  }
}
