#include <stdio.h>
#include <math.h>
#include <stdlib.h>

void collinear(int x1, int y1, int x2,
               int y2, int x3, int y3)
{
    int a = x1 * (y2 - y3) +
            x2 * (y3 - y1) +
            x3 * (y1 - y2);
 
    if (a == 0)
        printf("Yes this points are collinear");
    else
        printf("No");
}
int main()
{
    int x1 = 3, x2 = -2, x3 = 8,
        y1 = 0, y2 = -2, y3 = 2;
    collinear(x1, y1, x2, y2, x3, y3);
    return 0;
}