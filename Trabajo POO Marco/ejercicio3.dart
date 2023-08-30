void main() {
  Cuenta cuenta1 = Cuenta(nombre: 'Ronal', dni: '12345678', cantidad: 1000);
  Cuenta cuenta2 = Cuenta(nombre: 'María', dni: '87654321', cantidad: 1500);

  cuenta1.transferencia(cuenta2, 500);

  print('Cuenta 1: ${cuenta1.nombre} - Saldo: ${cuenta1.cantidad}');
  print('Cuenta 2: ${cuenta2.nombre} - Saldo: ${cuenta2.cantidad}');
}
// Definición de la clase Cuenta
class Cuenta {
  // Atributos de la clase
  String nombre;   
  String dni;      
  double cantidad;

  // Constructor de la clase
  Cuenta({this.nombre = '', this.dni = '', this.cantidad = 0});

  // Método INGRESO para realizar un depósito en la cuenta
  bool ingreso(double monto) {
    if (monto > 0) {
      cantidad += monto;
      return true; 
    } else {
      return false;
    }
  }

  // Método REINTEGRO  para realizar un retiro de la cuenta
  bool reintegro(double monto) {
    if (monto > 0 && cantidad >= monto) {
      cantidad -= monto;
      return true; 
    } else {
      return false; 
    }
  }

  // Método TRANSFERENCIA para realizar una transferencia a otra cuenta
  bool transferencia(Cuenta destino, double monto) {
    if (monto > 0 && cantidad >= monto) {
      cantidad -= monto;      
      destino.ingreso(monto); 
      return true;            
    } else {
      return false; 
    }
  }
}

