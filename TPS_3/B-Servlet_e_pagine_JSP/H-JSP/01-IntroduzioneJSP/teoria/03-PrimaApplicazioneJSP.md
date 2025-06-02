# Creazione della Prima Applicazione JSP

## Struttura di Base di un'Applicazione Web

### Organizzazione delle Directory
```plaintext
WebApp/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/example/
│       └── webapp/
│           ├── WEB-INF/
│           │   ├── web.xml
│           │   └── lib/
│           ├── css/
│           ├── js/
│           └── index.jsp
```

### File Essenziali
1. **web.xml** (Deployment Descriptor)
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee
                                http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
            version="4.0">
       <display-name>Prima Applicazione JSP</display-name>
       <welcome-file-list>
           <welcome-file>index.jsp</welcome-file>
       </welcome-file-list>
   </web-app>
   ```

2. **index.jsp** (Pagina Principale)
   ```jsp
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <!DOCTYPE html>
   <html>
   <head>
       <meta charset="UTF-8">
       <title>Prima Applicazione JSP</title>
   </head>
   <body>
       <h1>Benvenuto in JSP!</h1>
       <p>Ora del server: <%= new java.util.Date() %></p>
   </body>
   </html>
   ```

## Ciclo di Vita di una Pagina JSP

### 1. Fase di Traduzione
- JSP viene convertito in Servlet
- Generazione del codice Java
- Compilazione in bytecode

### 2. Fase di Inizializzazione
- Caricamento della classe
- Esecuzione del metodo jspInit()
- Preparazione delle risorse

### 3. Fase di Servizio
- Gestione delle richieste
- Esecuzione del metodo _jspService()
- Generazione della risposta

### 4. Fase di Distruzione
- Chiamata a jspDestroy()
- Rilascio delle risorse
- Pulizia della memoria

## Elementi JSP Fondamentali

### 1. Direttive
```jsp
<%@ page ... %>     <!-- Configurazione della pagina -->
<%@ include ... %>  <!-- Inclusione di file -->
<%@ taglib ... %>   <!-- Dichiarazione tag library -->
```

### 2. Scriptlet
```jsp
<% 
    // Codice Java
    String messaggio = "Ciao Mondo";
    out.println(messaggio);
%>
```

### 3. Espressioni
```jsp
<%= new java.util.Date() %>  <!-- Output diretto -->
```

### 4. Dichiarazioni
```jsp
<%! 
    // Dichiarazione di variabili e metodi
    private int contatore = 0;
    public int incrementa() {
        return ++contatore;
    }
%>
```

## Deployment su Tomcat

### 1. Preparazione del WAR
- Compilare l'applicazione
- Creare il file WAR
- Verificare la struttura

### 2. Deployment
1. **Metodo Manuale**
   - Copiare il WAR in webapps
   - Riavviare Tomcat
   - Verificare i log

2. **Tramite Manager**
   - Accedere alla console
   - Utilizzare deploy GUI
   - Monitorare lo stato

## Quiz di Autovalutazione

1. Quale directory contiene il deployment descriptor?
   - a) src/
   - b) WEB-INF/
   - c) webapp/
   - d) lib/

2. Quale tag JSP viene utilizzato per le direttive?
   - a) <% %>
   - b) <%= %>
   - c) <%@ %>
   - d) <%! %>

3. In quale fase viene generato il servlet?
   - a) Inizializzazione
   - b) Traduzione
   - c) Servizio
   - d) Distruzione

4. Dove vanno posizionate le librerie JAR esterne?
   - a) src/lib/
   - b) webapp/lib/
   - c) WEB-INF/lib/
   - d) WEB-INF/classes/

## Best Practices

1. **Organizzazione del Codice**
   - Separare logica e presentazione
   - Utilizzare package appropriati
   - Mantenere una struttura coerente

2. **Gestione Risorse**
   - Chiudere sempre le risorse
   - Utilizzare try-with-resources
   - Gestire le eccezioni

3. **Sicurezza**
   - Validare gli input
   - Proteggere WEB-INF
   - Utilizzare HTTPS

## Tips & Tricks

1. **Sviluppo**
   - Utilizzare hot deployment
   - Configurare auto-reload
   - Mantenere backup

2. **Debug**
   - Usare commenti JSP
   - Verificare i log
   - Testare in locale

## Soluzioni Quiz
1. b) WEB-INF/
2. c) <%@ %>
3. b) Traduzione
4. c) WEB-INF/lib/

## Esercizi Proposti

1. **Base**
   - Creare una pagina JSP con contatore visite
   - Implementare un form semplice
   - Mostrare informazioni di sistema

2. **Intermedio**
   - Creare una pagina con inclusione file
   - Implementare la gestione errori
   - Utilizzare JavaBeans

3. **Avanzato**
   - Implementare autenticazione
   - Creare una connessione database
   - Gestire sessioni utente

---

### Navigazione
- [📑 Indice](<../../README.md>)
- [⬅️ Ambiente di Sviluppo](<02-AmbienteSviluppo.md>)
- [➡️ README](<../README.md>)