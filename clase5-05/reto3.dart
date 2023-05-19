import 'dart:io';
import 'dart:math';

// Crear una lista de números enteros en la cual se debe ingresar el
// tamaño y sus elementos por teclado. Se solicita ordenar
// ascendentemente y descendentemente. Además solo se deben
// ingresar números enteros positivos.
//Se solicita obtener el valor máximo y mínimo de la lista

void main () {
  List<int> numeros = [];

  print('Ingrese el tamaño de la lista:');
  int tamano = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < tamano; i++) {
    int elemento;
    do {
      print('Ingrese el elemento ${i+1}');
      elemento = int.parse(stdin.readLineSync()!);
    } while (elemento <= 0 );
    numeros.add(elemento);
  }

  numeros.sort();
  print('Lista ordenada ascendentemente: $numeros');

  numeros.sort((a,b) => b.compareTo(a));
  print('Lista ordenada descendentemente $numeros');

  print('El numero minimo es: ${numeros.reduce(min)}');
  print('El número max es: ${numeros.reduce(max)}');

}

// maximo y minimo sin funcion de libreria
// void main() {
//   var lista = [3, 41, 12, 72, 2, 20];
//   var maximo = 0;

//   for (var numero in lista) {
//     if (numero > maximo) {
//       maximo = numero;}}

//   var minimo;
//   for (var numero in lista) {
//     if ( minimo == null || numero < minimo){
//       minimo = numero;
//     }
//   }
//   print(maximo);
//   print(minimo);