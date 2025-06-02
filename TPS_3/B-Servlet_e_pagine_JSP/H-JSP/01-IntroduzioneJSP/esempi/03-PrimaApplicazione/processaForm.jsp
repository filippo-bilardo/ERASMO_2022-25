<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Elaborazione Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f5f5f5;
        }
        .result-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            max-width: 500px;
            margin: 0 auto;
        }
        .success-message {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        .data-row {
            margin-bottom: 10px;
        }
        .label {
            font-weight: bold;
            color: #333;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #666;
            text-decoration: none;
        }
        .back-link:hover {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <%
            // Recupero i parametri dal form
            request.setCharacterEncoding("UTF-8");
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String messaggio = request.getParameter("messaggio");
            
            // Verifica se i dati sono stati ricevuti
            if(nome != null && email != null) {
        %>
            <h2 class="success-message">Dati ricevuti con successo!</h2>
            
            <div class="data-row">
                <span class="label">Nome:</span> 
                <%= nome %>
            </div>
            
            <div class="data-row">
                <span class="label">Email:</span> 
                <%= email %>
            </div>
            
            <% if(messaggio != null && !messaggio.trim().isEmpty()) { %>
                <div class="data-row">
                    <span class="label">Messaggio:</span> 
                    <%= messaggio %>
                </div>
            <% } %>
        <%
            } else {
        %>
            <h2 style="color: #f44336;">Errore nella ricezione dei dati</h2>
            <p>Si prega di compilare tutti i campi obbligatori.</p>
        <%
            }
        %>
        
        <a href="form.jsp" class="back-link">← Torna al form</a>
    </div>
</body>
</html>