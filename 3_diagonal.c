/**
 * Escribir un programa que reciba un argumento entero.
 * Este argumento es la semilla para el generador de aleatorios.
 * Declarar e inicializar con enteros aleatorios una matriz de 4 x 4.
 * Usar números aleatorios entre 0 y 9.
 * Calcular la suma de los elementos de la diagonal principal.
 * Imprimir esa suma.
 */
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char const *argv[]) {
  srand(atoi(argv[1]));
  int matrix[4][4], sum= 0;
  for (size_t i = 0; i < 4; i++) {
    for (size_t j = 0; j < 4; j++) {
      matrix[i][j]= rand()%10;
    }
  }
  for (size_t i = 0; i < 4; i++) {
    sum+= matrix[i][i];
  }
  printf("%d\n", sum);
  return 0;
}
