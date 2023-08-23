void main(List<String> args) {
  mostrarMensaje();
  print(suma(5, 2));
  multiplicacion(9);
}

void mostrarMensaje() {
  print("Hola Mundo!!! desde una función");
}

/* void suma() {
  print("La suma es:  ${2 + 2}");
} */

int suma(int n1, int n2) {
  print("La suma es: ");
  return n1 + n2;
}

void multiplicacion(int n1) {
  print("La taqbla de multiplicacion es: ");
  for (var i = 1; i <= 12; i++) {
    print("$n1 x $i = ${n1 * i}");
  }
}