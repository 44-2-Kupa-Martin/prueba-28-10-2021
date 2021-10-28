/**
 * Escribir un programa que declare un array de 100 elementos.
 * Llenar el array con enteros aleatorios entre 1 y 100.
 * Usar un argumento de línea de comandos como semilla del
 * generador de aleatorios.
 * Imprimir el promedio de los valores del array.
 */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(int argc, char const *argv[]) {
  srand(atoi(argv[1]));
  int array[100], sum= 0;
  for (size_t i = 0; i < 100; i++) {
    array[i]= (rand()%100)+1;
    sum+= array[i];
  }
  printf("%.2lf\n", sum/(double)100);
  return 0;
}
