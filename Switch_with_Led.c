#include <AT89S52.h>
void main(){
	while(1){
		if(P2_0==1){
			P1_0=1;
		}else{
			P1_0=0;
		}
	}
}
