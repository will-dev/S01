#include <iostream>
#include <list>
using namespace std;

class SerVivo{
protected:
	string nome;

public:
	SerVivo(string nome){
		this->nome = nome;
	}	
	
	virtual void apresentar(){
		cout << "" << endl;
	}
};

class Humano : public SerVivo{
public:
	Humano(string nome) : SerVivo(nome){}
	
	void apresentar() override{
		cout << "Ola! Eu sou um humano e me chamo " << nome << endl;
	}
};

class Elfo : public SerVivo{
public:
	Elfo(string nome) : SerVivo(nome){}
	
	void apresentar() override{
		cout << "Mae govannen! Im edhel, ar eneth nîn " << nome << endl;
	}
};

class Fada : public SerVivo{
public:
	Fada(string nome) : SerVivo(nome){}
	
	void apresentar() override{
		cout << "Lúminel! Imáren faë, ar eneth-lia " << nome << endl;
	}
};

int main(){
	SerVivo* h = new Humano("Joao");
	SerVivo* e = new Elfo("Elrond");
	SerVivo* f = new Fada("Aerlinn");
	
	list<SerVivo*> seres;
	seres.push_back(h);
	seres.push_back(e);
	seres.push_back(f);
	
	for(SerVivo* s : seres){
		s->apresentar();
		delete s;
	}
 	
	return 0;
}