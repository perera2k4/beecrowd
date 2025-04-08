#include <iostream>
#include <math.h>
using namespace std;
int main() {
    double A,B,MEDIA,p1,p2,pt;
    p1 = 3.5;
    p2 = 7.5;
    pt = (p1 + p2);
	scanf("%lf",&A);
    scanf("%lf",&B);
    MEDIA = ((A*p1) + (B*p2))/pt;
    printf("MEDIA = %.5lf\n",MEDIA);
    return 0;
}