package servicos.compostos;

public class JurosCompostos {
    public static double[] calcular(double principal, double taxa, int tempo) {
        double[] valores = new double[tempo];
        for (int i = 0; i < tempo; i++) {
            valores[i] = principal * Math.pow(1 + taxa, i + 1);
        }
        return valores;
    }
}

