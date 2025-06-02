<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Il Mio Primo JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f0f0f0;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: 0 auto;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
        }
        .time {
            color: #7f8c8d;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Benvenuto in JSP!</h1>
        
        <!-- Esempio di espressione JSP -->
        <div class="time">
            Data e ora attuali: <%= new java.util.Date() %>
        </div>
        
        <%
            // Esempio di scriptlet JSP
            String messaggio = "Questo è il mio primo programma JSP";
            out.println("<p>" + messaggio + "</p>");
            
            // Esempio di ciclo in JSP
            for(int i = 1; i <= 3; i++) {
                out.println("<p>Riga " + i + " generata dinamicamente</p>");
            }
        %>
    </div>
</body>
</html>