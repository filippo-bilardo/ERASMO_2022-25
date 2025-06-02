# Guida Introduttiva a Scratch

## Cos'è Scratch?

Scratch è un linguaggio di programmazione visuale sviluppato dal MIT Media Lab (Massachusetts Institute of Technology) con l'obiettivo di rendere l'apprendimento della programmazione accessibile e divertente, soprattutto per i giovani. È uno strumento gratuito e open-source che permette di creare giochi, storie animate, musica, arte interattiva e molto altro, utilizzando un approccio basato su blocchi grafici invece del tradizionale codice testuale.

## Caratteristiche principali di Scratch

1. **Interfaccia intuitiva**: Scratch offre una interfaccia utente semplice e colorata, composta da tre aree principali:
   - **Area dei blocchi**: Contiene blocchi categorizzati che rappresentano istruzioni o comandi.
   - **Area di progetto**: Qui vengono assemblati i blocchi per costruire il programma.
   - **Area dello stage (scena)**: Mostra in tempo reale il risultato del programma.

2. **Programmazione a blocchi**: Invece di scrivere codice testuale, gli utenti trascinano e rilasciano blocchi grafici per costruire sequenze di istruzioni.

3. **Sprite e costumi**: Gli elementi principali di un progetto Scratch sono i **sprite** (personaggi o oggetti interattivi) che possono muoversi, parlare, cambiare forma e interagire. Ogni sprite può avere diversi **costumi** (immagini) e **suoni** associati.

4. **Eventi e interazione**: Scratch consente di programmare azioni che vengono attivate da eventi specifici, come il clic del mouse, il premere di un tasto o il ricevere di un messaggio.

## L'interfaccia di Scratch

L'interfaccia di Scratch è divisa in diverse aree principali:

1. **Menu superiore**: Contiene opzioni per gestire il progetto e accedere alle estensioni.

2. **Pannello degli sprite**: Mostra tutti gli sprite presenti nel progetto.

3. **Area dello stage**: È l'area centrale dove si svolge l'azione del progetto.

4. **Blocchi di codice**: Organizzati in categorie colorate:
   - **Eventi** (arancione): Attivano il codice quando accade qualcosa.
   - **Controllo** (giallo): Strutture logiche come cicli e condizioni.
   - **Movimento** (blu): Comandi per far muovere gli sprite.
   - **Apparenza** (viola): Cambia l'aspetto degli sprite.
   - **Suono** (rosa): Aggiunge effetti sonori.
   - **Operatori** (verde): Esegue calcoli matematici o confronti.
   - **Variabili** (rosso): Gestisce dati personalizzati.

5. **Area di scripting**: Dove assembli i blocchi per creare il codice del progetto.

6. **Barra degli strumenti**: Include la bandiera verde (avvia) e il segno di stop (interrompe).

---

# Esercizio: Animaletto che salta in un appartamento

## Obiettivo
Realizzare un programma in cui un animaletto, posizionato all'interno di un'immagine di un appartamento, salti sul letto o in un'altra zona della stanza quando si preme il tasto freccia su.

## Istruzioni passo-passo

