#!/bin/bash

# colores
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
# contador
tests_passed=0
# funciones
test_output() {
  output=$($1)
  expected=$2
  if [[ "$output" == "$expected" ]]
  then
    echo -e "[  ${GREEN}OK${NC}  ]: $1 => $2 ${GREEN}✔️${NC}"
    tests_passed=$((tests_passed + 1))
  else
    echo -e "[ ${RED}Fail${NC} ]: Esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
  fi
}

# ejercicio 1
echo "------- Ejercicio 1 -------"
# test 1.1
test_output "./1_promedio 1" "52.84"
# test 1.2
test_output "./1_promedio 2" "54.88"
# test 1.3
test_output "./1_promedio 3" "53.26"
# test 1.4
test_output "./1_promedio 4" "49.23"
# test 1.5
test_output "./1_promedio 5" "52.09"

# ejercicio 2
echo "------- Ejercicio 2 -------"
# test 2.1
test_output "./2_alreves neuquen" "neuquen"
# test 2.2
test_output "./2_alreves abba" "abba"
# test 2.3
test_output "./2_alreves abcd" "dcba"
# test 2.4
test_output "./2_alreves anda" "adna"
# test 2.5
test_output "./2_alreves latzina" "aniztal"

# ejercicio 3
echo "------- Ejercicio 3 -------"
# test 3.1
test_output "./3_diagonal 1" "16"
# test 3.2
test_output "./3_diagonal 2" "19"
# test 3.3
test_output "./3_diagonal 3" "15"
# test 3.4
test_output "./3_diagonal 4" "16"
# test 3.5
test_output "./3_diagonal 5" "13"

# ejercicio 4
echo "------- Ejercicio 4 -------"
# test 4.1
test_output "./4_cal 4" "abril"
# test 4.2
test_output "./4_cal 7" "julio"
# test 4.3
test_output "./4_cal -1" "error"
# test 4.4
test_output "./4_cal 13" "error"
# test 4.5
test_output "./4_cal 12" "diciembre"

echo "-------  Resultado  -------"
# resultado final
if [[ $tests_passed -eq 20 ]]
then
  echo -e "Todos los tests pasaron ${GREEN}✔️${NC}"
else
  echo "Resultado: $tests_passed/20 tests OK."
fi
exit 0
