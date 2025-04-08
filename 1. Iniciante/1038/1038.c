#include<stdio.h>
int main(){
    int a, b;
    float preco = 0;
    scanf("%d %d", &a, &b);
    if (a==1){
        preco = (float)(4.00 * b);
    }
    else if (a==2){
        preco = (float)(4.50 * b);
    }
    else if (a==3){
        preco = (float)(5.00 * b);
    }
    else if (a==4){
        preco = (float)(2.00 * b);
    }
    else if (a==5){
        preco = (float)(1.50 * b);
	}
    printf("Total: R$ %.2f\n",preco);
    return 0;
}