#include <iostream>
#include <cmath>

/*
David Ventura-Diaz (dv9486)
Alan Hsiao (ah56846)
Abdon Verdejo-Parada (av34626)
 */

using namespace std;

void limitApproximation(){
  float n;
  float e_approx;
  
  //Starting remark to the user
  cout << "\nThis is approximation of e using the limit method\n\n";

  for(int i = 1; i <= 10; i++){
    n = pow(10, i);
    e_approx = pow((1 + (1 / n)), n);
    
    //This is print statement
    cout << "The approximation of e with n = 10^" << i << " is " << e_approx << endl;
  }

  //End of function
  return;
}

double factorial(double val){
  if(val == 0 || val == 1){
    return 1;
  }
  
  return val * factorial(val - 1);
}

void taylorExpansion(int &uptoVal){
  //This is the starting e approximation
  float e_approximation = 0;

  //This will do the taylor series expansion
  for(int i = 0; i < uptoVal; i++){
    e_approximation = e_approximation + (1 / factorial(i));
  }

  //Result of this function
  cout << "The approximation of e when N is: " << uptoVal << " is: " << e_approximation << "\n";

  //End of function
  return;
}

void automateTaylorSeries(int &valIterations){
  //This will tell the user what function is being used to approximate e
  cout << "\nThis is an approximation of e using Talor Series Expansion\n";

  //This is the for loop that will be used to automate the taylor series expansion
  for(int i = 1; i <= valIterations; i++){
    taylorExpansion(i);
  } 

  cout << "\n";

  //End of functiom
  return;

}

int main(){
  //Calling limitApproximation function
  limitApproximation();

  //using the taylorExpansion function
  int uptoVal = 15;
  automateTaylorSeries(uptoVal);


  //End of function
  return 0;
}
