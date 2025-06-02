<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestione Cookie JSP</title>
    <style>
        .container { margin: 20px; padding: 20px; }
        .preferences { border: 1px solid #ddd; padding: 15px; margin: 15px 0; }
        .message { color: green; margin: 10px 0; }
        .current-settings { background-color: #f9f9f9; padding: 10px; margin-top: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Gestione Preferenze Utente</h1>
        
        <%
        // Gestione del salvataggio delle preferenze
        String tema = request.getParameter("tema");
        String fontSize = request.getParameter("fontSize");
        String messaggio = "";
        
        if (tema != null && fontSize != null) {
            // Creazione dei cookie
            Cookie temaCookie = new Cookie("tema", tema);
            Cookie fontSizeCookie = new Cookie("fontSize", fontSize);
            
            // Impostazione della durata dei cookie (30 giorni)
            temaCookie.setMaxAge(60*60*24*30);
            fontSizeCookie.setMaxAge(60*60*24*30);
            
            // Aggiunta dei cookie alla risposta
            response.addCookie(temaCookie);
            response.addCookie(fontSizeCookie);
            
            messaggio = "Preferenze salvate con successo!";
        }
        
        // Recupero dei valori dei cookie
        String temaCorrente = "chiaro";
        String fontSizeCorrente = "16";
        
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("tema")) {
                    temaCorrente = cookie.getValue();
                }
                if (cookie.getName().equals("fontSize")) {
                    fontSizeCorrente = cookie.getValue();
                }
            }
        }
        %>
        
        <!-- Form per le preferenze -->
        <div class="preferences">
            <h2>Imposta le tue Preferenze</h2>
            <form method="post" action="">
                <p>
                    <label for="tema">Tema:</label>
                    <select name="tema" id="tema">
                        <option value="chiaro" <%= temaCorrente.equals("chiaro") ? "selected" : "" %>>Chiaro</option>
                        <option value="scuro" <%= temaCorrente.equals("scuro") ? "selected" : "" %>>Scuro</option>
                    </select>
                </p>
                
                <p>
                    <label for="fontSize">Dimensione Testo:</label>
                    <select name="fontSize" id="fontSize">
                        <option value="14" <%= fontSizeCorrente.equals("14") ? "selected" : "" %>>Piccolo</option>
                        <option value="16" <%= fontSizeCorrente.equals("16") ? "selected" : "" %>>Medio</option>
                        <option value="18" <%= fontSizeCorrente.equals("18") ? "selected" : "" %>>Grande</option>
                    </select>
                </p>
                
                <input type="submit" value="Salva Preferenze">
            </form>
        </div>
        
        <!-- Visualizzazione del messaggio -->
        <% if (!messaggio.isEmpty()) { %>
            <p class="message"><%= messaggio %></p>
        <% } %>
        
        <!-- Visualizzazione delle impostazioni correnti -->
        <div class="current-settings">
            <h2>Impostazioni Attuali</h2>
            <p>Tema: <%= temaCorrente %></p>
            <p>Dimensione Testo: <%= fontSizeCorrente %>px</p>
        </div>
        
        <!-- Applicazione delle preferenze -->
        <style>
            body {
                background-color: <%= temaCorrente.equals("scuro") ? "#333" : "#fff" %>;
                color: <%= temaCorrente.equals("scuro") ? "#fff" : "#333" %>;
                font-size: <%= fontSizeCorrente %>px;
            }
        </style>
    </div>
</body>
</html>