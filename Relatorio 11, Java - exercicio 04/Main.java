import java.util.*;

public class Main {
    public static void main(String[] args) {
        Ataque fogo = new Ataque("Bola de Fogo", 40);
        Ataque raio = new Ataque("Raio Arcano", 50);
        Ataque gelo = new Ataque("Explosão de Gelo", 35);

        Boss boss1 = new Boss("Gárgula Sombria", "B001", "Luz");
        BossMagico boss2 = new BossMagico("Feiticeiro Ancião", "B002", "Físico");

        boss1.adicionarAtaque(fogo);
        boss1.adicionarAtaque(gelo);

        boss2.adicionarAtaque(raio);
        boss2.adicionarAtaque(fogo);

        HashMap<String, Boss> arena = new HashMap<>();
        Batalha batalha = new Batalha(arena);

        batalha.adicionarBoss(boss1);
        batalha.adicionarBoss(boss2);

        System.out.println("\n=== Iniciando Batalha com o Boss 1 ===");
        batalha.iniciarBatalha("B001");

        System.out.println("\n=== Iniciando Batalha com o Boss Mágico ===");
        batalha.iniciarBatalha("B002");
    }
}
