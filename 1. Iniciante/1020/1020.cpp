#include <iostream>
using namespace std;
int main(){
    int ano,ano1,mes,dia;
    scanf("%d",&ano);
    ano1 = ano/365;
    mes = ano%365/30;
    dia = ano%365%30;
    printf("%d ano(s)\n",ano1);
    printf("%d mes(es)\n",mes);
    printf("%d dia(s)\n",dia);
    return 0;
}