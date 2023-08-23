void main(List<String> args) {
  Map<String, dynamic> miMapa = {
    "id": 1,
    "nombre": "Juan",
    "apellidos": "Buleje",
    "edad": 18,
  };
  print(miMapa);
  print(miMapa.keys.toList());
  print(miMapa.values.toList());

  miMapa["nombre"] = "Jean Carlos";
  print(miMapa);

  print(miMapa.length);
  print(miMapa.containsKey("apellidos"));
  print(miMapa.containsValue("Buleje"));

  miMapa.forEach((key, value) {
    //print(key);
    print(value);
  });
}