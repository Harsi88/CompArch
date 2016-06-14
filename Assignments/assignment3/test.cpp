#include<iostream>
#include<math.h>
#include<sstream>
#include<stdio.h>

using namespace std;

float cycle=0,no_of_inst=0,l1access=0,l1_miss=0,l2access=0,l2_miss=0;
float right_prediction=0,total_prediction=0;

class two_bit_ctr{
 public:
    int value;
    two_bit_ctr(){
        value = 0;
    }
    void increment(){
        if(value<3) value++;
    }
    void decrement(){
        if(value>0) value--;
    }
    int retvalue(){
        return value;
    }
};

two_bit_ctr bmod[1024],gsh[64],selector[4096];
int bhr[6];

bool bimodel(int pc[],int true_prediction){
    int tenbit=0;
    for(int i=31;i>=22;i--){
        if(pc[i]==1) tenbit+=pow(2,31-i);
    }
    if(bmod[tenbit].value<2) {
        //in/decrement based on correctness
        if(true_prediction==0) bmod[tenbit].decrement();
        else bmod[tenbit].increment();
        return false;
    }
    else{
        //in/decrement based on correctness
        if(true_prediction==1) bmod[tenbit].increment();
        else bmod[tenbit].decrement();
        return true;
    }
    // do we need to update bhr
}

bool gshare(int pc[],bool true_prediction){
    int sixbit=0;
    for(int i=31;i>=22;i--){
        if(pc[i]!=bhr[i-26]) sixbit+=pow(2,31-i);
    }
    if(gsh[sixbit].value<2) {
        if(true_prediction==0) gsh[sixbit].decrement();
        else gsh[sixbit].increment();				//in/decrement based on correctness
        return false;
    }
    else{
        if(true_prediction=1) gsh[sixbit].increment();
        else gsh[sixbit].decrement();				//in/decrement based on correctness
        return true;
    }
    //update bhr
}

bool tournament_predictor(int pc[],int true_prediction){
    int twbit=0;
    for(int i=31;i>=20;i--){
        if(pc[i]==1) twbit+=pow(2,31-i);
    }
    bool truth_value_of_prediction;
    if(selector[twbit].value<2){
        truth_value_of_prediction = bimodel(pc,true_prediction);
        if(truth_value_of_prediction==true_prediction) selector[twbit].decrement();
        else selector[twbit].increment();
    }
    else{
        truth_value_of_prediction = gshare(pc,true_prediction);
        if(truth_value_of_prediction==true_prediction) selector[twbit].increment();
        else selector[twbit].decrement();
    }
    return truth_value_of_prediction;
}

class l1{
public:
	float tag[2],validbit[2];
	int firstin;
	l1(){
		firstin=0;
	}
};

class l2{
public:
	float tag[8],validbit[8],total;
	int counter[8];
	l2(){
		total=0;
		for(int i=0;i<8;i++) counter[i]=0;
	}
};

l1 cache1[512];
l2 cache2[2048];

bool l1miss,l2miss;

void read(int memaddress[]){
	int tag=0,index=0;
	for(int i=26;i>17;i--) if(memaddress[i]==1) index+=pow(2,26-i);
	for(int i=17;i>=0;i--) if(memaddress[i]==1) tag+=pow(2,17-i);
	if((cache1[index].tag[0]==tag && cache1[index].validbit[0]==1) || (cache1[index].tag[1]==tag && cache1[index].validbit[1]==1)){
		l1miss=l2miss=0;
		return;
	}
	else{
		cycle+=8;
		l1miss=1;
		if(cache1[index].validbit[0]==0 || cache1[index].validbit[1]==0){
			if(cache1[index].validbit[0]==0){
				cache1[index].tag[0]=tag;
				cache1[index].validbit[0]=1;
			}
			else{
				cache1[index].tag[1]=tag;
				cache1[index].validbit[1]=1;
			}
		}
		else{
			cache1[index].tag[cache1[index].firstin]=tag;
			cache1[index].firstin = 1-cache1[index].firstin;
		}
		index=tag=0;
		for(int i=24;i>13;i--) if(memaddress[i]==1) index+=pow(2,24-i);
		for(int i=13;i>=0;i--) if(memaddress[i]==1) tag+=pow(2,13-i);
		bool flag=false;
		cache2[index].total++;
		for(int i=0;i<8;i++){
			if(cache2[index].tag[i]==tag && cache2[index].validbit[i]==1){
				cache2[index].counter[i]=cache2[index].total;
				l2miss=0;
				return;
			}
		}
		l2miss=1;
		cycle+=200;
		for(int i=0;i<8;i++){
			if(cache2[index].validbit[i]==0){
				cache2[index].tag[i]=tag;
				cache2[index].validbit[i]=1;
				cache2[index].counter[i]=cache2[index].total;
				return;
			}
		}
		int least_counter=0;
		for(int i=0;i<8;i++){
			if(cache2[index].counter[i]<cache2[index].counter[least_counter]) least_counter=i;
		}
		cache2[index].tag[least_counter]=tag;
		cache2[index].counter[least_counter]=cache2[index].total;
		return;
	}
}

