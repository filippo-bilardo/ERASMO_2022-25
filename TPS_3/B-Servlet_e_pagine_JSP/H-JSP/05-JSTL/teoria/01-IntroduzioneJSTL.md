# Introduzione a JSTL

## Cos'è JSTL?
JSTL (JavaServer Pages Standard Tag Library) è una collezione di tag utili che semplificano lo sviluppo di pagine JSP. Fornisce funzionalità comuni attraverso tag facili da usare.

## Configurazione

### Dipendenze Maven
```xml
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
    <version>1.2</version>
</dependency>
```

### Dichiarazione nella Pagina
```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
```

## Librerie JSTL

### Core Library (c)
- Controllo di flusso
- Gestione variabili
- URL e redirect
- Catch exception

### Formatting Library (fmt)
- Formattazione numeri
- Formattazione date
- Internazionalizzazione

### Functions Library (fn)
- Manipolazione stringhe
- Collezioni
- Array

## Esempi Base

### Variabili e Output
```jsp
<c:set var="nome" value="Mario" />
<p>Ciao ${nome}!</p>

<c:out value="${nome}" default="Ospite" />
```

### Condizioni
```jsp
<c:if test="${not empty nome}">
    <p>Benvenuto ${nome}</p>
</c:if>

<c:choose>
    <c:when test="${età >= 18}">
        <p>Sei maggiorenne</p>
    </c:when>
    <c:otherwise>
        <p>Sei minorenne</p>
    </c:otherwise>
</c:choose>
```

### Cicli
```jsp
<c:forEach var="i" begin="1" end="5">
    <p>Elemento ${i}</p>
</c:forEach>

<c:forEach items="${lista}" var="elemento">
    <p>${elemento}</p>
</c:forEach>
```

## Vantaggi JSTL

1. **Codice Pulito**
   - Riduce codice Java in JSP
   - Sintassi più leggibile
   - Manutenzione semplificata

2. **Standardizzazione**
   - Tag standard per operazioni comuni
   - Compatibilità tra container
   - Best practices incorporate

3. **Sicurezza**
   - Escape automatico
   - Gestione null values
   - Validazione input

## Best Practices

1. **Organizzazione**
   - Dichiarare taglib all'inizio
   - Raggruppare logicamente i tag
   - Commentare sezioni complesse

2. **Performance**
   - Evitare loop annidati
   - Utilizzare scope appropriati
   - Cachare risultati quando possibile

3. **Manutenibilità**
   - Preferire JSTL a scriptlet
   - Utilizzare EL con JSTL
   - Documentare tag custom

## Esercizi

1. Setup Base
   - Configura JSTL in progetto
   - Crea pagina test
   - Verifica funzionamento tag

2. Manipolazione Dati
   - Gestisci lista oggetti
   - Implementa filtri
   - Formatta output

3. Flow Control
   - Crea menu dinamico
   - Gestisci permessi
   - Implementa paginazione

## Quiz

1. Quali sono le principali librerie JSTL?
2. Come si dichiara una variabile con JSTL?
3. Quali vantaggi offre JSTL rispetto agli scriptlet?

## Conclusione
JSTL semplifica notevolmente lo sviluppo JSP fornendo un set standard di tag per operazioni comuni. La sua adozione migliora leggibilità, manutenibilità e sicurezza del codice.