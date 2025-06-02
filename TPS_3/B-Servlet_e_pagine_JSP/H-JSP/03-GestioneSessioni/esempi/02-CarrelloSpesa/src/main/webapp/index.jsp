<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carrello della Spesa</title>
    <style>
        .container { margin: 20px; padding: 20px; }
        .product { border: 1px solid #ddd; padding: 10px; margin: 10px 0; }
        .cart { background-color: #f9f9f9; padding: 15px; margin-top: 20px; }
        .message { color: green; margin: 10px 0; }
        .error { color: red; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Negozio Online</h1>
        
        <%
        // Inizializzazione della sessione del carrello
        @SuppressWarnings("unchecked")
        List<String> carrello = (List<String>) session.getAttribute("carrello");
        if (carrello == null) {
            carrello = new ArrayList<>();
            session.setAttribute("carrello", carrello);
        }
        
        // Gestione dell'aggiunta di prodotti
        String prodotto = request.getParameter("prodotto");
        String messaggio = "";
        
        if (prodotto != null && !prodotto.trim().isEmpty()) {
            carrello.add(prodotto);
            messaggio = "Prodotto aggiunto al carrello!";
        }
        
        // Gestione della rimozione di prodotti
        String rimuovi = request.getParameter("rimuovi");
        if (rimuovi != null) {
            carrello.remove(rimuovi);
            messaggio = "Prodotto rimosso dal carrello!";
        }
        %>
        
        <!-- Form per aggiungere prodotti -->
        <div class="product">
            <h2>Aggiungi Prodotto</h2>
            <form method="post" action="">
                <input type="text" name="prodotto" placeholder="Nome prodotto" required>
                <input type="submit" value="Aggiungi al Carrello">
            </form>
        </div>
        
        <!-- Visualizzazione del messaggio -->
        <% if (!messaggio.isEmpty()) { %>
            <p class="message"><%= messaggio %></p>
        <% } %>
        
        <!-- Visualizzazione del carrello -->
        <div class="cart">
            <h2>Il tuo Carrello</h2>
            <% if (carrello.isEmpty()) { %>
                <p>Il carrello è vuoto</p>
            <% } else { %>
                <ul>
                <% for (String item : carrello) { %>
                    <li>
                        <%= item %>
                        <form method="post" action="" style="display: inline;">
                            <input type="hidden" name="rimuovi" value="<%= item %>">
                            <input type="submit" value="Rimuovi">
                        </form>
                    </li>
                <% } %>
                </ul>
                <p>Totale prodotti: <%= carrello.size() %></p>
            <% } %>
        </div>
    </div>
</body>
</html>