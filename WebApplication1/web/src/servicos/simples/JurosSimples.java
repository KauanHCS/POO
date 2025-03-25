package servicos.simples;

public class JurosSimples {
    public static double calcular(double principal, double taxa, int tempo) {
        return principal * (1 + (taxa * tempo));
    }
}