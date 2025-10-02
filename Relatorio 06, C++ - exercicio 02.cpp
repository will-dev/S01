#include <iostream>
using namespace std;

class Pessoa{
protected:
	string nome;
	int idade;

public:
	Pessoa(string nome, int idade){
		this->nome = nome;
		this->idade = idade;
	}	
	
	string getNome(){
		return this->nome;
	}
	int getIdade(){
		return this->idade;
	}
};

class Protagonista : public Pessoa {
private:
	int nivel;
	
public:
	Protagonista(string nome, int idade, int nivel) : Pessoa(nome, idade){
		this->nivel = nivel;
	}
	
	int getNivel(){
		return this->nivel;
	}
};

class Personagem : public Pessoa {
private:
	int rank;

public:
	Personagem(string nome, int idade, int rank) : Pessoa(nome, idade){
		this->rank = rank;	
	}
	
	int getRank(){
		return this->rank;
	}
};

int main(){
	Protagonista prota("Joker", 16, 10);
	Personagem persona("Futaba", 15, 7);
	
	cout << prota.getNome() << ":\nIdade: " << prota.getIdade() << "\nNivel: " << prota.getNivel() << endl;
	cout << endl;
	cout << persona.getNome() << ":\nIdade: " << persona.getIdade() << "\nRank: " << persona.getRank() << endl; 
	
	
	
	return 0;
}