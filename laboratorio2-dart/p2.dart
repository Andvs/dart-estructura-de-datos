import 'dart:io';
import 'dart:math';

void main() {

  List<int> lista_1 = [14,2,5,3,9];
  List<int> lista_2 = [];
  List<int> lista_3 = [];

  Random random = Random();
  print('Lista 2');
  for (int i = 0; i <5; i++) {
    print('Dime el elemento ${i+1}');
    int elemento = int.parse(stdin.readLineSync()!);
    lista_2.add(elemento);
  }
  
  print('Lista 3');
  for (int i = 0; i <5; i++) {
    int elemento = random.nextInt(15) + 11;
    elemento = -(elemento);
    lista_3.add(elemento);
  }

  List<int> lista_resta= [];
  for (int i = 0; i <5; i++) {
    int resta = lista_1[i] - lista_2[i];
    lista_resta.add(resta);
  }
  print(lista_resta);

  List<int> lista_suma= [];
  for (int i = 0; i <5; i++) {
    int suma = lista_resta[i] + lista_3[i];
    lista_resta.add(suma);
  }

  lista_suma[0] = 17;
  lista_suma[1] = 24;

  
  print('Lista resta: $lista_resta');
  print('Lista suma: $lista_suma');
  lista_suma.sort((a, b) => b.compareTo(a));
  print('Lista orden descendente: $lista_suma');
}