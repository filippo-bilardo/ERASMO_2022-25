# Gestione dei Form in JSP

## Introduzione
La gestione dei form è un aspetto fondamentale nello sviluppo di applicazioni web con JSP. I form permettono di raccogliere input dagli utenti e processarli lato server.

## Struttura Base di un Form

### Form HTML
```html
<form action="processaForm.jsp" method="POST">
    <input type="text" name="nome" required>
    <input type="submit" value="Invia">
</form>
```

### Attributi Principali
- **action**: URL della pagina che processerà i dati
- **method**: metodo HTTP (GET o POST)
- **enctype**: tipo di codifica dei dati

## Tipi di Input

### Input di Testo
```html
<input type="text" name="username">
<input type="password" name="password">
<textarea name="commento"></textarea>
```

### Selezioni
```html
<select name="città">
    <option value="MI">Milano</option>
    <option value="RM">Roma</option>
</select>

<input type="checkbox" name="interessi" value="sport">
<input type="radio" name="genere" value="M">
```

### File Upload
```html
<form enctype="multipart/form-data">
    <input type="file" name="documento">
</form>
```

## Processamento dei Dati

### Lettura Parametri
```jsp
<%
    String nome = request.getParameter("nome");
    String[] interessi = request.getParameterValues("interessi");
%>
```

### Validazione Input
```jsp
<%
    String email = request.getParameter("email");
    String errore = null;
    
    if(email == null || email.trim().isEmpty()) {
        errore = "Email obbligatoria";
    } else if(!email.contains("@")) {
        errore = "Email non valida";
    }
%>
```

### Upload File
```jsp
<%@ page import="org.apache.commons.fileupload.*" %>
<%
    if(FileUpload.isMultipartContent(request)) {
        // Processamento file
        DiskFileUpload upload = new DiskFileUpload();
        List items = upload.parseRequest(request);
    }
%>
```

## Best Practices

1. **Sicurezza**
   - Validare sempre gli input
   - Utilizzare HTTPS per dati sensibili
   - Implementare CSRF protection

2. **Usabilità**
   - Fornire feedback immediato
   - Utilizzare label appropriate
   - Implementare validazione client-side

3. **Manutenibilità**
   - Separare logica di validazione
   - Utilizzare costanti per i nomi dei campi
   - Documentare i requisiti dei campi

## Esercizi

1. Form di Login
   - Implementa validazione username/password
   - Gestisci sessione utente
   - Mostra messaggi di errore

2. Form di Registrazione
   - Validazione campi multipli
   - Upload foto profilo
   - Email di conferma

3. Form di Ricerca
   - Filtri multipli
   - Paginazione risultati
   - Ordinamento

## Quiz

1. Qual è la differenza tra GET e POST?
2. Come si gestiscono upload di file multipli?
3. Quali sono le best practices per la validazione?

## Conclusione
Una corretta gestione dei form è essenziale per creare applicazioni web interattive e sicure. La combinazione di validazione lato client e server, insieme a buone pratiche di sicurezza, garantisce un'esperienza utente ottimale.