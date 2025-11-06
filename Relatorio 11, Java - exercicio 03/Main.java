import java.util.*;

public class Main {
    public static void main(String[] args) {
        Poder poderY = new Poder("Manipulação de Sombras");
        Poder poderA = new Poder("Controle Mental");

        Youkai youkai = new Youkai("Kage", "Montanhas do Norte", poderY);
        Alien alien = new Alien("Zylox", "Órion", "Nave-Ω", poderA);

        Registros registros = new Registros("Equipe Oculta");

        boolean r1 = registros.registrarAvistamento(youkai, youkai.obterCoordenadas());
        boolean r2 = registros.registrarAvistamento(alien, alien.obterCoordenadas());
        boolean r3 = registros.registrarAvistamento(alien, "Nova tentativa duplicada");

        System.out.println("\n--- RESULTADO DOS REGISTROS ---");
        System.out.println("Registro 1: " + (r1 ? "Adicionado" : "Já existente"));
        System.out.println("Registro 2: " + (r2 ? "Adicionado" : "Já existente"));
        System.out.println("Registro 3: " + (r3 ? "Adicionado" : "Já existente"));

        System.out.println("\n--- ENTIDADES RASTREADAS ---");
        registros.exibirAvistamentos();
    }
}
