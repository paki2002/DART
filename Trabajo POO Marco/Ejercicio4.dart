void main() {
  Contador contador1 = Contador();
  contador1.incrementar();
  contador1.incrementar();
  contador1.decrementar();
  print('Contador 1: ${contador1.contadorActual}');

  Contador contador2 = Contador.conValor(5);
  contador2.incrementar();
  print('Contador 2: ${contador2.contadorActual}');
}

class Contador {
  int _contador;

  Contador() : _contador = 0;
  Contador.conValor(this._contador);
  void incrementar() {
    _contador++;
  }
  void decrementar() {
    if (_contador > 0) {
      _contador--;
    }
  }
  int get contadorActual => _contador;

  set contadorActual(int nuevoValor) {
    if (nuevoValor >= 0) {
      _contador = nuevoValor;
    }
  }
}
