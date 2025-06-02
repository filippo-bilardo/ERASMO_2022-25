# Session e Application in JSP

## Introduzione
Gli oggetti session e application sono fondamentali per la gestione dello stato in un'applicazione JSP. Permettono di memorizzare dati a diversi livelli di scope.

## L'Oggetto Session

### Caratteristiche Principali
- Interfaccia: HttpSession
- Scope: sessione utente
- Durata: fino alla scadenza o logout

### Metodi Principali

1. **Gestione Attributi**
```jsp
<% 
    // Salvataggio dati in sessione
    session.setAttribute("utente", nomeUtente);
    
    // Recupero dati dalla sessione
    String utente = (String)session.getAttribute("utente");
    
    // Rimozione attributo
    session.removeAttribute("utente");
%>
```

2. **Gestione Sessione**
```jsp
<% 
    // ID sessione
    String sessionId = session.getId();
    
    // Tempo massimo inattività (secondi)
    session.setMaxInactiveInterval(1800);
    
    // Invalidazione sessione
    session.invalidate();
%>
```

3. **Verifica Stato**
```jsp
<% 
    // Verifica se la sessione è nuova
    boolean isNew = session.isNew();
    
    // Tempo creazione
    long creationTime = session.getCreationTime();
    
    // Ultimo accesso
    long lastAccess = session.getLastAccessedTime();
%>
```

## L'Oggetto Application

### Caratteristiche Principali
- Interfaccia: ServletContext
- Scope: applicazione
- Condiviso tra tutti gli utenti

### Metodi Principali

1. **Gestione Attributi**
```jsp
<% 
    // Salvataggio dati applicazione
    application.setAttribute("contatore", new Integer(0));
    
    // Recupero dati
    Integer contatore = (Integer)application.getAttribute("contatore");
    
    // Rimozione attributo
    application.removeAttribute("contatore");
%>
```

2. **Informazioni Applicazione**
```jsp
<% 
    // Percorso reale
    String path = application.getRealPath("/");
    
    // Informazioni server
    String serverInfo = application.getServerInfo();
    
    // Versione API
    int majorVersion = application.getMajorVersion();
    int minorVersion = application.getMinorVersion();
%>
```

## Esempi Pratici

### Gestione Login
```jsp
<%
    // Login utente
    String username = request.getParameter("username");
    if(username != null) {
        session.setAttribute("loggedUser", username);
        session.setMaxInactiveInterval(3600); // 1 ora
    }
    
    // Verifica login
    String loggedUser = (String)session.getAttribute("loggedUser");
    if(loggedUser == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
```

### Contatore Visite
```jsp
<%
    // Recupera contatore globale
    Integer visiteTotali = (Integer)application.getAttribute("visite");
    if(visiteTotali == null) {
        visiteTotali = 0;
    }
    
    // Incrementa solo per nuove sessioni
    if(session.isNew()) {
        visiteTotali++;
        application.setAttribute("visite", visiteTotali);
    }
%>
<p>Visite totali: <%= visiteTotali %></p>
```

### Carrello Acquisti
```jsp
<%
    // Inizializza carrello nella sessione
    @SuppressWarnings("unchecked")
    List<String> carrello = (List<String>)session.getAttribute("carrello");
    if(carrello == null) {
        carrello = new ArrayList<>();
        session.setAttribute("carrello", carrello);
    }
    
    // Aggiungi prodotto
    String prodotto = request.getParameter("prodotto");
    if(prodotto != null) {
        carrello.add(prodotto);
    }
%>
```

## Best Practices

1. **Gestione Sessione**
   - Impostare timeout appropriato
   - Pulire dati non necessari
   - Gestire logout correttamente

2. **Dati Applicazione**
   - Usare per dati statici/configurazione
   - Gestire la concorrenza
   - Limitare dimensione dati

3. **Sicurezza**
   - Proteggere dati sensibili
   - Validare session ID
   - Implementare timeout

## Esercizi

1. Sistema di Login
   - Implementa login/logout
   - Gestisci timeout sessione
   - Proteggi pagine private

2. Statistiche Applicazione
   - Traccia utenti online
   - Monitora risorse
   - Visualizza statistiche

3. Carrello E-commerce
   - Gestisci prodotti
   - Calcola totali
   - Mantieni stato ordine

## Quiz

1. Qual è la differenza principale tra session e application?
2. Come si gestisce il timeout di una sessione?
3. Quando è appropriato usare l'oggetto application?

## Conclusione
Una corretta gestione di session e application è cruciale per mantenere lo stato dell'applicazione e fornire un'esperienza utente personalizzata. La comprensione di questi oggetti permette di sviluppare applicazioni web scalabili e sicure.