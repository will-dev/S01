#include <iostream>
using namespace std;

int fibonacci(int n){
	if(n == 0)
		return 0;
	else if(n == 1)
		return 1;
	else
		return n*fibonacci(n-1);
}

int main(){
	int n;
	cout << "Digite um numero: ";
	cin >> n;
	cout << "\nResultado: " << fibonacci(n) << endl;
	
	return 0;
}