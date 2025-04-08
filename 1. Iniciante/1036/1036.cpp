#include <iostream>
#include <math.h>
using namespace std;
int main(){
    double a, b, c, r;
    scanf("%lf",&a);
    scanf("%lf",&b);
    scanf("%lf",&c);
    if((pow(b,2)-4*a*c)<0 || a==0){
		printf("Impossivel calcular\n");
    }
    else{
    	r = sqrt(pow(b,2)-4*a*c);
    	printf("R1 = %.5lf\n",((-b+r)/(2*a)));
    	printf("R2 = %.5lf\n",((-b-r)/(2*a)));
    }
    return 0;
}