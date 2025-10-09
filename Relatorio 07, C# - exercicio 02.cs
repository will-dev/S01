using System;
using System.Collections.Generic;

public class Pokemon
{
    public string nome { get; private set; }
	
	public Pokemon(string nome)
	{
		this.nome = nome;
	}

    public virtual void atacar()
    {
        Console.WriteLine("Pokemon ataca");
    }
}

public class PokemonDeFogo : Pokemon
{
    public PokemonDeFogo(string nome) : base(nome) {}
	
    override public void atacar()
    {
        Console.WriteLine($"{nome} usa Flamethrower");
    }
}

public class PokemonDeAgua : Pokemon
{
    public PokemonDeAgua(string nome) : base(nome) {}
	
    override public void atacar()
    {
        Console.WriteLine($"{nome} usa Hydro Pump");
    }
}

public class Program
{
    public static void Main()
    {
        List<Pokemon> pokedex = new List<Pokemon> ();
        pokedex.Add(new PokemonDeFogo("Charizard"));
        pokedex.Add(new PokemonDeAgua("Blastoise"));

        foreach(var poke in pokedex)
        {
            poke.atacar();
        }
    }
}