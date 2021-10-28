/**
 * Escribir un programa que invierta las letras de una palabra.
 * La palabra es el primer argumento del programa.
 * Imprimir la palabra luego de invertirla.
 * Por ejemplo: hola => aloh
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, char const *argv[]) {
  int length= strlen(argv[1]);
  char inverted[length+1];
  for (size_t i = 0; i < (length); i++) {
    inverted[i]= argv[1][(length-1)-i];
  }
  inverted[length]= '\0';
  printf("%s\n", inverted);
  return 0;
}
