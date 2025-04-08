#include <stdio.h>
#include <math.h>
 
int main() {
	int l, c, r1, r2, maior;
	char saida;
	while ( scanf("%i %i %i %i",&l, &c, &r1, &r2) ) {
		if(l == 0 && c == 0 && r1 == 0 && r2 == 0) { return 0; }
		saida = 'N';
		
		if (r1 > r2) {
			maior = r1 + r1;
		} else {
			maior = r2 + r2;
		}
	
		if(maior <= l && maior <= c) {
			if(sqrt(pow((l - r2 - r1), 2) + pow((c - r2 - r1), 2)) >=  r1 + r2) {
				saida = 'S';
			}
		}
		
		printf("%c\n",saida);	
	}	
	return 0;
}