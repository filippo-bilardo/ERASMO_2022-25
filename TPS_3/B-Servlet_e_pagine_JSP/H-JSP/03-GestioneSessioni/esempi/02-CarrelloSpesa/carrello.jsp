<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carrello della Spesa - JSP</title>
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
        .product-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            margin-bottom: 20px;
        }
        .product-card {
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 4px;
            text-align: center;
        }
        .cart-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .cart-table th, .cart-table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }
        .btn-remove {
            background-color: #dc3545;
        }
        .total {
            text-align: right;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Carrello della Spesa</h1>
        
        <%
            // Inizializza o recupera il carrello dalla sessione
            Map<String, Integer> carrello = (Map<String, Integer>) session.getAttribute("carrello");
            if (carrello == null) {
                carrello = new HashMap<>();
                session.setAttribute("carrello", carrello);
            }
            
            // Gestione delle azioni
            String azione = request.getParameter("azione");
            String prodotto = request.getParameter("prodotto");
            
            if ("aggiungi".equals(azione) && prodotto != null) {
                carrello.merge(prodotto, 1, Integer::sum);
            } else if ("rimuovi".equals(azione) && prodotto != null) {
                carrello.remove(prodotto);
            }
            
            // Lista dei prodotti disponibili
            Map<String, Double> prodotti = new LinkedHashMap<>();
            prodotti.put("Mela", 0.50);
            prodotti.put("Banana", 0.30);
            prodotti.put("Arancia", 0.45);
            prodotti.put("Pera", 0.55);
        %>
        
        <h2>Prodotti Disponibili</h2>
        <div class="product-list">
            <% for (Map.Entry<String, Double> entry : prodotti.entrySet()) { %>
                <div class="product-card">
                    <h3><%= entry.getKey() %></h3>
                    <p>€ <%= String.format("%.2f", entry.getValue()) %></p>
                    <a href="?azione=aggiungi&prodotto=<%= entry.getKey() %>" class="btn">Aggiungi al Carrello</a>
                </div>
            <% } %>
        </div>
        
        <h2>Il tuo Carrello</h2>
        <% if (carrello.isEmpty()) { %>
            <p>Il carrello è vuoto</p>
        <% } else { %>
            <table class="cart-table">
                <tr>
                    <th>Prodotto</th>
                    <th>Quantità</th>
                    <th>Prezzo Unitario</th>
                    <th>Totale</th>
                    <th>Azione</th>
                </tr>
                <% 
                    double totaleCarrello = 0;
                    for (Map.Entry<String, Integer> item : carrello.entrySet()) {
                        String nomeProdotto = item.getKey();
                        int quantita = item.getValue();
                        double prezzoUnitario = prodotti.get(nomeProdotto);
                        double totaleProdotto = prezzoUnitario * quantita;
                        totaleCarrello += totaleProdotto;
                %>
                <tr>
                    <td><%= nomeProdotto %></td>
                    <td><%= quantita %></td>
                    <td>€ <%= String.format("%.2f", prezzoUnitario) %></td>
                    <td>€ <%= String.format("%.2f", totaleProdotto) %></td>
                    <td>
                        <a href="?azione=rimuovi&prodotto=<%= nomeProdotto %>" class="btn btn-remove">Rimuovi</a>
                    </td>
                </tr>
                <% } %>
            </table>
            <div class="total">
                Totale Carrello: € <%= String.format("%.2f", totaleCarrello) %>
            </div>
        <% } %>
    </div>
</body>
</html>