<%@ include file="../../includes/menu.jspf" %>
<html>
<head><title>Juros Compostos</title></head>
<body>
    <h2>Cálculo de Juros Compostos</h2>
    <form method="post">
        Montante Inicial: <input type="text" name="principal" /><br>
        Taxa de Juros (%): <input type="text" name="taxa" /><br>
        Tempo (meses): <input type="text" name="tempo" /><br>
        <input type="submit" value="Calcular" />
    </form>
    <%
        if (request.getParameter("principal") != null) {
            double principal = Double.parseDouble(request.getParameter("principal"));
            double taxa = Double.parseDouble(request.getParameter("taxa")) / 100;
            int tempo = Integer.parseInt(request.getParameter("tempo"));
            out.println("<table border='1'><tr><th>Mês</th><th>Valor Acumulado</th></tr>");
            for (int i = 1; i <= tempo; i++) {
                double montante = principal * Math.pow(1 + taxa, i);
                out.println("<tr><td>" + i + "</td><td>R$ " + montante + "</td></tr>");
            }
            out.println("</table>");
        }
    %>
</body>
</html>