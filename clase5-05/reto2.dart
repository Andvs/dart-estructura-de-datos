// Crear un arreglo de tamaño aleatorio (entre 10 a 30 elementos). Los
// elementos también deben ser aleatorios (de 0 a 10). Además se
// solicita ordenarlo de forma ascendente.
//Luego ordenar ese mismo arreglo de forma aleatoria
import 'dart:math';
void main() {
  Random random = Random();
  List<int> lista = [];
  int tamano = random.nextInt(21) +10;

  for (int i = 0; i < tamano; i++) {
    int numero = random.nextInt(11);
    lista.add(numero);
  }
  print('Lista: $lista');
  lista.sort();
  print('Lista ordenada ascendentemente: $lista');
  lista.shuffle();
  print('Lista ordenada aleatoriamente: $lista');
  lista.sort((a, b) => b.compareTo(a));
  print('Lista ordenada descendentemente: $lista');




}




