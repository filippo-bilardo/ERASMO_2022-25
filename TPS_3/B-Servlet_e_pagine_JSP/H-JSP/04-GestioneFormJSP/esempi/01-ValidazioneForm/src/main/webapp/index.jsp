<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="it.edu.iisgubbio.model.Calcolatore" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calcolatore JSP</title>
    <style>
        .error { color: red; }
        .result { color: green; font-weight: bold; }
        form { margin: 20px; padding: 20px; border: 1px solid #ccc; }
        label { display: block; margin: 10px 0; }
        input[type="number"] { width: 100px; }
        select { margin: 10px 0; }
    </style>
</head>
<body>
    <h1>Calcolatore JSP</h1>
    
    <form method="post" action="">
        <label for="numero1">Primo numero:</label>
        <input type="number" name="numero1" id="numero1" required>
        
        <label for="numero2">Secondo numero:</label>
        <input type="number" name="numero2" id="numero2" required>
        
        <select name="operazione">
            <option value="somma">Somma</option>
            <option value="sottrazione">Sottrazione</option>
            <option value="moltiplicazione">Moltiplicazione</option>
            <option value="divisione">Divisione</option>
        </select>
        
        <input type="submit" value="Calcola">
    </form>

    <%
    String errorMessage = "";
    String resultMessage = "";
    
    if (request.getMethod().equals("POST")) {
        try {
            int num1 = Integer.parseInt(request.getParameter("numero1"));
            int num2 = Integer.parseInt(request.getParameter("numero2"));
            String operazione = request.getParameter("operazione");
            
            Calcolatore calc = new Calcolatore();
            calc.setNumero1(num1);
            calc.setNumero2(num2);
            
            double risultato = 0;
            switch(operazione) {
                case "somma":
                    risultato = calc.somma();
                    break;
                case "sottrazione":
                    risultato = calc.sottrazione();
                    break;
                case "moltiplicazione":
                    risultato = calc.moltiplicazione();
                    break;
                case "divisione":
                    risultato = calc.divisione();
                    break;
            }
            
            resultMessage = String.format("Risultato: %.2f", risultato);
            
        } catch (NumberFormatException e) {
            errorMessage = "Inserire numeri validi";
        } catch (ArithmeticException e) {
            errorMessage = e.getMessage();
        }
    }
    %>
    
    <% if (!errorMessage.isEmpty()) { %>
        <p class="error"><%= errorMessage %></p>
    <% } %>
    
    <% if (!resultMessage.isEmpty()) { %>
        <p class="result"><%= resultMessage %></p>
    <% } %>
</body>
</html>