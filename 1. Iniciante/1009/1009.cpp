#include <iostream>
#include <math.h>
using namespace std;
int main(){
  double salario,valor,TOTAL;
  char name;
  scanf("%s %lf %lf",&name,&salario,&valor);

  TOTAL = salario+valor*.15;
  printf("TOTAL = R$ %.2lf\n",TOTAL);
  return 0; 
}