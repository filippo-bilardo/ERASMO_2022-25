<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Esempio Funzioni String</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .example { margin: 10px 0; padding: 10px; border: 1px solid #ddd; }
        .result { color: #0066cc; font-weight: bold; }
    </style>
</head>
<body>
    <h1>Esempio di Funzioni String con JSTL</h1>
    
    <div class="example">
        <h3>Manipolazione Base</h3>
        <c:set var="str" value="Hello World" />
        
        <p>Stringa originale: <span class="result">${str}</span></p>
        <p>Lunghezza: <span class="result">${fn:length(str)}</span></p>
        <p>Maiuscolo: <span class="result">${fn:toUpperCase(str)}</span></p>
        <p>Minuscolo: <span class="result">${fn:toLowerCase(str)}</span></p>
    </div>

    <div class="example">
        <h3>Ricerca e Sostituzione</h3>
        <p>Contiene 'Hello': <span class="result">${fn:contains(str, 'Hello')}</span></p>
        <p>Contiene 'hi': <span class="result">${fn:contains(str, 'hi')}</span></p>
        <p>Sostituisci 'Hello' con 'Hi': <span class="result">${fn:replace(str, 'Hello', 'Hi')}</span></p>
        <p>Primi 5 caratteri: <span class="result">${fn:substring(str, 0, 5)}</span></p>
    </div>

    <div class="example">
        <h3>Split e Join</h3>
        <c:set var="colori" value="rosso,verde,blu" />
        <p>Stringa originale: <span class="result">${colori}</span></p>
        
        <p>Array dopo split:</p>
        <c:forEach items="${fn:split(colori, ',')}"
                   var="colore">
            <span class="result">${colore}</span><br>
        </c:forEach>
        
        <p>Join con '-': <span class="result">${fn:join(fn:split(colori, ','), '-')}</span></p>
    </div>

    <div class="example">
        <h3>Trim e Posizione</h3>
        <c:set var="strConSpazi" value="   testo con spazi   " />
        <p>Stringa con spazi: '<span class="result">${strConSpazi}</span>'</p>
        <p>Dopo trim: '<span class="result">${fn:trim(strConSpazi)}</span>'</p>
        
        <c:set var="frase" value="La programmazione è divertente" />
        <p>Indice di 'è': <span class="result">${fn:indexOf(frase, 'è')}</span></p>
    </div>
</body>
</html>