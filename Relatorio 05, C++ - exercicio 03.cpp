#include <iostream>
using namespace std;

int main(){
	int nota, n, sum=0;
	
	cout << "Digite a quantidade de notas: ";
	cin >> n;
	
	cout << "\nDigite as notas: ";
	for(int i=0; i<n; i++){
		cin >> nota;
		while(nota < 0 || nota > 10){
			cout << "\nValor invalido. Digite novamente: ";
			cin >> nota;
		}
		sum += nota;
	}
	
	sum = sum/n;
	if(sum >= 7)
		cout << "\nAprovado" << endl;
	else
		cout << "\nReprovado" << endl;
	
	return 0;
}