#include <iostream>
using namespace std;

class Personagem{
public:
	string nome;
	int nivel, vida, dano;
	
	// Construtor
	Personagem(string nome, int nivel, int vida, int dano){
		this->nome = nome;
		this->nivel = nivel;
		this->vida = vida;
		this->dano = dano;
	}
	
	// Método
	void atacar(Personagem &p){
		cout << this->nome << " esta atacando " << p.nome << endl;
		p.vida = (p.vida - this->dano);
	}
};

int main()
{
	Personagem p1("Pedro", 10, 20, 5);
	Personagem p2("Joao", 5, 20, 2);
	
	p1.atacar(p2);
	p2.atacar(p1);
	
	cout << "\n" << p1.nome << ":\nNivel: " << p1.nivel << "\nVida: " << p1.vida << "\nDano: " << p1.dano << endl;
	cout << "\n" << p2.nome << ":\nNivel: " << p2.nivel << "\nVida: " << p2.vida << "\nDano: " << p2.dano << endl; 
	
	return 0;
}