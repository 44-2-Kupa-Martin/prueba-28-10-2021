1_promedio: 1_promedio.c
	@gcc -o 1_promedio 1_promedio.c

2_alreves: 2_alreves.c
	@gcc -o 2_alreves 2_alreves.c

3_diagonal: 3_diagonal.c
	@gcc -o 3_diagonal 3_diagonal.c

4_cal: 4_cal.c
	@gcc -o 4_cal 4_cal.c

clean:
	rm 1_promedio 2_alreves 3_diagonal 4_cal

test: 1_promedio 2_alreves 3_diagonal 4_cal
	@bash tests.sh
