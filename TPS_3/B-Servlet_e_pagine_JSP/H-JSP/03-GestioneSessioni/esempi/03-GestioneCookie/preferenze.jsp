<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestione Cookie - Preferenze Utente</title>
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
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        select, input[type="color"] {
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
        }
        .preferences {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 4px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <%
        // Gestione del salvataggio delle preferenze
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String tema = request.getParameter("tema");
            String colore = request.getParameter("colore");
            String lingua = request.getParameter("lingua");
            
            // Creazione dei cookie
            Cookie cookieTema = new Cookie("tema", tema);
            Cookie cookieColore = new Cookie("colore", colore);
            Cookie cookieLingua = new Cookie("lingua", lingua);
            
            // Impostazione della durata dei cookie (30 giorni)
            int durata = 30 * 24 * 60 * 60;
            cookieTema.setMaxAge(durata);
            cookieColore.setMaxAge(durata);
            cookieLingua.setMaxAge(durata);
            
            // Aggiunta dei cookie alla risposta
            response.addCookie(cookieTema);
            response.addCookie(cookieColore);
            response.addCookie(cookieLingua);
        }
        
        // Recupero dei valori dei cookie
        String temaCorrente = "chiaro";
        String coloreCorrente = "#ffffff";
        String linguaCorrente = "it";
        
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("tema".equals(cookie.getName())) {
                    temaCorrente = cookie.getValue();
                } else if ("colore".equals(cookie.getName())) {
                    coloreCorrente = cookie.getValue();
                } else if ("lingua".equals(cookie.getName())) {
                    linguaCorrente = cookie.getValue();
                }
            }
        }
    %>
    
    <div class="container">
        <h1>Preferenze Utente</h1>
        
        <form method="post" action="preferenze.jsp">
            <div class="form-group">
                <label for="tema">Tema:</label>
                <select id="tema" name="tema">
                    <option value="chiaro" <%= "chiaro".equals(temaCorrente) ? "selected" : "" %>>Chiaro</option>
                    <option value="scuro" <%= "scuro".equals(temaCorrente) ? "selected" : "" %>>Scuro</option>
                </select>
            </div>
            
            <div class="form-group">
                <label for="colore">Colore di Sfondo:</label>
                <input type="color" id="colore" name="colore" value="<%= coloreCorrente %>">
            </div>
            
            <div class="form-group">
                <label for="lingua">Lingua:</label>
                <select id="lingua" name="lingua">
                    <option value="it" <%= "it".equals(linguaCorrente) ? "selected" : "" %>>Italiano</option>
                    <option value="en" <%= "en".equals(linguaCorrente) ? "selected" : "" %>>English</option>
                    <option value="fr" <%= "fr".equals(linguaCorrente) ? "selected" : "" %>>Français</option>
                </select>
            </div>
            
            <button type="submit" class="btn">Salva Preferenze</button>
        </form>
        
        <div class="preferences">
            <h2>Preferenze Attuali:</h2>
            <p><strong>Tema:</strong> <%= temaCorrente %></p>
            <p><strong>Colore:</strong> <span style="display:inline-block; width:20px; height:20px; background-color:<%= coloreCorrente %>; border:1px solid #000; vertical-align:middle;"></span> <%= coloreCorrente %></p>
            <p><strong>Lingua:</strong> <%= linguaCorrente %></p>
        </div>
    </div>
</body>
</html>