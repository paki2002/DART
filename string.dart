void main(List<String> args) {
  //Colecciones
/*   String texto = 'Mi texto';
  String textoMultilinea = '''Mi texto
es
multilinea
asi se configura
                              ''';
  int suma = 2 + 2;
  String respuesta = "Respuesta es: ${5 + 6}";

  print(texto);
  print(textoMultilinea);
  print(respuesta);

  int edad = 20;
  String nombre = "Juan";
  print("Mi nombre es $nombre y tengo $edad años"); */

/*   int numero = 100;
  double precio = 15.50;
  String texto = numero.toString();
  String texto1 = precio.toString();

  print(texto);
  print(texto1); */

  String nombre = "Juan Gabriel Lopez";
  print(nombre.isEmpty); //trato el string como un booleano
  print(nombre.length); //trato el string como un entero
  print(nombre.toUpperCase());
  print(nombre.toLowerCase());
  print(nombre.trim());
  print(nombre.compareTo("juan gabriel lopez"));
  print(nombre.replaceAll("a", "e"));
  print(nombre.substring(4, 10));
  print(nombre.contains("juan"));
  print(nombre.startsWith("A"));
  print(nombre.endsWith("z"));

  String dni = "40160915";
  String name = "Eduardo";
  String lastName = "Chavez Vasquez";

  /*
  1. Crear un codigo personalizado de usuario
  2. Primeras letras del nombre, las dos ultimas letras del apellido
  y los 4 ultimos digitos del DNI.
  ******** Edez0815 *******

  
  */
}