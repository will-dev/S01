using System;
using System.Collections.Generic;

public class Feitico
{
    public string nome { get; private set; }
    
    public Feitico(string nome)
    {
        this.nome = nome;
    }
}

public class Grimorio
{
    List<Feitico> feiticos = new List<Feitico>();

    public void AdicionarFeitico(Feitico magia)
    {
        feiticos.Add(magia);
    }

    public void MostrarFeiticos()
    {
        Console.WriteLine("\nFeitiços:\n");
        foreach(var magia in feiticos)
        {
            Console.WriteLine($"{magia.nome}\n");
        }
    }
}

public class Ferramenta
{
    public string nome { get; private set; }

    public Ferramenta(string nome)
    {
        this.nome = nome;
    }    
}

public class Maga
{
    private string nome { get; set; } = "Frieren";
    public Grimorio grimorio { get; set; }
    private List<Ferramenta> bolsa;

    public Maga(List<Ferramenta> ferramentasPricipais)
    {
        bolsa = ferramentasPricipais;
        grimorio = new Grimorio();
    }

    public void AprenderFeitico(Feitico nome)
    {
        grimorio.AdicionarFeitico(nome);
    }
    
    public void MostrarDados()
    {
        Console.WriteLine("Ferramentas:\n");
        foreach (var item in bolsa)
        {
            Console.WriteLine($"{item.nome}\n");
        }
        grimorio.MostrarFeiticos();
    }
}

public class Program
{
    public static void Main()
    {
        List<Ferramenta> itens = new List<Ferramenta>();
        itens.Add(new Ferramenta("Cajado"));
        itens.Add(new Ferramenta("Livros"));
        itens.Add(new Ferramenta("Pergaminhos"));
        itens.Add(new Ferramenta("Cristais"));
        itens.Add(new Ferramenta("Capa de viagem"));

        Maga frieren = new Maga(itens);

        frieren.AprenderFeitico(new Feitico("Zoltraak"));
        frieren.AprenderFeitico(new Feitico("Multi-Zoltraak"));
        frieren.AprenderFeitico(new Feitico("Judradjim"));
        frieren.AprenderFeitico(new Feitico("Vollzanbel"));
        frieren.AprenderFeitico(new Feitico("Flores"));

        frieren.MostrarDados();
    }
}