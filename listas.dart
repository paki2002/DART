void main(List<String> args) {
  //Lista (Array)
  List items = [2, 5, 12.5, 'Brayan', "Hola", true];
  List<int> numeros = [10, 15, 18, 12, 5];
  List<String> nombres = ['Papita', 'Limbert', 'Jhon', 'Leonidas'];
  /*print(items);
  print(numeros);
  print(nombres);*/
  //print(items.length);
  //print(nombres.length);
  //print(items[18]);
  items[3] = 'Sergio';
  //print(items);

  /*for (int i = 0; i < items.length; i++) {
    print("Elemento: ${items[i]}");
  }

  for (var valor in items) {
    print("Elemento: $valor");
  }*/
  print(nombres);
  print(nombres.isEmpty);
  print(nombres.isNotEmpty);
  print(nombres.first);
  print(nombres.last);

  nombres.add('Elyon');
  print(nombres);
  nombres.addAll(['Marco', 'Buleje']);
  print(nombres);

  print(nombres.indexOf('Leonidas'));
  print(nombres.elementAt(4));

  print(nombres.contains('Papita'));

  print(nombres.getRange(1, 3).toList());

  nombres.insert(2, 'Rivas');
  print(nombres);

  nombres.insertAll(0, ['Sabino', 'Ladislao']);
  print(nombres);

  nombres.remove('Marco');
  print(nombres);

  nombres.removeAt(6);
  print(nombres);

  nombres.sort();
  print(nombres);
}