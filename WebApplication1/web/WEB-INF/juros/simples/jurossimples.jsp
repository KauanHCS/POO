<%@ include file="../../includes/menu.jspf" %>
<html>
<head><title>Juros Simples</title></head>
<body>
    <h2>Cálculo de Juros Simples</h2>
    <form method="post">
        Montante Inicial: <input type="text" name="principal" /><br>
        Taxa de Juros (%): <input type="text" name="taxa" /><br>
        Tempo (meses): <input type="text" name="tempo" /><br>
        <input type="submit" value="Calcular" />
    </form>
    <%
        String p = request.getParameter("principal");
        String t = request.getParameter("taxa");
        String n = request.getParameter("tempo");
        if (p != null && t != null && n != null) {
            double principal = Double.parseDouble(p);
            double taxa = Double.parseDouble(t) / 100;
            int tempo = Integer.parseInt(n);
            double montante = principal * (1 + (taxa * tempo));
            out.println("<h3>Valor Futuro: R$ " + montante + "</h3>");
        }
    %>
</body>
</html>