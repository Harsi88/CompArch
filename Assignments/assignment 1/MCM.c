#include<stdio.h>

#define size 50
long int m[size-1][size-1];
int s[size-1][size-1];

void matrixChainMultiplication(int p[]){
int n =size;
int j,i,k,L;
long int q;
for(i=1;i<=n;++i)
    m[i][i]=0;

for(L=2;L<=n;L++){
        for(i=1;i<=n-L+1;i++){
            j=i+L-1;
            m[i][j] =2147483647;
            for(k=i ; k<=j-1 ; k++){
                q = m[i][k] + m[k+1][j] + p[i-1]*p[k]*p[j];
                if(q<m[i][j]){
                    m[i][j] = q;
                    s[i][j] = k;
                }
            }
        }
}
}

void print(int s[][size-1], int i, int j)
{
if (i == j)
printf("M%d",i);
else
{
printf("(");
print(s, i, s[i][j]);
printf("x");
print(s, s[i][j] + 1, j);
printf(")");
}
}

int main()
{
FILE *fp=fopen("matrix.txt","r");
int p[size+1];
int i=0;
fscanf(fp,"%d",&p[i]);
i++;
while(!feof(fp)){
    fscanf(fp,"%d",&p[i]);
    if(i!=size-1) fscanf(fp,"%d",&p[i]);
    i++;
}
//int p[]={30,35,15,5,10,20,25};
//int p[]={10,100,5,50};
//int p[]={10,100,5,50,1};
int w = sizeof(p)/sizeof(p[0])-1;
matrixChainMultiplication(p);
int j;
/*for(i=1;i<=w;++i){
   for (j=1;j<=w;++j){
       printf("%d\t",m[i][j]);
  }
  printf("\n");
}
printf("\n");
for(i=1;i<=w;++i){
   for (j=1;j<=w;++j){
       printf("%d\t",s[i][j]);
  }
  printf("\n");
}*/

print(s, 1, size);
}

