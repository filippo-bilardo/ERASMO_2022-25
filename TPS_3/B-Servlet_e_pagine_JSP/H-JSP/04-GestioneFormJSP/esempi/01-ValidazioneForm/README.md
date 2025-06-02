# Esempio di Validazione Form JSP

Questo esempio dimostra come implementare la validazione dei form in JSP utilizzando JavaBeans e gestione degli errori.

## Struttura del Progetto

```
src/
├── main/
│   ├── java/
│   │   └── it/
│   │       └── edu/
│   │           └── iisgubbio/
│   │               └── model/
│   │                   └── Calcolatore.java
│   └── webapp/
│       └── index.jsp
```

## Funzionalità

- Form per l'inserimento di due numeri
- Selezione dell'operazione matematica da eseguire
- Validazione dei dati inseriti
- Gestione degli errori (numeri non validi, divisione per zero)
- Visualizzazione del risultato formattato

## Componenti

### JavaBean Calcolatore
Classe che implementa la logica di business per le operazioni matematiche:
- Somma
- Sottrazione
- Moltiplicazione
- Divisione (con gestione divisione per zero)

### JSP (index.jsp)
- Form HTML con validazione lato client
- Gestione della richiesta POST
- Utilizzo del JavaBean per i calcoli
- Gestione e visualizzazione degli errori
- Formattazione del risultato

## Tecnologie Utilizzate

- JSP (JavaServer Pages)
- JavaBeans
- HTML5
- CSS3
- Servlet API

## Come Utilizzare

1. Inserire due numeri nei campi appropriati
2. Selezionare l'operazione desiderata dal menu a tendina
3. Cliccare su "Calcola" per ottenere il risultato
4. In caso di errori, verrà mostrato un messaggio appropriato

## Best Practices Implementate

- Separazione della logica di business (JavaBean) dalla presentazione (JSP)
- Validazione dei dati lato client e server
- Gestione appropriata delle eccezioni
- Feedback visuale per l'utente (messaggi di errore e successo)
- Codice ben organizzato e commentato