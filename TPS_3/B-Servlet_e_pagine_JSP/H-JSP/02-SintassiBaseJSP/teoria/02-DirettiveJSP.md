# Direttive JSP

## Introduzione
Le direttive JSP forniscono istruzioni al container JSP su come gestire la pagina. Sono utilizzate per configurare le impostazioni della pagina, importare classi e definire relazioni tra pagine.

## 1. Direttiva Page `<%@ page ... %>`
Configura le proprietà specifiche della pagina JSP.

### Attributi Principali
```jsp
<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="java.util.*"
         errorPage="error.jsp"
         isErrorPage="false"
         session="true"
         buffer="8kb"
         autoFlush="true"
         isThreadSafe="true"
%>
```

### Descrizione degli Attributi
- **language**: Specifica il linguaggio di scripting (default: "java")
- **contentType**: Tipo MIME e codifica della risposta
- **pageEncoding**: Codifica della pagina JSP
- **import**: Importa package e classi Java
- **errorPage**: Pagina da visualizzare in caso di errori
- **isErrorPage**: Indica se la pagina è una pagina di errore
- **session**: Abilita/disabilita la sessione HTTP
- **buffer**: Dimensione del buffer di output
- **autoFlush**: Gestione automatica del buffer
- **isThreadSafe**: Gestione della concorrenza

## 2. Direttiva Include `<%@ include ... %>`
Include staticamente il contenuto di un altro file nella pagina JSP.

### Sintassi
```jsp
<%@ include file="header.jsp" %>
```

### Caratteristiche
- Inclusione in fase di compilazione
- Il contenuto viene copiato direttamente nel servlet
- Utile per elementi comuni (header, footer, menu)
- Le variabili sono condivise tra i file

### Esempio Pratico
```jsp
<%@ include file="common/header.jsp" %>
<div class="content">
    <!-- Contenuto specifico della pagina -->
</div>
<%@ include file="common/footer.jsp" %>
```

## 3. Direttiva Taglib `<%@ taglib ... %>`
Dichiara una libreria di tag personalizzati da utilizzare nella pagina.

### Sintassi
```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
```

### Caratteristiche
- Permette l'uso di tag personalizzati
- Definisce un prefisso per i tag
- Comune per JSTL e framework

### Esempio con JSTL
```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:forEach var="item" items="${lista}">
    <fmt:formatDate value="${item.data}" pattern="dd/MM/yyyy"/>
</c:forEach>
```

## Best Practices

1. **Direttiva Page**
   - Definire sempre contentType e pageEncoding
   - Importare solo le classi necessarie
   - Configurare errorPage per gestione errori

2. **Direttiva Include**
   - Usare per elementi ripetuti
   - Mantenere i file inclusi semplici
   - Considerare l'impatto sulle performance

3. **Direttiva Taglib**
   - Preferire JSTL a scriptlet
   - Usare prefissi significativi
   - Documentare le librerie utilizzate

## Esempi di Configurazione

### Pagina Base
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Esempio Direttive</title>
</head>
<body>
    <!-- Contenuto pagina -->
</body>
</html>
```

### Pagina di Errore
```jsp
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Errore</title>
</head>
<body>
    <h1>Si è verificato un errore</h1>
    <p>Messaggio: <%= exception.getMessage() %></p>
</body>
</html>
```

## Esercizi
1. Crea una struttura di pagine con header e footer comuni
2. Implementa una pagina di errore personalizzata
3. Utilizza JSTL per formattare date e numeri

## Quiz
1. Quali sono gli attributi essenziali della direttiva page?
2. Quando è preferibile usare include file rispetto a <jsp:include>?
3. Come si configura una pagina per gestire gli errori?

## Conclusione
Le direttive JSP sono strumenti potenti per configurare e strutturare le applicazioni web. Una corretta comprensione e utilizzo delle direttive è fondamentale per sviluppare applicazioni JSP robuste e manutenibili.