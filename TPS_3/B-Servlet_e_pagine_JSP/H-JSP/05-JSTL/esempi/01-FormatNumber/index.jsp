<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Esempio Formattazione Numeri</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .example { margin: 10px 0; padding: 10px; border: 1px solid #ddd; }
    </style>
</head>
<body>
    <h1>Esempio di Formattazione Numeri con JSTL</h1>
    
    <div class="example">
        <h3>Formattazione Numeri Base</h3>
        <% pageContext.setAttribute("numero", 1234.567); %>
        
        <p>Numero originale: ${numero}</p>
        <p>Numero formattato: <fmt:formatNumber value="${numero}" type="number" /></p>
        <p>Valuta (EUR): <fmt:formatNumber value="${numero}" type="currency" currencyCode="EUR" /></p>
        <p>Percentuale: <fmt:formatNumber value="0.7" type="percent" /></p>
    </div>

    <div class="example">
        <h3>Pattern Personalizzati</h3>
        <p>Pattern #,###.##: <fmt:formatNumber value="${numero}" pattern="#,###.##" /></p>
        <p>Pattern 000000.000: <fmt:formatNumber value="${numero}" pattern="000000.000" /></p>
    </div>

    <div class="example">
        <h3>Numeri Grandi e Piccoli</h3>
        <% 
        pageContext.setAttribute("numeroGrande", 1234567.89);
        pageContext.setAttribute("numeroPiccolo", 0.00123);
        %>
        
        <p>Numero grande: <fmt:formatNumber value="${numeroGrande}" type="number" groupingUsed="true" /></p>
        <p>Numero piccolo: <fmt:formatNumber value="${numeroPiccolo}" type="number" minFractionDigits="5" /></p>
    </div>
</body>
</html>