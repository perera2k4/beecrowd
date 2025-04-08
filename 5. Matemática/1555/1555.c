#include <stdio.h>
int main(){
	int beto,carlos,rafael,x,y,n,i;
	
	scanf("%d",&n);
	
	for(i=0; i<n; i++){
		scanf("%d %d",&x,&y);
		
		rafael = pow(3*x,2) + pow(y,2);
		beto = 2 * pow(x,2) + pow(5*y,2);
		carlos = (-100) * x + pow(y,3);
		
		if(rafael>beto && rafael>carlos){
			printf("Rafael ganhou\n");
		}
		
		else if(beto>rafael && beto>carlos){
			printf("Beto ganhou\n");
		}
		
		else if(carlos>rafael && carlos>beto){
			printf("Carlos ganhou\n");
		}
}
	return 0;
}