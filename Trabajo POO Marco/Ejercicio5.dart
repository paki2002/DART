
void main() {
  Persona persona = Persona('Rebeca', 25, '12345678');
  persona.mostrar();
  print('Es mayor de edad: ${persona.esMayorDeEdad()}');
}

class Persona {
  String nombre;
  int edad;
  String dni;

  Persona(this.nombre, this.edad, this.dni);

  String getNombre() {
    return nombre;
  }

  void setNombre(String nuevoNombre) {
    nombre = nuevoNombre;
  }

  int getEdad() {
    return edad;
  }

  void setEdad(int nuevaEdad) {
    edad = nuevaEdad;
  }

  String getDni() {
    return dni;
  }

  void setDni(String nuevoDni) {
    dni = nuevoDni;
  }

  void mostrar() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('DNI: $dni');
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }
}
