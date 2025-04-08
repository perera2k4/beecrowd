#include <iostream>
using namespace std;
int main(){
	int a, b;
	double c, valor;
	scanf("%d %d %lf", &a, &b, &c);
	valor = b * c;
 	scanf("%d %d %lf", &a, &b, &c);
	valor += b * c;
 	printf("VALOR A PAGAR: R$ %.2lf\n", valor);
 	return 0;
}