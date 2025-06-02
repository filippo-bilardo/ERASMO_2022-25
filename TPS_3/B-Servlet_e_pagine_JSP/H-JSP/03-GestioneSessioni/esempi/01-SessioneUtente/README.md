# Gestione delle Sessioni in JSP

Questo esempio dimostra come implementare la gestione delle sessioni in JSP per mantenere lo stato dell'utente tra diverse richieste HTTP.

## Funzionalità Implementate

1. **Sistema di Login**
   - Form di accesso con username e password
   - Validazione delle credenziali
   - Creazione della sessione utente

2. **Pagina di Benvenuto**
   - Visualizzazione del nome utente dalla sessione
   - Informazioni dettagliate sulla sessione corrente
   - Protezione della pagina per utenti non autenticati

3. **Gestione del Logout**
   - Invalidazione della sessione
   - Reindirizzamento alla pagina di login

## Struttura dei File

- `login.jsp`: Form di login e gestione dell'autenticazione
- `benvenuto.jsp`: Pagina protetta che mostra i dettagli della sessione
- `logout.jsp`: Script per la chiusura della sessione

## Credenziali di Test

- Username: admin
- Password: password123

## Concetti Chiave

1. **Oggetto Session**
   - Creazione automatica della sessione
   - Memorizzazione di attributi (setAttribute)
   - Recupero di attributi (getAttribute)

2. **Sicurezza**
   - Verifica dello stato di autenticazione
   - Protezione delle pagine riservate
   - Gestione degli errori di login

3. **Gestione del Flusso**
   - Reindirizzamenti (sendRedirect)
   - Validazione degli input
   - Gestione degli stati della sessione

## Note Tecniche

- La sessione viene creata automaticamente al primo accesso
- Il timeout predefinito della sessione è di 30 minuti
- I dati della sessione vengono memorizzati lato server
- Il client mantiene solo l'ID di sessione tramite cookie

## Esercizi Proposti

1. Aggiungere un contatore di accessi nella sessione
2. Implementare un timeout personalizzato
3. Aggiungere la funzionalità "Ricordami" con i cookie
4. Creare una pagina di profilo utente con dati aggiuntivi