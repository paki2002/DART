void main() {
  Persona persona1 = Persona.defaultConstructor();
  Persona persona2 = Persona.conNombreEdadSexo('Mario', 25, 'H');
  Persona persona3 = Persona.conTodosAtributos('Rosangela', 30, '12345678', 'M', 55.0, 1.65);

  print('Persona01:');
  print('Es mayor de edad: ${persona1.MayorEdad()}');
  print('IMC: ${persona1.calcularIMC()}');
  print('');

  print('Persona02:');
  print('Es mayor de edad: ${persona2.MayorEdad()}');
  print('IMC: ${persona2.calcularIMC()}');
  print('');

  print('Persona03:');
  print('Es mayor de edad: ${persona3.MayorEdad()}');
  print('IMC: ${persona3.calcularIMC()}');
}
//se define la clase persona
class Persona {
  String nombre;
  int edad;
  String DNI;
  String sexo;
  double peso;
  double altura;

  // Constructores
  Persona.defaultConstructor()
      : nombre = '',
        edad = 0,
        sexo = 'H',
        peso = 0,
        altura = 0,
        DNI = '';

  Persona.conNombreEdadSexo(String nombre, int edad, String sexo)
      : nombre = nombre,
        edad = edad,
        sexo = (sexo == 'H' || sexo == 'M') ? sexo : 'H',
        peso = 0,
        altura = 0,
        DNI = '';

  Persona.conTodosAtributos(this.nombre, this.edad, this.DNI, this.sexo, this.peso, this.altura);

  // Métodos
  int calcularIMC() {
    double imc = peso / (altura * altura);
    if (imc < 20) {
      return -1;
    } else if (imc >= 20 && imc <= 25) {
      return 0;
    } else {
      return 1;
    }
  }

  bool MayorEdad() {
    return edad >= 18;
  }

  void _comprobarSexo(String sexo) {
    if (sexo == 'H' || sexo == 'M') {
      this.sexo = sexo;
    } else {
      this.sexo = 'H';
    }
  }
}


