<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Gestione Sessioni JSP</title>
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
            max-width: 400px;
            margin: 0 auto;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .error {
            color: #dc3545;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Accesso Utente</h2>
        
        <%
            // Verifica se l'utente è già loggato
            if (session.getAttribute("username") != null) {
                response.sendRedirect("benvenuto.jsp");
                return;
            }
            
            // Gestione del tentativo di login
            String error = "";
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                
                // Simulazione di autenticazione (in un'applicazione reale, usare un database)
                if ("admin".equals(username) && "password123".equals(password)) {
                    session.setAttribute("username", username);
                    response.sendRedirect("benvenuto.jsp");
                    return;
                } else {
                    error = "Username o password non validi";
                }
            }
        %>
        
        <% if (!error.isEmpty()) { %>
            <div class="error"><%= error %></div>
        <% } %>
        
        <form method="post" action="login.jsp">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <button type="submit" class="btn">Accedi</button>
        </form>
    </div>
</body>
</html>