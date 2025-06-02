# Esempio CRUD Base con JSP

## Descrizione
Questo esempio implementa le operazioni CRUD (Create, Read, Update, Delete) per una tabella studenti utilizzando JSP e JDBC.

## Struttura del Progetto
```
/01-CrudBase
  /src
    /main
      /java
        /model
          Studente.java         # Classe modello
          StudenteDAO.java      # Data Access Object
        /util
          ConnectionPool.java   # Gestione connessioni
      /webapp
        /WEB-INF
          web.xml              # Configurazione web
        index.jsp              # Lista studenti
        inserisci.jsp          # Form inserimento
        modifica.jsp           # Form modifica
        elimina.jsp            # Conferma eliminazione
```

## Configurazione Database
```sql
CREATE TABLE studenti (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE
);
```

## Funzionalità Implementate
1. **Visualizzazione Lista Studenti**
   - Tabella paginata
   - Ordinamento per colonne
   - Ricerca studenti

2. **Inserimento Nuovo Studente**
   - Validazione form
   - Gestione errori
   - Feedback utente

3. **Modifica Studente**
   - Caricamento dati esistenti
   - Validazione modifiche
   - Conferma aggiornamento

4. **Eliminazione Studente**
   - Conferma eliminazione
   - Gestione integrità referenziale
   - Feedback operazione

## Best Practices Implementate
- Separazione logica MVC
- Prepared statements per sicurezza
- Connection pooling per performance
- Gestione appropriata delle risorse
- Validazione input utente
- Feedback visuale per le operazioni

## Come Eseguire
1. Configurare il database MySQL
2. Modificare le credenziali in ConnectionPool.java
3. Deployare l'applicazione su Tomcat
4. Accedere a http://localhost:8080/crud-base

## Esercizi Proposti
1. Aggiungere la paginazione alla lista studenti
2. Implementare la ricerca per nome/cognome
3. Aggiungere validazione JavaScript lato client
4. Implementare l'ordinamento per colonne
5. Aggiungere gestione delle immagini profilo