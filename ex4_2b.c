// Jae Park, TEJ4MP, Mr. Wong, 2021-03-17
// This program implements a simple for loop

#include <stdio.h>

int main (){
    int sum = 0, loop;
    for (loop = 3; loop<=11; loop+=2){
        sum +=loop;
    }
    printf("%d\n",sum);
    return 0;
}
