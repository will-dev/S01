using System;

public class MonstroSombrio
{
    public string nome { get; private set; }

    public MonstroSombrio(string nome)
    {
        this.nome = nome;
    }

    public virtual void Mover()
    {
        Console.WriteLine("Idle");
    }
}

public class Zumbi : MonstroSombrio
{
    public Zumbi(string nome) : base(nome) {}
    
    public override void Mover()
    {
        Console.WriteLine($"{nome} está andando");
    }
}

public class Espectro : MonstroSombrio
{
    public Espectro(string nome) : base(nome) {}
    public override void Mover()
    {
        Console.WriteLine($"{nome} está correndo");
    }
}

public class Program
{
    public static void Main()
    {
        MonstroSombrio[] monstros = new MonstroSombrio[2];

        monstros[0] = new Zumbi("Zumbi lerdo");
        monstros[1] = new Espectro("Espectro Rápido");

        foreach(var mon in monstros)
        {
            mon.Mover();
        }
    }
}