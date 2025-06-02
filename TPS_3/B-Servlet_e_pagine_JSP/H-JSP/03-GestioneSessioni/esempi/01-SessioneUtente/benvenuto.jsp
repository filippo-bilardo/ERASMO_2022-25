<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Benvenuto - Gestione Sessioni JSP</title>
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
            max-width: 600px;
            margin: 0 auto;
        }
        .welcome-message {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        .session-info {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 4px;
            margin-bottom: 20px;
        }
        .btn {
            background-color: #dc3545;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            display: inline-block;
        }
        .btn:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <%
        // Verifica se l'utente è loggato
        String username = (String) session.getAttribute("username");
        if (username == null) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>
    
    <div class="container">
        <div class="welcome-message">
            Benvenuto, <%= username %>!
        </div>
        
        <div class="session-info">
            <h3>Informazioni sulla Sessione:</h3>
            <p>ID Sessione: <%= session.getId() %></p>
            <p>Tempo di Creazione: <%= new java.util.Date(session.getCreationTime()) %></p>
            <p>Ultimo Accesso: <%= new java.util.Date(session.getLastAccessedTime()) %></p>
        </div>
        
        <a href="logout.jsp" class="btn">Logout</a>
    </div>
</body>
</html>