class inst{
public:
	unsigned int pc,itype,src1,src2,dest;
	inst* down;
	inst(){
		down=NULL;
	}
};

int main(){
	inst *head,*ptr;
	ptr = new inst;
	head = ptr;
	FILE *fp;
	fp=fopen("instruction","r");
	while(feof(fp)==0){
		fscanf(fp,"%x",&ptr->pc);
		fscanf(fp,"%d",&ptr->itype);
		fscanf(fp,"%d",&ptr->src1);
		fscanf(fp,"%d",&ptr->src2);
		fscanf(fp,"%d",&ptr->dest);
		ptr->down = new inst;
		ptr = ptr->down;
//		ptr->pc=-1;
	}
	fclose(fp);
	unsigned int pc[2],memaddress[2],itp[2],temp;
	int pco[31],pcl[31],addo[31],addl[31];
	fp=fopen("trace","r");
	bool prediction;
	float ins=0;
	fscanf(fp,"%x",&pc[1]);
	fscanf(fp,"%x",&memaddress[1]);
	fscanf(fp,"%d",&itp[1]);
	for(int i=0;i<6;i++) bhr[i]=0;
	int c=0;
	while(feof(fp)==0){
		ins++;
		pc[0]=pc[1];
		memaddress[0]=memaddress[1];
		itp[0]=itp[1];
		fscanf(fp,"%x",&pc[1]);
		fscanf(fp,"%x",&memaddress[1]);
		fscanf(fp,"%d",&itp[1]);
		temp=pc[0];
		for(int i=31;i>=0;i--){
			pco[i]=temp%2;
			temp=temp/2;
		}
//FETCH
		no_of_inst++;
		cycle++;
		if(itp[0]!=-1){
			total_prediction++;
			prediction = tournament_predictor(pco,itp[0]);
			for(int i=0;i<5;i++) bhr[i]=bhr[i+1];
			bhr[5]=itp[0];
			if(itp[0]==prediction){
				right_prediction++;
			}
			else{
			 	cycle+=2;
			}
		}
//ID
		inst *ptro,*ptrl;
		ptro=ptrl=head;
		while(ptro!=NULL && ptro->pc != pc[0]) ptro=ptro->down;
		while(ptrl!=NULL && ptrl->pc != pc[1]) ptrl=ptrl->down;
		if(ptro->dest==ptrl->src1 || ptro->dest==ptrl->src2){
			if(ptro->itype==0 && ptrl->itype==2){
				cycle++;
				c++;
			}
		}
//DECODE
//MEMORY
		temp = memaddress[0];
		if(ptro->itype<2){
			for(int i=31;i>=0;i--){
				addo[i]=temp%2;
				temp=temp/2;
			}
			read(addo);
			l1access++;
			if(l1miss==1){
				l1_miss++;
				l2access++;
				if(l2miss==1) l2_miss++;
			}
		}
//WRITEBACK
	}
	fclose(fp);
	cout << ins/cycle<< " " << (l1_miss/l1access)*100<<"%"<< " " << (l2_miss/l2access)*100<<"%"<< " " << (right_prediction/total_prediction)*100<<"%"<<endl;
}
