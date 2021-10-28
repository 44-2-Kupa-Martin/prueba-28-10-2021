/**
 * Escribir un programa que reciba un argumento entero
 * e imprima el mes del año correspondiente (en minisculas)
 * o imprimir error si el argumento es menor a 1 o mayor a 12.
 */
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char const *argv[]) {
  int i= atoi(argv[1]);
  if (i < 1 || i > 12) {
    printf("error\n");
    return 0;
  }
  char *months[]= {"enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"};
  printf(months[i-1]);
  return 0;
}
