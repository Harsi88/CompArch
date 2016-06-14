#include<iostream>
#include<math.h>

using namespace std;

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

bool bimodel(int pc[]){
    int tenbit=0;
    for(int i=29;i>=20;i--){
        if(pc[i]==1) tenbit+=math.pow(2,29-i);
    }
    if(bmod[tenbit].value<2) {
        //return not taken
        //in/decrement based on correctness
    }
    else{
        //return taken
        //in/decrement based on correctness
    }
    // do we need to update bhr
}

bool gshare(int pc[]){
    int sixbit=0;
    for(int i=29;i>=20;i--){
        if(pc[i]!=bhr[34-i]) sixbit+=math.pow(2,29-i);
    }
    if(gsh[sixbit].value<2) {
        //in/decrement based on correctness
        return false;
    }
    else{
        //in/decrement based on correctness
        return true;
    }
    //update bhr
}

bool tournament_predictor(int pc[]){
    int twbit=0;
    for(int i=29;i>=18;i--){
        if(pc[i]==1) twbit+=math.pow(2,29-i);
    }
    if(selector[twbit].value<2){
        bool truth_value_of_prediction = bimodel(pc);
        if(truth_value_of_prediction==1) selector[twbit].decrement();
        else selector[twbit].increment();
    }
    else{
        bool truth_value_of_prediction = gshare(pc);
        if(truth_value_of_prediction==1) selector[twbit].increment();
        else selector[twbit].decrement();
    }
    return truth_value_of_prediction;
}

int main(){

}
