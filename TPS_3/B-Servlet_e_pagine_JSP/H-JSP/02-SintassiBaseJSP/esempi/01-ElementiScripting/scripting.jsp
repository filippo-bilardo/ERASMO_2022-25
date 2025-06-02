<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Elementi di Scripting JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f0f0f0;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            max-width: 800px;
            margin: 0 auto;
        }
        .section {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 4px;
        }
        .code-example {
            background-color: #f1f1f1;
            padding: 10px;
            border-left: 4px solid #4CAF50;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Esempi di Elementi di Scripting JSP</h1>
        
        <!-- Esempio di Dichiarazione -->
        <%! 
            private int contatore = 0;
            
            public String saluta(String nome) {
                return "Ciao, " + nome + "!";
            }
            
            public int incrementaContatore() {
                return ++contatore;
            }
        %>
        
        <div class="section">
            <h2>1. Dichiarazioni</h2>
            <div class="code-example">
                <p>Valore del contatore: <%= incrementaContatore() %></p>
                <p>Risultato del metodo saluta(): <%= saluta("Utente") %></p>
            </div>
        </div>
        
        <!-- Esempio di Scriptlet -->
        <div class="section">
            <h2>2. Scriptlet</h2>
            <div class="code-example">
                <%
                    String[] colori = {"rosso", "verde", "blu"};
                    out.println("<ul>");
                    for(String colore : colori) {
                        out.println("<li>" + colore + "</li>");
                    }
                    out.println("</ul>");
                    
                    // Esempio di condizione
                    int ora = new java.util.Date().getHours();
                    if(ora < 12) {
                        out.println("<p>Buongiorno!</p>");
                    } else if(ora < 18) {
                        out.println("<p>Buon pomeriggio!</p>");
                    } else {
                        out.println("<p>Buonasera!</p>");
                    }
                %>
            </div>
        </div>
        
        <!-- Esempio di Espressione -->
        <div class="section">
            <h2>3. Espressioni</h2>
            <div class="code-example">
                <p>Data corrente: <%= new java.util.Date() %></p>
                <p>Risultato di 2 + 2 = <%= 2 + 2 %></p>
                <p>Nome del server: <%= application.getServerInfo() %></p>
            </div>
        </div>
    </div>
</body>
</html>