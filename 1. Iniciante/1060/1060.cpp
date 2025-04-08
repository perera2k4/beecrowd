#include <iostream>
using namespace std;
int main(){
	double n;
	int a = 0;
	for (int x = 0; x < 6; ++x){
	scanf("%lf", &n);
	if(n > 0)
	 a++;
	}
	printf("%d valores positivos\n", a);
	return 0;
}