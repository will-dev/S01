using System;
					
public class MembroDaSociedade
{
	public string nome {get; private set;}
	public string raca {get; private set;}
	public string funcao {get; private set;}
	
	public MembroDaSociedade(string nome, string raca, string funcao)
	{
		this.nome = nome;
		this.raca = raca;
		this.funcao = funcao;
	}
	
	public void descrever()
	{
		Console.WriteLine($"Nome: {nome} \nRaça: {raca} \nFunção: {funcao}\n");
	}
}

public class Program
{
	public static void Main()
	{
		MembroDaSociedade aragorn = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
		MembroDaSociedade legolas = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");
		
		aragorn.descrever();
		legolas.descrever();
	}
}