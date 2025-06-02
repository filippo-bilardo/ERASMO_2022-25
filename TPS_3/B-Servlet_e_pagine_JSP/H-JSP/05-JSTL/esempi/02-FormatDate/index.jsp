<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Esempio Formattazione Date</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .example { margin: 10px 0; padding: 10px; border: 1px solid #ddd; }
    </style>
</head>
<body>
    <h1>Esempio di Formattazione Date con JSTL</h1>
    
    <% pageContext.setAttribute("now", new Date()); %>
    
    <div class="example">
        <h3>Formattazione Date Base</h3>
        <p>Data: <fmt:formatDate value="${now}" type="date" /></p>
        <p>Ora: <fmt:formatDate value="${now}" type="time" /></p>
        <p>Data e Ora: <fmt:formatDate value="${now}" type="both" /></p>
    </div>

    <div class="example">
        <h3>Stili di Formattazione</h3>
        <p>Stile Breve: <fmt:formatDate value="${now}" dateStyle="short" /></p>
        <p>Stile Medio: <fmt:formatDate value="${now}" dateStyle="medium" /></p>
        <p>Stile Lungo: <fmt:formatDate value="${now}" dateStyle="long" /></p>
        <p>Stile Completo: <fmt:formatDate value="${now}" dateStyle="full" /></p>
    </div>

    <div class="example">
        <h3>Pattern Personalizzati</h3>
        <p>Pattern dd/MM/yyyy: <fmt:formatDate value="${now}" pattern="dd/MM/yyyy" /></p>
        <p>Pattern dd-MM-yyyy HH:mm: <fmt:formatDate value="${now}" pattern="dd-MM-yyyy HH:mm" /></p>
        <p>Pattern EEEE, d MMMM yyyy: <fmt:formatDate value="${now}" pattern="EEEE, d MMMM yyyy" /></p>
    </div>

    <div class="example">
        <h3>Internazionalizzazione</h3>
        <fmt:setLocale value="it_IT"/>
        <p>Data in Italiano: <fmt:formatDate value="${now}" dateStyle="full" /></p>
        
        <fmt:setLocale value="en_US"/>
        <p>Data in Inglese: <fmt:formatDate value="${now}" dateStyle="full" /></p>
        
        <fmt:setLocale value="fr_FR"/>
        <p>Data in Francese: <fmt:formatDate value="${now}" dateStyle="full" /></p>
    </div>
</body>
</html>