### Passo 1: Preparare lo sfondo dell'appartamento
1. Avvia Scratch (online su https://scratch.mit.edu o offline).
2. Clicca su **"Nuovo"** per iniziare un progetto vuoto.
3. Nella sezione **Stage** (in basso a destra), clicca sull'icona per **aggiungere uno sfondo** (icona con un paesaggio).
4. Scegli una delle seguenti opzioni:
   - Seleziona un'immagine di un interno di appartamento dalla libreria di Scratch.
   - Carica un'immagine di un appartamento dal tuo computer cliccando su "Carica sfondo".
   - Disegna tu stesso un interno di appartamento usando l'editor di Scratch.
5. Assicurati che nell'immagine sia visibile un letto o un'altra area dove l'animaletto potrà saltare.

### Passo 2: Aggiungere l'animaletto (sprite)
1. Elimina lo sprite del gatto predefinito cliccando su di esso con il tasto destro e selezionando "elimina".
2. Clicca sul pulsante **"Scegli uno Sprite"** (icona con il gatto) in basso a destra.
3. Dalla libreria, seleziona un animaletto a tua scelta (ad esempio un cane, un gatto, un coniglio, ecc.).
4. Posiziona l'animaletto sul pavimento dell'appartamento trascinandolo nella posizione desiderata.
5. Se necessario, ridimensiona lo sprite per adattarlo alle proporzioni dell'appartamento usando lo strumento di ridimensionamento (icona con le frecce bidirezionali nella barra degli strumenti superiore).

### Passo 3: Programmare il salto dell'animaletto
1. Con lo sprite dell'animaletto selezionato, vai alla scheda **"Codice"**.
2. Dalla categoria **Eventi** (arancione), trascina il blocco `quando si preme il tasto [spazio]` nell'area di scripting.
3. Clicca sulla freccia accanto a "spazio" e seleziona **"freccia su"** dal menu a tendina.
4. Dalla categoria **Movimento** (blu), aggiungi i seguenti blocchi per creare l'animazione del salto:
   - `cambia y di (10)` - Questo farà salire l'animaletto.
   - `attendi (0.5) secondi` - Questo crea una pausa.
   - `cambia y di (-10)` - Questo farà scendere l'animaletto tornando alla posizione iniziale.

Il tuo codice finale dovrebbe assomigliare a questo:
```
quando si preme il tasto [freccia su]
cambia y di (10)
attendi (0.5) secondi
cambia y di (-10)
```

### Passo 4: Migliorare l'animazione del salto (opzionale)
Per rendere il salto più realistico, puoi:

1. Aggiungere più blocchi `cambia y di (...)` con valori decrescenti per simulare la gravità:
```
quando si preme il tasto [freccia su]
cambia y di (20)
attendi (0.1) secondi
cambia y di (15)
attendi (0.1) secondi
cambia y di (10)
attendi (0.1) secondi
cambia y di (5)
attendi (0.1) secondi
cambia y di (-5)
attendi (0.1) secondi
cambia y di (-10)
attendi (0.1) secondi
cambia y di (-15)
attendi (0.1) secondi
cambia y di (-20)
```

2. Aggiungere un effetto sonoro al salto:
   - Dalla categoria **Suono** (rosa), aggiungi il blocco `riproduci suono [meow]` all'inizio del codice.
   - Puoi cambiare il suono cliccando sulla scheda "Suoni" e scegliendo o registrando un suono appropriato.

3. Cambiare il costume dell'animaletto durante il salto:
   - Vai alla scheda "Costumi" e crea o duplica un costume in cui l'animaletto appare in posizione di salto.
   - Nel codice, aggiungi i blocchi `passa al costume [nome del costume]` dalla categoria **Aspetto** (viola) per cambiare l'aspetto durante il salto.

## Consegna

Prepara una presentazione che mostri i passaggi principali per realizzare questo programma. La presentazione dovrebbe includere:

1. **Introduzione**: Breve spiegazione di cosa fa il programma.
2. **Materiali necessari**: Software Scratch (online o offline).
3. **Procedimento**: Screenshot o immagini che mostrano:
   - Come selezionare lo sfondo dell'appartamento
   - Come aggiungere lo sprite dell'animaletto
   - Come programmare l'evento del tasto freccia su
   - Come creare l'animazione del salto
   - Il codice completo assemblato
4. **Risultato finale**: Screenshot o video del programma in esecuzione.
5. **Varianti e sfide**: Suggerimenti per modificare o estendere il programma (ad esempio, aggiungere più animazioni, far saltare l'animaletto in diverse direzioni usando altri tasti freccia, aggiungere effetti sonori).

## Suggerimenti per la presentazione

- Usa immagini chiare e ben visibili.
- Numera i passaggi in modo sequenziale.
- Evidenzia i blocchi principali utilizzati.
- Spiega brevemente la funzione di ogni blocco.
- Mostra il risultato finale del programma.

## Criteri di valutazione

- Correttezza del programma: l'animaletto salta correttamente quando si preme il tasto freccia su.
- Qualità dello sfondo: l'immagine dell'appartamento è appropriata e ben visibile.
- Posizionamento dell'animaletto: lo sprite è posizionato in modo realistico nell'ambiente.
- Realismo dell'animazione: il salto appare naturale e fluido.
- Chiarezza della presentazione: i passaggi sono spiegati in modo chiaro e comprensibile.
- Completezza: tutti i passaggi necessari sono inclusi.
- Creatività: eventuali personalizzazioni o miglioramenti apportati al programma base.

---

Buon lavoro e divertiti con Scratch! 🚀