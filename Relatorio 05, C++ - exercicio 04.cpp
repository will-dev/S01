#include <iostream>
using namespace std;

double celsiusParaFahreinheit(double celsius){
	double fah;
	fah = celsius * 1.8 + 32;
	return fah;
}

double celsiusParaKelvin(double celsius){
	double kel;
	kel = celsius + 273.15;
	return kel;
}

int main(){
	double celsius;
	int menu;
	
	do{
		cout << "1) Converter celsius para Fahreinheit \n2) Converter celsius para Kelvin \n3) Sair" << endl;
		cin >> menu;
		
		switch(menu){
			case 1:
				cout << "Digite o valor em celsius: ";
				cin >> celsius;
				cout << "\nEm Fahreinheit: " << celsiusParaFahreinheit(celsius) << endl;
				break;
			case 2:
				cout << "Digite o valor em celsius: ";
				cin >> celsius;
				cout << "\nEm Kelvin: " << celsiusParaKelvin(celsius) << endl;
				break;
		}
		cout << endl;
	}while(menu!=3);
	
	return 0;
}