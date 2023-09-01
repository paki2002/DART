void main() {
  CuentaJoven cuenta = CuentaJoven("Ronaldo", 1000, 5.0);
  print(cuenta.mostrar());

  if (cuenta.esTitularValido()) {
    cuenta.ingresar(500);
    cuenta.retirar(200);
  } else {
    print("El titular no es válido para realizar operaciones.");
  }
}

class Cuenta {
  String titular;
  double cantidad;

  Cuenta(this.titular, this.cantidad);

  String mostrar() {
    return 'Titular: $titular\nCantidad: $cantidad';
  }

  bool ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
      return true;
    } else {
      return false;
    }
  }

  bool retirar(double cantidad) {
    if (this.cantidad >= cantidad) {
      this.cantidad -= cantidad;
      return true;
    } else {
      return false;
    }
  }
}

class CuentaJoven extends Cuenta {
  double bonificacion;

  CuentaJoven(String titular, double cantidad, this.bonificacion)
      : super(titular, cantidad);

  bool esTitularValido() {
    
    int edad = calcularEdadDelTitular();

    return edad >= 18 && edad < 25;
  }

  @override
  bool retirar(double cantidad) {
    if (esTitularValido() && super.retirar(cantidad)) {
      return true;
    } else {
      return false;
    }
  }

  String mostrar() {
    return 'Cuenta Joven\n${super.mostrar()}\nBonificación: $bonificacion%';
  }
}


int calcularEdadDelTitular() {
 
  return 22;
}
