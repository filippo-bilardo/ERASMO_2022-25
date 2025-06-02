# Altri Oggetti Impliciti JSP

## Introduzione
Oltre a request, response, session e application, JSP fornisce altri oggetti impliciti importanti: out, config, pageContext, page ed exception.

## L'Oggetto out

### Caratteristiche Principali
- Classe: JspWriter
- Buffer di output predefinito
- Gestisce l'output della pagina

### Metodi Principali
```jsp
<% 
    // Scrittura nel buffer
    out.print("Hello ");
    out.println("World");
    
    // Gestione buffer
    out.flush();
    out.clear();
    
    // Informazioni buffer
    int size = out.getBufferSize();
    int remaining = out.getRemaining();
%>
```

## L'Oggetto config

### Caratteristiche Principali
- Interfaccia: ServletConfig
- Configurazione servlet
- Parametri di inizializzazione

### Utilizzo
```jsp
<% 
    // Recupero parametri di inizializzazione
    String param = config.getInitParameter("parametro");
    
    // Nome servlet
    String servletName = config.getServletName();
    
    // Context servlet
    ServletContext context = config.getServletContext();
%>
```

## L'Oggetto pageContext

### Caratteristiche Principali
- Classe: PageContext
- Accesso a tutti gli oggetti impliciti
- Gestione attributi di diverso scope

### Metodi Principali

1. **Accesso Oggetti Impliciti**
```jsp
<% 
    HttpServletRequest req = 
        (HttpServletRequest)pageContext.getRequest();
    HttpSession sess = pageContext.getSession();
    ServletContext app = pageContext.getServletContext();
%>
```

2. **Gestione Attributi**
```jsp
<% 
    // Impostazione attributi
    pageContext.setAttribute("nome", "valore", PageContext.PAGE_SCOPE);
    pageContext.setAttribute("nome", "valore", PageContext.REQUEST_SCOPE);
    pageContext.setAttribute("nome", "valore", PageContext.SESSION_SCOPE);
    pageContext.setAttribute("nome", "valore", PageContext.APPLICATION_SCOPE);
    
    // Recupero attributi
    Object value = pageContext.getAttribute("nome", PageContext.PAGE_SCOPE);
    
    // Trova attributo in qualsiasi scope
    Object value = pageContext.findAttribute("nome");
%>
```

## L'Oggetto page

### Caratteristiche Principali
- Riferimento this della servlet
- Raramente utilizzato
- Equivalente a this in Java

### Utilizzo Base
```jsp
<% 
    // Riferimento alla pagina corrente
    Object currentPage = page;
    
    // Informazioni classe
    String className = page.getClass().getName();
%>
```

## L'Oggetto exception

### Caratteristiche Principali
- Disponibile solo in pagine di errore
- Contiene informazioni sull'eccezione
- Richiede isErrorPage="true"

### Gestione Errori
```jsp
<%@ page isErrorPage="true" %>
<% 
    // Informazioni eccezione
    String message = exception.getMessage();
    String type = exception.getClass().getName();
    
    // Stack trace
    StringWriter sw = new StringWriter();
    exception.printStackTrace(new PrintWriter(sw));
    String stackTrace = sw.toString();
%>
```

## Esempi Pratici

### Gestione Output Bufferizzato
```jsp
<%
    // Controllo dimensione buffer
    if(out.getRemaining() < 1000) {
        out.flush();
    }
    
    // Scrittura condizionale
    if(condition) {
        out.println("Condizione vera");
    } else {
        out.println("Condizione falsa");
    }
%>
```

### Gestione Multi-Scope
```jsp
<%
    // Salva attributo nello scope appropriato
    String userId = request.getParameter("userId");
    if(userId != null) {
        if(request.getParameter("remember") != null) {
            pageContext.setAttribute("userId", userId, 
                                    PageContext.SESSION_SCOPE);
        } else {
            pageContext.setAttribute("userId", userId, 
                                    PageContext.REQUEST_SCOPE);
        }
    }
%>
```

### Pagina di Errore Personalizzata
```jsp
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Errore</title>
</head>
<body>
    <h1>Si è verificato un errore</h1>
    <p>Tipo: <%= exception.getClass().getName() %></p>
    <p>Messaggio: <%= exception.getMessage() %></p>
    <% if(application.getInitParameter("debugMode").equals("true")) { %>
        <pre><%= stackTrace %></pre>
    <% } %>
</body>
</html>
```

## Best Practices

1. **Gestione Output**
   - Usare buffer appropriati
   - Flush quando necessario
   - Gestire overflow buffer

2. **Configurazione**
   - Centralizzare parametri config
   - Documentare parametri
   - Validare valori

3. **Gestione Errori**
   - Implementare pagine errore
   - Logging appropriato
   - Messaggi user-friendly

## Esercizi

1. Buffer Management
   - Implementa output bufferizzato
   - Gestisci overflow
   - Ottimizza performance

2. Error Handling
   - Crea pagine errore
   - Implementa logging
   - Gestisci diversi tipi errore

3. Scope Management
   - Gestisci attributi multi-scope
   - Implementa ricerca attributi
   - Ottimizza accesso dati

## Quiz

1. Quando è meglio usare out invece di espressioni JSP?
2. Come si gestiscono attributi in diversi scope?
3. Quali sono i vantaggi del buffering?

## Conclusione
Gli oggetti impliciti JSP forniscono funzionalità essenziali per lo sviluppo di applicazioni web. La loro corretta comprensione e utilizzo è fondamentale per creare applicazioni robuste ed efficienti.