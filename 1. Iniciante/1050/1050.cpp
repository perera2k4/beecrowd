#include <iostream>
using namespace std;
int main(){
	int DDD;
	scanf("%d",&DDD);
	if(DDD==61){
		printf("Brasilia\n");
	}
	if(DDD==71){
		printf("Salvador\n");
	}
	if(DDD==11){
		printf("Sao Paulo\n");
	}
	if(DDD==21){
		printf("Rio de Janeiro\n");
	}
	if(DDD==32){
		printf("Juiz de Fora\n");
	}
	if(DDD==19){
		printf("Campinas\n");
	}
	if(DDD==27){
		printf("Vitoria\n");
	}
	if(DDD==31){
		printf("Belo Horizonte\n");
	}	
	else if(DDD!=61 and DDD!=71 and DDD!=11 and DDD!=21 and DDD!=32 and DDD!=19 and DDD!=27 and DDD!=31){
		printf("DDD nao cadastrado\n");
	}
	return 0;
}