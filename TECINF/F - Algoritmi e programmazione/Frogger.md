### Introduzione

**Obiettivo del gioco:**
L'obiettivo del gioco Frogger è far attraversare in sicurezza una strada e un fiume al personaggio principale, una rana, evitando gli ostacoli e raggiungendo l'altra sponda.

### Meccaniche di Gioco

- **Controllo del personaggio:** Il personaggio principale è una rana che il giocatore controlla per farla muovere in quattro direzioni (su, giù, destra, sinistra).
- **Ostacoli sulla strada:** Sulla strada ci sono auto, camion e altri veicoli che si muovono a velocità diverse e che la rana deve evitare.
- **Attraversamento del fiume:** Dopo aver attraversato la strada, la rana deve saltare su tronchi, piattaforme galleggianti e tartarughe per raggiungere l'altra sponda del fiume.
- **Livelli di gioco:** Ci sono diversi livelli con layout e difficoltà crescenti.
- **Punteggio:** Ogni volta che la rana raggiunge in sicurezza l'altra sponda, il giocatore guadagna punti.
- **Perdita di vite:** Se la rana viene investita da un veicolo o cade nell'acqua, perde una vita.

### Principali Sfide

- **Tempismo preciso:** Nei salti e nel movimento della rana per evitare gli ostacoli in movimento.
- **Memorizzazione dei pattern:** Dei movimenti dei veicoli e delle piattaforme galleggianti.
- **Coordinazione e riflessi veloci:** Per reagire agli elementi in movimento sullo schermo.
- **Gestione di più elementi in movimento:** Come veicoli, tronchi e tartarughe.
- **Progressione nei livelli:** Con layout e difficoltà crescenti.

Queste sono le caratteristiche chiave del gioco Frogger che verranno implementate durante il corso usando Scratch.

### Creazione dello Scenario e del Personaggio Principale

**Impostazione dello scenario di base per il gioco Frogger in Scratch:**

1. **Creare lo sfondo:**
   - Aprire un nuovo progetto Scratch.
   - Selezionare l'opzione "Sfondi" nella palette a sinistra.
   - Creare uno sfondo che rappresenti la scena del gioco Frogger:
     - Disegnare una strada con strisce pedonali.
     - Aggiungere un fiume nella parte superiore dello schermo.
     - Creare elementi di ambientazione come case, alberi, ecc.

2. **Aggiungere il personaggio principale (la rana):**
   - Selezionare l'opzione "Sprite" nella palette a sinistra.
   - Importare o creare uno sprite che rappresenti la rana.
   - Posizionare la rana nella parte inferiore dello schermo, vicino alla strada.

3. **Programmare i movimenti di base della rana:**
   - Selezionare lo sprite della rana.
   - Aggiungere il seguente codice:

     ```scratch
     quando si clicca sulla bandiera verde
         per sempre
             se premuto tasto freccia su allora
                 cambia y di 10 passi
             altrimenti se premuto tasto freccia giù allora
                 cambia y di -10 passi
             altrimenti se premuto tasto freccia destra allora
                 cambia x di 10 passi
             altrimenti se premuto tasto freccia sinistra allora
                 cambia x di -10 passi
             fine
         fine
     ```

   - Questo codice permette di controllare il movimento della rana in quattro direzioni utilizzando i tasti freccia della tastiera.

### Argomenti Teorici Trattati

- Concetto di sprite e sfondi in un ambiente di programmazione visuale.
- Gestione della posizione e del movimento degli oggetti sullo schermo.
- Utilizzo di strutture di controllo (selezione) per gestire i movimenti in base agli input dell'utente.

Questa lezione introduce gli studenti alla creazione dello scenario di base e alla programmazione del personaggio principale del gioco Frogger. Gli argomenti teorici riguardano la gestione degli elementi grafici e il controllo del movimento degli oggetti in Scratch.

### Implementazione degli Elementi di Gioco

**Aggiunta delle automobili e dei tronchi in Scratch:**

1. **Aggiungere le automobili:**
   - Selezionare l'opzione "Sprite" nella palette a sinistra.
   - Creare o importare uno sprite che rappresenti un'automobile.
   - Posizionare l'auto all'inizio della strada, fuori dallo schermo.
   - Aggiungere il seguente codice:

     ```scratch
     quando si clicca sulla bandiera verde
         porta x a (numero casuale da -250 a 250)
         porta y a -50
         mostra
         per sempre
             cambia x di 10 passi
             attendi 0.1 secondi
         fine
     ```

2. **Gestione delle vite del giocatore:**
   - Creare la variabile "vite" per il gioco.
   - Selezionare "Crea una nuova variabile" dalla sezione "Dati" in Scratch.
   - Assegnare il nome "vite" alla variabile e impostare il valore iniziale a un numero desiderato (ad esempio, 3).
   - Visualizzare la variabile sullo stage.

3. **Gestire le collisioni con gli ostacoli:**
   - Per lo sprite della rana, aggiungere il seguente codice:

     ```scratch
     quando si clicca sulla bandiera verde
         per sempre
             se tocca lo sprite "auto" o tocca lo sprite "fiume" allora
                 cambia vite di -1
                 porta rana a posizione iniziale
                 se vite = 0 allora
                     termina questo script
                 fine
             fine
         fine
     ```

   - Questo codice verifica continuamente se la rana tocca gli sprite delle auto o del fiume. Se si verifica una collisione, il valore della variabile "vite" viene diminuito di 1 e la rana viene riportata alla posizione iniziale. Se il valore di "vite" diventa 0, il gioco termina.

4. **Visualizzare le vite rimanenti:**
   - Posizionare la variabile "vite" in un'area ben visibile dello stage.
   - Il valore della variabile verrà aggiornato automaticamente a ogni collisione.

5. **Opzionale: Aggiungere una schermata di game over:**
   - Creare una nuova schermata o sfondo per il game over.
   - Aggiungere il seguente codice allo sprite della rana:

     ```scratch
     quando si clicca sulla bandiera verde
         per sempre
             se vite = 0 allora
                 passa allo sfondo "game over"
                 termina questo script
             fine
         fine
     ```

   - Questo codice farà passare il gioco allo sfondo "game over" quando le vite del giocatore sono esaurite.

Con questa implementazione, il giocatore avrà un numero limitato di vite da utilizzare durante il gioco. Ogni volta che la rana collide con un ostacolo, il valore della variabile "vite" diminuisce e, quando raggiunge 0, il gioco termina o passa a una schermata di game over. Gli studenti potranno osservare come l'utilizzo di una variabile permetta di tenere traccia di uno stato importante del gioco e di gestire la logica di gioco di conseguenza.