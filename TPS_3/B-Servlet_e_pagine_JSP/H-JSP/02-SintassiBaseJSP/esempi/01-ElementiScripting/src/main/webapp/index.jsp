<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="it.edu.iisgubbio.model.Calcolatore" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calcolatrice JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .button-group {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
            margin-top: 15px;
        }
        button {
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .result {
            margin-top: 20px;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Calcolatrice JSP</h1>
        
        <form method="post">
            <div class="form-group">
                <label for="numero1">Primo numero:</label>
                <input type="number" name="numero1" id="numero1" required>
            </div>
            
            <div class="form-group">
                <label for="numero2">Secondo numero:</label>
                <input type="number" name="numero2" id="numero2" required>
            </div>
            
            <div class="button-group">
                <button type="submit" name="operazione" value="somma">Somma</button>
                <button type="submit" name="operazione" value="sottrazione">Sottrazione</button>
                <button type="submit" name="operazione" value="moltiplicazione">Moltiplicazione</button>
                <button type="submit" name="operazione" value="divisione">Divisione</button>
            </div>
        </form>
        
        <%
            String operazione = request.getParameter("operazione");
            if(operazione != null) {
                try {
                    int num1 = Integer.parseInt(request.getParameter("numero1"));
                    int num2 = Integer.parseInt(request.getParameter("numero2"));
                    
                    Calcolatore calc = new Calcolatore();
                    calc.setNumero1(num1);
                    calc.setNumero2(num2);
                    
                    String risultato = "";
                    switch(operazione) {
                        case "somma":
                            risultato = "La somma è: " + calc.somma();
                            break;
                        case "sottrazione":
                            risultato = "La sottrazione è: " + calc.sottrazione();
                            break;
                        case "moltiplicazione":
                            risultato = "La moltiplicazione è: " + calc.moltiplicazione();
                            break;
                        case "divisione":
                            risultato = "La divisione è: " + String.format("%.2f", calc.divisione());
                            break;
                    }
        %>
                    <div class="result">
                        <%= risultato %>
                    </div>
        <%
                } catch(NumberFormatException e) {
        %>
                    <div class="result" style="color: red;">
                        Inserire numeri validi.
                    </div>
        <%
                } catch(ArithmeticException e) {
        %>
                    <div class="result" style="color: red;">
                        <%= e.getMessage() %>
                    </div>
        <%
                }
            }
        %>
    </div>
</body>
</html>