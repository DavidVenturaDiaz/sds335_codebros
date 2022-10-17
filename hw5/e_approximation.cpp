#include <iostream>
#include <cmath>

using namespace std;

int main(){
    double n;
    double e_approx;
    
    for(int i = 1; i <= 10; i++){
        n = pow(10,i);
        e_approx = pow((1 + (1/n)), n);

        cout << "The approximation of e with n = 10^" << i << " is "  << e_approx << endl;
    }

    return 0;
}
