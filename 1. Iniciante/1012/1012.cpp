#include <iostream>
using namespace std;
int main(){
    double a,b,c,triangulo,circulo,trapezio,quadrado,retangulo,pi=3.14159;
    scanf("%lf%lf%lf",&a,&b,&c);
    triangulo=0.5*a*c;
    circulo=pi*c*c;
    trapezio=(a+b)/2.0*c;
    quadrado=b*b;
    retangulo=a*b;
    printf("TRIANGULO: %.3lf\n",triangulo);
    printf("CIRCULO: %.3lf\n",circulo);
    printf("TRAPEZIO: %.3lf\n",trapezio);
    printf("QUADRADO: %.3lf\n",quadrado);
    printf("RETANGULO: %.3lf\n",retangulo);
    return 0;
}