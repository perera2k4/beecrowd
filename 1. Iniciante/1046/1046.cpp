#include <iostream>
using namespace std;
int main(){
	int inicial,final,t1,t2;
	scanf("%d %d",&inicial,&final);
	if(inicial>final){
		t1 = 24 + final - inicial;
		printf("O JOGO DUROU %d HORA(S)\n",t1);
	}
	if(inicial<final){
		t2 = final - inicial;
		printf("O JOGO DUROU %d HORA(S)\n",t2);
	}
	if(inicial==final){
		printf("O JOGO DUROU 24 HORA(S)\n");
	}
	return 0;
}