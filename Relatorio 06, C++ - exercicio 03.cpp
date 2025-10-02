#include <iostream>
#include <list>
using namespace std;

class Pessoa{
protected:
	string nome;

public:
	Pessoa(string nome){
		this->nome = nome;
	}
	
	virtual void apresentar(){
		cout << "Ola, meu nome e " << nome << " e eu sou uma pessoa." << endl;
	}		
};

class Professor : public Pessoa{
private:
	string disciplina;
	
public:	
	Professor(string nome, string disciplina) : Pessoa(nome){
		this->disciplina = disciplina;
	}
		
	void apresentar() override{
		cout << "Ola, meu nome e " << nome << " e eu sou professor da disciplina " << disciplina << endl;
	}
};

class Aluno : public Pessoa{
private:
	string curso;
	int matricula;

public:
	Aluno(string nome, string curso, int matricula) : Pessoa(nome){
		this->curso = curso;
		this->matricula = matricula;
	}	
	
	void apresentar() override{
		cout << "Ola, meu nome e " << nome << " e eu sou aluno do curso " << curso << endl;
	}
};

int main(){
	Pessoa* p1 = new Professor("Luiz", "M05");
	Pessoa* p2 = new Aluno("Will", "Eng. Software", 552);
	
	p1->apresentar();
	p2->apresentar();
	
	delete p1;
	delete p2;

	return 0;
}	