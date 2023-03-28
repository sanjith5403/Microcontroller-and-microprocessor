#include<AT89S52.h>
void del(void);
void main(){
	while(1){
		P1_0=0;
		del();
		P1_0=1;
		del();
	}
}

void del(void){
	int i;
	for(i=0;i<3;i++){}
}
