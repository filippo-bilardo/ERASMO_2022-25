# Validazione e Sicurezza dei Form JSP

## Introduzione
La validazione e la sicurezza sono aspetti critici nella gestione dei form web. Un'implementazione robusta protegge sia gli utenti che l'applicazione.

## Validazione Lato Client

### JavaScript Base
```javascript
function validaForm() {
    var email = document.getElementById("email").value;
    if(!email.includes("@")) {
        alert("Email non valida");
        return false;
    }
    return true;
}
```

### HTML5 Validation
```html
<input type="email" required>
<input type="number" min="18" max="99">
<input type="text" pattern="[A-Za-z]{3,}">
```

## Validazione Lato Server

### Validazione Base
```jsp
<%
    String nome = request.getParameter("nome");
    List<String> errori = new ArrayList<>();
    
    if(nome == null || nome.trim().isEmpty()) {
        errori.add("Nome obbligatorio");
    } else if(nome.length() < 3) {
        errori.add("Nome troppo corto");
    }
%>
```

### Espressioni Regolari
```jsp
<%
    String email = request.getParameter("email");
    String emailRegex = "^[A-Za-z0-9+_.-]+@(.+)$";
    
    if(!email.matches(emailRegex)) {
        errori.add("Email non valida");
    }
%>
```

## Protezione da Attacchi

### Cross-Site Scripting (XSS)
```jsp
<%
    String input = request.getParameter("input");
    // Sanitizzazione input
    input = input.replace("<", "&lt;").replace(">", "&gt;");
%>
```

### SQL Injection
```jsp
<%
    String username = request.getParameter("username");
    // Uso di PreparedStatement
    PreparedStatement stmt = conn.prepareStatement(
        "SELECT * FROM utenti WHERE username = ?");
    stmt.setString(1, username);
%>
```

### CSRF Protection
```jsp
<%
    // Generazione token
    String csrfToken = UUID.randomUUID().toString();
    session.setAttribute("csrf_token", csrfToken);
%>
<input type="hidden" name="csrf_token" value="<%= csrfToken %>">
```

## Gestione Errori

### Visualizzazione Errori
```jsp
<% if(!errori.isEmpty()) { %>
    <div class="errori">
        <ul>
            <% for(String errore : errori) { %>
                <li><%= errore %></li>
            <% } %>
        </ul>
    </div>
<% } %>
```

### Log degli Errori
```jsp
<%
    try {
        // Operazioni form
    } catch(Exception e) {
        logger.error("Errore nel form", e);
        response.sendRedirect("error.jsp");
    }
%>
```

## Best Practices

1. **Validazione Completa**
   - Implementare validazione sia client che server
   - Utilizzare librerie di validazione testate
   - Definire regole di validazione chiare

2. **Sicurezza**
   - Utilizzare HTTPS
   - Implementare timeout sessione
   - Limitare tentativi di login
   - Sanitizzare tutti gli input

3. **User Experience**
   - Fornire feedback immediato
   - Mantenere i dati validi in caso di errori
   - Utilizzare messaggi di errore chiari

## Esercizi

1. Form Sicuro
   - Implementa protezione CSRF
   - Aggiungi validazione completa
   - Gestisci errori appropriatamente

2. Validazione Avanzata
   - Validazione password complessa
   - Verifica email unica
   - Controllo età minima

3. Sistema di Login
   - Protezione da brute force
   - Recupero password sicuro
   - Log degli accessi

## Quiz

1. Perché è importante validare sia lato client che server?
2. Come si previene un attacco CSRF?
3. Quali sono le best practices per la gestione delle password?

## Conclusione
Una robusta validazione e sicurezza dei form è essenziale per proteggere dati e utenti. L'implementazione di tutte le misure di sicurezza discusse garantisce un'applicazione web affidabile e sicura.