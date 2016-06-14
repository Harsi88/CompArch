#include<stdio.h>
#include<math.h>

int main(){
FILE *fp = fopen("input.txt","r");
FILE *fp1=fp;
fseek(fp,-1,SEEK_END);
int a[100];
int b[100];
int i=0,j;
for(i=0;i<=99;i++) a[i]=0;
for(i=0;i<=99;i++) b[i]=0;
i=0;
char c;
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

long int result[200];
for(i=0;i<200;i++) result[i]=0;
for(i=0;i<100;++i){
    for(j=0;j<100;++j){
            result[i+j]+=a[i]*b[j];
        }
}
int ans[200];
for(i=0;i<200;++i) ans[i]=0;
int carry=0;
int sum;
for(i=199;i>=0;i--){
    sum=result[199-i]+carry;
    carry=sum/10;
    sum=sum%10;
    ans[i]=sum;
}
j=0;
while(ans[j]==0) j++;
for(i=j;i<200;++i) printf("%d",ans[i]);
printf("\n");
}
