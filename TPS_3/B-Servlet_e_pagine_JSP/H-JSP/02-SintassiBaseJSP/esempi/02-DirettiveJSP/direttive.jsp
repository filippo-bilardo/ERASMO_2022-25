<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date, java.text.SimpleDateFormat" errorPage="errore.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Direttive JSP</title>
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
        .example-box {
            background-color: #f8f9fa;
            padding: 15px;
            margin: 10px 0;
            border-radius: 4px;
            border-left: 4px solid #007bff;
        }
        .header, .footer {
            background-color: #e9ecef;
            padding: 10px;
            margin: 10px 0;
            border-radius: 4px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Esempi di Direttive JSP</h1>
        
        <!-- Include direttiva per l'header -->
        <%@ include file="header.jsp" %>
        
        <div class="example-box">
            <h2>1. Direttiva Page</h2>
            <p>Esempio di utilizzo degli import:</p>
            <%
                Date oggi = new Date();
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
                String dataFormattata = sdf.format(oggi);
            %>
            <p>Data e ora correnti: <%= dataFormattata %></p>
        </div>
        
        <div class="example-box">
            <h2>2. Direttiva Include</h2>
            <p>L'header e il footer sono inclusi usando la direttiva include</p>
        </div>
        
        <div class="example-box">
            <h2>3. Direttiva Taglib</h2>
            <p>Esempio di utilizzo di JSTL:</p>
            <c:set var="nome" value="Utente" />
            <p>Benvenuto, <c:out value="${nome}" />!</p>
            
            <c:if test="${not empty nome}">
                <p>Il nome è stato impostato correttamente.</p>
            </c:if>
        </div>
        
        <!-- Include direttiva per il footer -->
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>