#include <stdlib.h>
#include <stdio.h>

#define size 1024
#define cuttoff 4



void
multiply(int *a, int *b, int *ret, int d) {
    int             i, j;

    for(i = 0; i < 2 * d; i++) ret[i] = 0;
    for(i = 0; i < d; i++) {
        for(j = 0; j < d; j++) ret[i + j] += a[i] * b[j];
    }
}

void karatsuba(int *a, int *b, int *ret, int d) {
    int             i;
    int             *ar = &a[0]; // low-order half of a
    int             *al = &a[d/2]; // high-order half of a
    int             *br = &b[0]; // low-order half of b
    int             *bl = &b[d/2]; // high-order half of b
    int             *asum = &ret[d * 5]; // sum of a's halves
    int             *bsum = &ret[d * 5 + d/2]; // sum of b's halves
    int             *x1 = &ret[d * 0]; // ar*br's location
    int             *x2 = &ret[d * 1]; // al*bl's location
    int             *x3 = &ret[d * 2]; // asum*bsum's location

    // when d is small, we're better off just reverting to
    // grade-school multiplication, since it's faster at this point.
    if(d <= cuttoff) {
        multiply(a, b, ret, d);
        return;
    }

    // compute asum and bsum
    for(i = 0; i < d / 2; i++) {
        asum[i] = al[i] + ar[i];
        bsum[i] = bl[i] + br[i];
    }

    // do recursive calls (I have to be careful about the order,
    // since the scratch space for the recursion on x1 includes
    // the space used for x2 and x3)
    karatsuba(ar, br, x1, d/2);
    karatsuba(al, bl, x2, d/2);
    karatsuba(asum, bsum, x3, d/2);

    // combine recursive steps
    for(i = 0; i < d; i++) x3[i] = x3[i] - x1[i] - x2[i];
    for(i = 0; i < d; i++) ret[i + d/2] += x3[i];
}


void doCarry(int *a, int d) {
    int             c;
    int             i;

    c = 0;
    for(i = 0; i < d; i++) {
        a[i] += c;
        if(a[i] < 0) {
            c = -(-(a[i] + 1) / 10 + 1);
        } else {
            c = a[i] / 10;
        }
        a[i] -= c * 10;
    }
    if(c != 0) fprintf(stderr, "Overflow %d\n", c);
}

void printNum(int *a, int d) {
    int i;
    for(i = d - 1; i > 0; i--) if(a[i] != 0) break;
    for(; i >= 0; i--) printf("%d", a[i]);
}




int main(int args,char *argv[]) {
    if(args<2) printf("errorrrrrrrrrrrr\n");
    FILE *fp = fopen(argv[1],"r");
    int a[size];
    int b[size];
    int r[6 * size];
    int d=size;
    int i;
    for(i=0;i<size;++i){
    a[i]=0;
    b[i]=0;
    }
    char c;
fseek(fp,-1,SEEK_END);
i=0;
while(1){
    if((c=getc(fp))==' ') break;
    a[i]=c-'0';
    i++;
    fseek(fp,-2,SEEK_CUR);
}
i=0;
fseek(fp,-2,SEEK_CUR);
while(1){
    if(ftell(fp)==0) break;
    c=getc(fp);
    b[i]=c-'0';
    i++;
    fseek(fp,-2,SEEK_CUR);
}
c=getc(fp);
b[i]=c-'0';

fclose(fp);
karatsuba(a, b, r, d);
    doCarry(r, 2 * d);
    printNum(r, 2 * d);
}

// ret must have space for 6d digits.
// the result will be in only the first 2d digits
// my use of the space in ret is pretty creative.
// | ar*br  | al*bl  | asum*bsum | lower-recursion space | asum | bsum |
//  d digits d digits  d digits     3d digits              d/2    d/2
