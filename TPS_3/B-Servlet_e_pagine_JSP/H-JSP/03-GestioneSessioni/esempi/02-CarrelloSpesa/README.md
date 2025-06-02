# Carrello della Spesa con JSP

Questo esempio dimostra come implementare un carrello della spesa utilizzando le sessioni JSP per mantenere lo stato degli acquisti dell'utente.

## Funzionalità Implementate

1. **Gestione Prodotti**
   - Visualizzazione dei prodotti disponibili
   - Prezzi e dettagli dei prodotti
   - Layout responsive con grid CSS

2. **Gestione Carrello**
   - Aggiunta prodotti al carrello
   - Rimozione prodotti dal carrello
   - Calcolo automatico dei totali
   - Persistenza del carrello tramite sessione

3. **Interfaccia Utente**
   - Design moderno e responsive
   - Feedback visuale delle azioni
   - Visualizzazione chiara dei prezzi

## Struttura del Codice

- `carrello.jsp`: Pagina principale che gestisce sia la visualizzazione che la logica del carrello

## Concetti Chiave

1. **Gestione della Sessione**
   - Utilizzo di `session.getAttribute()` e `session.setAttribute()`
   - Persistenza dei dati del carrello tra le richieste
   - Inizializzazione del carrello vuoto

2. **Strutture Dati**
   - Utilizzo di `Map<String, Integer>` per il carrello
   - Utilizzo di `Map<String, Double>` per i prodotti
   - Gestione delle quantità e dei prezzi

3. **Operazioni sul Carrello**
   - Aggiunta incrementale di prodotti
   - Rimozione di prodotti
   - Calcolo dei totali parziali e del totale generale

## Note Tecniche

- Il carrello viene memorizzato nella sessione come `Map`
- I prezzi sono gestiti come `Double` per la precisione decimale
- La formattazione dei prezzi utilizza `String.format("%.2f", value)`
- Il layout utilizza CSS Grid per una disposizione responsive

## Esercizi Proposti

1. Aggiungere la possibilità di modificare la quantità dei prodotti
2. Implementare un sistema di codici sconto
3. Aggiungere la persistenza del carrello in un database
4. Implementare un processo di checkout
5. Aggiungere categorie di prodotti

## Miglioramenti Possibili

1. Aggiungere immagini dei prodotti
2. Implementare un sistema di autenticazione
3. Aggiungere la gestione del magazzino
4. Implementare notifiche per le azioni sul carrello
5. Aggiungere la funzionalità di salvataggio carrello per acquisti futuri