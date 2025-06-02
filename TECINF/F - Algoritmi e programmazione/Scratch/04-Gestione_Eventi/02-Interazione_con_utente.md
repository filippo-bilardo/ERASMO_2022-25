# Interazione con l'utente

## Introduzione
L'interazione con l'utente è un aspetto fondamentale della programmazione in Scratch, che permette di creare progetti dinamici e coinvolgenti. In questa guida, esploreremo le diverse modalità con cui un progetto Scratch può interagire con l'utente, dalle semplici interazioni con mouse e tastiera fino a input più complessi come microfono e webcam.

## Interazione tramite mouse

### Rilevamento della posizione del mouse
1. **Blocchi di rilevamento**: Scratch offre blocchi come "posizione x del mouse" e "posizione y del mouse" nella categoria Sensori
2. **Seguire il mouse**: Uno sprite può seguire il cursore utilizzando questi blocchi all'interno di un ciclo
   ```
   Per sempre
     Vai a x: (posizione x del mouse) y: (posizione y del mouse)
   Fine
   ```
3. **Distanza dal mouse**: Puoi calcolare la distanza tra uno sprite e il mouse usando il blocco "distanza da mouse"

### Eventi del mouse
1. **Click sullo sprite**: Il blocco "quando si clicca sullo sprite" attiva uno script quando l'utente clicca su uno specifico sprite
2. **Click in generale**: Il blocco "quando si clicca su" può rilevare click in qualsiasi punto dello stage
3. **Stato del mouse**: Il blocco "mouse premuto?" restituisce vero/falso e può essere usato in condizioni

## Interazione tramite tastiera

### Eventi della tastiera
1. **Pressione di tasti specifici**: Il blocco "quando si preme il tasto..." attiva uno script quando viene premuto un tasto specifico
2. **Rilevamento continuo**: Il blocco "tasto... premuto?" può essere usato in cicli o condizioni per verificare continuamente lo stato di un tasto

### Controllo di movimento
```
Quando si clicca sulla bandiera verde
Per sempre
  Se <tasto [freccia su v] premuto?> allora
    Cambia y di (10)
  Fine
  Se <tasto [freccia giù v] premuto?> allora
    Cambia y di (-10)
  Fine
  Se <tasto [freccia destra v] premuto?> allora
    Cambia x di (10)
  Fine
  Se <tasto [freccia sinistra v] premuto?> allora
    Cambia x di (-10)
  Fine
Fine
```

## Input di testo

### Chiedere informazioni all'utente
1. **Blocco "chiedi e attendi"**: Mostra una finestra di dialogo con un campo di input
   ```
   Chiedi [Come ti chiami?] e attendi
   Dire [Ciao] unito a (risposta) per (2) secondi
   ```
2. **Variabile "risposta"**: Contiene l'ultimo input inserito dall'utente
3. **Validazione dell'input**: Puoi verificare che l'input sia valido prima di utilizzarlo
   ```
   Chiedi [Inserisci un numero da 1 a 10] e attendi
   Se <(risposta) > [0] e (risposta) < [11]> allora
     Dire [Hai inserito un numero valido!] per (2) secondi
   Altrimenti
     Dire [Numero non valido, riprova] per (2) secondi
   Fine
   ```

## Interazione avanzata

### Utilizzo del microfono
1. **Rilevamento del volume**: Il blocco "volume" nella categoria Sensori rileva il volume del microfono
2. **Attivazione basata sul suono**: Puoi attivare eventi quando il volume supera una certa soglia
   ```
   Quando si clicca sulla bandiera verde
   Per sempre
     Se <(volume) > [30]> allora
       Cambia effetto [colore v] di (25)
     Fine
   Fine
   ```

### Utilizzo della webcam
1. **Attivazione della webcam**: Usa il blocco "attiva video" per iniziare a utilizzare la webcam
2. **Rilevamento del movimento**: Il blocco "movimento video su sprite" rileva quanto movimento c'è nell'area dello sprite
3. **Direzione del movimento**: Puoi anche rilevare la direzione del movimento con il blocco "direzione movimento video"

## Esempi pratici

### Esempio 1: Gioco di disegno
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Per sempre
  Se <mouse premuto?> allora
    Penna giù
    Vai a x: (posizione x del mouse) y: (posizione y del mouse)
  Altrimenti
    Penna su
    Vai a x: (posizione x del mouse) y: (posizione y del mouse)
  Fine
Fine
```

### Esempio 2: Quiz interattivo
```
Quando si clicca sulla bandiera verde
Chiedi [Quanto fa 5 + 7?] e attendi
Se <(risposta) = [12]> allora
  Dire [Corretto!] per (2) secondi
Altrimenti
  Dire [Sbagliato. La risposta è 12] per (2) secondi
Fine
```

### Esempio 3: Controllo vocale
```
Quando si clicca sulla bandiera verde
Per sempre
  Se <(volume) > [60]> allora
    Cambia y di (10)
  Fine
Fine
```

## Best Practices

1. **Feedback chiaro**: Fornisci sempre un feedback visivo o sonoro quando l'utente interagisce con il tuo progetto
2. **Istruzioni**: Includi istruzioni chiare su come interagire con il tuo progetto
3. **Accessibilità**: Considera diverse modalità di input per rendere il tuo progetto accessibile a più utenti
4. **Robustezza**: Gestisci correttamente input imprevisti o errati
5. **Prestazioni**: Evita di sovraccaricare il progetto con troppi rilevamenti simultanei

## Esercizi pratici

1. **Controllo personalizzato**: Crea un gioco in cui il personaggio può essere controllato sia con la tastiera che con il mouse
2. **Form interattivo**: Realizza un semplice form che raccoglie diverse informazioni dall'utente e le utilizza in modo creativo
3. **Strumento musicale**: Crea uno strumento musicale virtuale che risponde ai movimenti del mouse o ai suoni del microfono

## Domande di autovalutazione

1. Quali sono i diversi modi in cui puoi rilevare l'interazione del mouse in Scratch?
2. Come puoi utilizzare la tastiera per controllare il movimento di uno sprite?
3. Qual è la differenza tra il blocco "quando si preme il tasto..." e il blocco "tasto... premuto?"?
4. Come puoi raccogliere e utilizzare l'input testuale dall'utente?
5. In che modo puoi utilizzare il microfono o la webcam per creare interazioni innovative nei tuoi progetti Scratch?