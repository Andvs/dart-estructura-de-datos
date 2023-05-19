import 'dart:io';

// Solicitar una lista de números enteros al usuario por teclado, y luego
// sumar cada elemento de la lista obtenida.

void main() {
  List<int> lista = [];
  double suma = 0;
  
  print('Tamaño de la lista: ');
  int tamano = int.parse(stdin.readLineSync()!);
  
  for (int i = 0; i < tamano; i++) {
    print('Elemento ${i+1}: ');
    int elemento = int.parse(stdin.readLineSync()!);
    lista.add(elemento);
    suma += elemento;
  }

  print(lista);
  print(suma);

}