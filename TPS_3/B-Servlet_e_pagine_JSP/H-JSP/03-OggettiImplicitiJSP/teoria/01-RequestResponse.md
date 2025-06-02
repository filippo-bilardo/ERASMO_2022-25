# Request e Response in JSP

## Introduzione
Gli oggetti request e response sono fondamentali in JSP per gestire le richieste HTTP in arrivo e le risposte da inviare al client.

## L'Oggetto Request

### Caratteristiche Principali
- Interfaccia: HttpServletRequest
- Scope: request
- Contiene informazioni sulla richiesta HTTP

### Metodi Principali

1. **Parametri della Richiesta**
```jsp
<% 
    String nome = request.getParameter("nome");
    String[] hobby = request.getParameterValues("hobby");
    Map<String,String[]> tutti = request.getParameterMap();
%>
```

2. **Header HTTP**
```jsp
<% 
    String userAgent = request.getHeader("User-Agent");
    Enumeration<String> headers = request.getHeaderNames();
%>
```

3. **Informazioni del Client**
```jsp
<% 
    String ipClient = request.getRemoteAddr();
    String metodo = request.getMethod();
    String uri = request.getRequestURI();
%>
```

4. **Attributi**
```jsp
<% 
    request.setAttribute("attributo", valore);
    Object valore = request.getAttribute("attributo");
%>
```

## L'Oggetto Response

### Caratteristiche Principali
- Interfaccia: HttpServletResponse
- Gestisce la risposta HTTP al client
- Permette di impostare header e contenuto

### Metodi Principali

1. **Gestione Header**
```jsp
<% 
    response.setContentType("text/html; charset=UTF-8");
    response.setHeader("Cache-Control", "no-cache");
    response.addCookie(new Cookie("user", "nome"));
%>
```

2. **Reindirizzamento**
```jsp
<% 
    // Redirect a URL esterno
    response.sendRedirect("http://www.esempio.it");
    
    // Redirect interno
    response.sendRedirect("pagina.jsp");
%>
```

3. **Gestione Status**
```jsp
<% 
    response.setStatus(200); // OK
    response.sendError(404, "Pagina non trovata");
%>
```

## Esempi Pratici

### Form Processing
```jsp
<%
    // Gestione form POST
    if("POST".equals(request.getMethod())) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if(username != null && password != null) {
            // Elaborazione dati
            request.setAttribute("messaggio", "Login effettuato");
        }
    }
%>
```

### Download File
```jsp
<%
    // Configurazione per download file
    response.setContentType("application/pdf");
    response.setHeader("Content-Disposition", 
                      "attachment; filename=\"documento.pdf\"");
    
    // Stream del file
    OutputStream out = response.getOutputStream();
    // ... scrittura file ...
%>
```

### Validazione Input
```jsp
<%
    String eta = request.getParameter("eta");
    String errore = null;
    
    try {
        int etaNum = Integer.parseInt(eta);
        if(etaNum < 18) {
            response.sendRedirect("minorenne.jsp");
            return;
        }
    } catch(NumberFormatException e) {
        errore = "Età non valida";
        request.setAttribute("errore", errore);
    }
%>
```

## Best Practices

1. **Sicurezza**
   - Validare sempre gli input
   - Sanitizzare i dati prima dell'uso
   - Proteggere da XSS e injection

2. **Performance**
   - Limitare la dimensione dei dati
   - Usare buffer appropriati
   - Gestire le cache correttamente

3. **Manutenibilità**
   - Centralizzare la logica di validazione
   - Usare costanti per i nomi dei parametri
   - Documentare i parametri attesi

## Esercizi

1. Form di Registrazione
   - Crea un form con validazione
   - Gestisci errori di input
   - Mostra messaggi appropriati

2. Upload File
   - Implementa upload multipart
   - Valida tipo e dimensione
   - Gestisci errori

3. API REST
   - Crea endpoint GET/POST
   - Gestisci JSON/XML
   - Implementa status codes

## Quiz

1. Come si recuperano parametri multipli da una request?
2. Quali sono i principali metodi HTTP supportati?
3. Come si gestisce il redirect in JSP?

## Conclusione
Una corretta gestione di request e response è fondamentale per sviluppare applicazioni web robuste e sicure. La comprensione di questi oggetti permette di implementare funzionalità avanzate e gestire efficacemente l'interazione con gli utenti.