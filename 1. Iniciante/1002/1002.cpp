#include <iostream>
#include <math.h>
using namespace std;
int main() {
    double raio,p,area;
    printf("");
    scanf("%lf",&raio);
    p = 3.14159;
    area = p * (raio*raio);
    printf("A=%.4lf\n",area);
    return 0;
}