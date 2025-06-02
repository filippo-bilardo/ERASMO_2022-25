# Formattazione e Funzioni JSTL

## Introduzione
La libreria JSTL fornisce potenti strumenti per la formattazione di dati e la manipolazione di stringhe attraverso le librerie fmt e fn.

## Formattazione Numeri

### Numeri Base
```jsp
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:formatNumber value="1234.567" type="number" />
<fmt:formatNumber value="1234.567" type="currency" currencyCode="EUR" />
<fmt:formatNumber value="0.7" type="percent" />
```

### Pattern Personalizzati
```jsp
<fmt:formatNumber value="1234.567" pattern="#,###.##" />
<fmt:formatNumber value="1234.567" pattern="000000.000" />
```

## Formattazione Date

### Date Base
```jsp
<fmt:formatDate value="${now}" type="date" />
<fmt:formatDate value="${now}" type="time" />
<fmt:formatDate value="${now}" type="both" />
```

### Stili e Pattern
```jsp
<fmt:formatDate value="${now}" dateStyle="full" />
<fmt:formatDate value="${now}" pattern="dd/MM/yyyy HH:mm" />
```

## Internazionalizzazione

### Impostazione Locale
```jsp
<fmt:setLocale value="it_IT" />
<fmt:setTimeZone value="Europe/Rome" />

<fmt:formatDate value="${now}" dateStyle="full" />
<fmt:formatNumber value="1234.56" type="currency" />
```

### Bundle Messaggi
```jsp
<fmt:setBundle basename="messages" />
<fmt:message key="welcome" />
<fmt:message key="greeting">
    <fmt:param value="${user.name}" />
</fmt:message>
```

## Funzioni String

### Manipolazione Base
```jsp
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="str" value="Hello World" />

Lunghezza: ${fn:length(str)}
Maiuscolo: ${fn:toUpperCase(str)}
Minuscolo: ${fn:toLowerCase(str)}
```

### Ricerca e Sostituzione
```jsp
<c:if test="${fn:contains(str, 'Hello')}">
    Contiene 'Hello'
</c:if>

<c:set var="newStr" value="${fn:replace(str, 'Hello', 'Hi')}" />
<c:set var="subStr" value="${fn:substring(str, 0, 5)}" />
```

### Split e Join
```jsp
<c:set var="str" value="rosso,verde,blu" />
<c:set var="colori" value="${fn:split(str, ',')}"/>

<c:forEach items="${colori}" var="colore">
    <p>${colore}</p>
</c:forEach>

<c:set var="joined" value="${fn:join(colori, '-')}" />
```

## Funzioni Custom

### Definizione TLD
```xml
<function>
    <name>reverseString</name>
    <function-class>com.example.StringUtils</function-class>
    <function-signature>java.lang.String reverse(java.lang.String)</function-signature>
</function>
```

### Implementazione Java
```java
public class StringUtils {
    public static String reverse(String input) {
        return new StringBuilder(input).reverse().toString();
    }
}
```

### Utilizzo
```jsp
<%@ taglib prefix="custom" uri="/WEB-INF/custom.tld" %>
<p>${custom:reverseString("Hello")}</p>
```

## Best Practices

1. **Formattazione**
   - Utilizzare pattern appropriati
   - Considerare localizzazione
   - Gestire null values

2. **Performance**
   - Cachare risultati costosi
   - Evitare operazioni ripetute
   - Ottimizzare pattern regex

3. **Manutenibilità**
   - Centralizzare pattern comuni
   - Documentare funzioni custom
   - Seguire convenzioni naming

## Esercizi

1. Sistema Multi-lingua
   - Implementa switch lingua
   - Gestisci bundle messaggi
   - Formatta date/numeri

2. Utility Stringhe
   - Crea funzioni custom
   - Implementa validatori
   - Gestisci formattazione

3. Dashboard Dati
   - Formatta valute
   - Visualizza date
   - Filtra e ordina

## Quiz

1. Come si formatta una data in un formato specifico?
2. Come si implementa una funzione custom?
3. Quali sono i principali metodi di manipolazione stringhe?

## Conclusione
Le funzionalità di formattazione e le funzioni JSTL forniscono strumenti potenti per la manipolazione e presentazione dei dati. La loro corretta implementazione migliora significativamente la qualità e la manutenibilità delle applicazioni JSP.