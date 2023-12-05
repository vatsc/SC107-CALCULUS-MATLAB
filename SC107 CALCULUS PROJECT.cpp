#include <bits/stdc++.h>
using namespace std;

int main()
{
    double initial_prey_number,initial_predator_number,equilibrium_prey_number,alpha,beta, teq;
    cout << "Enter value of initial prey population in the system:\n";
    cin >> initial_prey_number;
    cout << "Enter value of initial predator population in the system:\n";
    cin >> initial_predator_number;
    cout << "Enter value of equilibrium prey population in the system:\n";
    cin >> equilibrium_prey_number;
    cout << "Enter value of alpha:\n";
    cin >> alpha;
    cout << "Enter value of beta:\n";
    cin >> beta;

    teq =( log(equilibrium_prey_number/initial_prey_number) ) / (alpha - beta*initial_predator_number);

    cout << "Number of days for prey to reach equilibrium is : " << teq/12 << " months\n";   ;



}
