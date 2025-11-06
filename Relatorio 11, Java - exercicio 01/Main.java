import java.util.*;

public class Main {
    public static void main(String[] args) {
      Mago howl = new Mago("Howl", 30, "Metamorfose");
      System.out.println(howl.lancarFeitico());

      Castelo castelo = new Castelo("Castelo Móvel", new ArrayList<>());

      Divisao sala = new Divisao("Sala Principal");
      Divisao cozinha = new Divisao("Cozinha Mágica");

      castelo.adicionarDivisao(sala);
      castelo.adicionarDivisao(cozinha);

      System.out.println("Castelo: " + castelo.nome);
      System.out.println("Divisões:");
      for (Divisao d : castelo.getDivisoes()) {
          System.out.println(" - " + d.nome);
      }

      howl.setNome("Howl Pendragon");
      System.out.println("Novo nome do mago: " + howl.getNome());
  }
}