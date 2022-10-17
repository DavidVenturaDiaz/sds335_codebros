#include <iostream>
#include <cmath>

using namespace std;

void limitApproximation(){
  double n;
  double e_approx;
  
  //Starting remark to the user
  cout << "This is approximation of e using the limit method\n";

  for(int i = 1; i <= 10; i++){
    n = pow(10, i);
    e_approx = pow((1 + (1 / n)), n);
    
    //This is print statement
    cout << "The approximation of e with n = 10^" << i << " is " << e_approx << endl;
  }

  //End of function
  return;
}

int main(){
  //Calling limitApproximation function
  limitApproximation();

    return 0;
}
