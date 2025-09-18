#include <iostream>
using namespace std;

float somarArray(float arr[], int n){
	float ans = 0;
	for(int i=0; i<n; i++){
		ans += arr[i];
	}
	return ans;
}

int main(){
	int n;
	cout << "Digite o tamanho do array: ";
	cin >> n;
	float arr[n];
	
	cout << "\nDigite os valores no array:";
	for(int i=0; i<n; i++)
		cin >> arr[i];
	
	cout << "\nSoma dos valores: " << somarArray(arr, n) << endl;	
	
	return 0;
}