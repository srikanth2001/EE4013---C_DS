#include <stdio.h>
int main(){
    int a[4][5] = { {1,2,3,4,5},
                    {6,7,8,9,10},
                    {11,12,13,14,15},
                    {16,17,18,19,20}};
    int i, j;

    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 5; j++)
        {
             printf("a[%d][%d]=%d\n", i, j, *( *(a + i) + j) );
        }
        printf("\n\n");
    }
    printf("final output is a[%d][%d]=%d\n", **a+2,3,*(*(a+**a+2) +3));
    return(0);
}
