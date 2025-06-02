# Tag JSTL Core

## Introduzione
I tag core di JSTL forniscono le funzionalità essenziali per la logica di business nelle pagine JSP. Questi tag gestiscono controllo di flusso, variabili e URL.

## Controllo di Flusso

### if
```jsp
<c:if test="${condizione}">
    <!-- contenuto condizionale -->
</c:if>
```

### choose/when/otherwise
```jsp
<c:choose>
    <c:when test="${punteggio >= 90}">
        <p>Eccellente</p>
    </c:when>
    <c:when test="${punteggio >= 70}">
        <p>Buono</p>
    </c:when>
    <c:otherwise>
        <p>Sufficiente</p>
    </c:otherwise>
</c:choose>
```

## Iterazione

### forEach
```jsp
<!-- Iterazione su range -->
<c:forEach var="i" begin="1" end="5" step="1">
    <p>Numero: ${i}</p>
</c:forEach>

<!-- Iterazione su collezione -->
<c:forEach items="${prodotti}" var="prodotto" varStatus="status">
    <tr>
        <td>${status.count}</td>
        <td>${prodotto.nome}</td>
        <td>${prodotto.prezzo}</td>
    </tr>
</c:forEach>
```

### forTokens
```jsp
<c:forTokens items="rosso,verde,blu" delims="," var="colore">
    <p>Colore: ${colore}</p>
</c:forTokens>
```

## Gestione Variabili

### set
```jsp
<!-- Variabile semplice -->
<c:set var="nome" value="Mario" scope="session" />

<!-- Oggetto property -->
<c:set target="${utente}" property="nome" value="Mario" />
```

### remove
```jsp
<c:remove var="nome" scope="session" />
```

## URL e Redirect

### url
```jsp
<c:url value="/prodotti" var="prodottiURL">
    <c:param name="categoria" value="elettronica" />
    <c:param name="ordine" value="prezzo" />
</c:url>
<a href="${prodottiURL}">Prodotti Elettronici</a>
```

### redirect
```jsp
<c:redirect url="/login.jsp">
    <c:param name="error" value="timeout" />
</c:redirect>
```

## Gestione Eccezioni

### catch
```jsp
<c:catch var="error">
    <!-- codice che potrebbe generare errori -->
    ${10/0}
</c:catch>

<c:if test="${not empty error}">
    <p>Si è verificato un errore: ${error.message}</p>
</c:if>
```

## Import e Output

### import
```jsp
<c:import url="/header.jsp">
    <c:param name="titolo" value="Homepage" />
</c:import>
```

### out
```jsp
<c:out value="${param.messaggio}" default="Nessun messaggio" escapeXml="true" />
```

## Best Practices

1. **Controllo di Flusso**
   - Preferire choose a if multipli
   - Evitare logica complessa nei test
   - Utilizzare varStatus per info iterazione

2. **Gestione Variabili**
   - Specificare sempre lo scope
   - Rimuovere variabili non necessarie
   - Usare nomi descrittivi

3. **URL e Redirect**
   - Usare sempre c:url per URL
   - Codificare parametri URL
   - Gestire redirect con cura

## Esercizi

1. Lista Dinamica
   - Crea tabella paginata
   - Implementa ordinamento
   - Aggiungi filtri

2. Form Validazione
   - Gestisci errori input
   - Mantieni valori form
   - Mostra messaggi appropriati

3. Menu Navigazione
   - Menu multi-livello
   - Evidenzia pagina attiva
   - Gestisci permessi utente

## Quiz

1. Come si itera su una collezione con forEach?
2. Qual è la differenza tra c:if e c:when?
3. Come si gestiscono i parametri URL con c:url?

## Conclusione
I tag core JSTL forniscono un set completo di strumenti per gestire la logica di business nelle pagine JSP. La loro corretta implementazione porta a codice più pulito e manutenibile.