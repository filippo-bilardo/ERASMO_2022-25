# Condizioni e decisioni

## Introduzione
Le strutture condizionali sono elementi fondamentali della programmazione che permettono ai programmi di prendere decisioni e seguire percorsi diversi in base a determinate condizioni. In Scratch, queste strutture sono rappresentate principalmente dai blocchi "se" e "se-altrimenti", che consentono di creare programmi interattivi e reattivi. In questa guida, esploreremo in dettaglio come utilizzare le condizioni in Scratch, come combinare condizioni complesse e come implementare pattern decisionali comuni.

## Concetto di condizione

### Cos'è una condizione
Una condizione è un'espressione che può essere valutata come vera o falsa. In Scratch, le condizioni sono rappresentate da blocchi esagonali (blocchi booleani) che restituiscono un valore vero o falso. Le strutture condizionali utilizzano queste espressioni per decidere quali blocchi di codice eseguire.

### Perché usare le condizioni
Le condizioni sono essenziali nella programmazione per diversi motivi:

- **Flessibilità**: permettono al programma di adattarsi a situazioni diverse
- **Interattività**: consentono al programma di rispondere agli input dell'utente
- **Logica di gioco**: sono alla base di regole, punteggi, livelli e altre meccaniche
- **Automazione**: permettono di automatizzare decisioni basate su criteri specifici

## Blocchi condizionali in Scratch

### Blocco "se"
Il blocco "se" esegue un blocco di istruzioni solo se la condizione specificata è vera.

```
se <condizione> allora
  # Istruzioni da eseguire se la condizione è vera
fine
```

#### Caratteristiche
- Esecuzione condizionale: le istruzioni vengono eseguite solo se la condizione è vera
- Se la condizione è falsa, le istruzioni vengono saltate e l'esecuzione continua con il blocco successivo
- Utile per azioni che devono essere eseguite solo in determinate circostanze

#### Esempi di utilizzo

##### Reazione a un evento
```
quando si clicca su [bandiera verde]
per sempre
  se <sta toccando [bordo v]?> allora
    rimbalza
  fine
  muovi di [10] passi
fine
```

Questo script fa rimbalzare lo sprite solo quando tocca il bordo dello stage.

##### Verifica di una condizione
```
quando si clicca su [bandiera verde]
chiedi [Quanti anni hai?] e attendi
se <(risposta) < [18]> allora
  dire [Sei minorenne.] per [2] secondi
fine
```

Questo script verifica se l'utente è minorenne e mostra un messaggio appropriato.

### Blocco "se-altrimenti"
Il blocco "se-altrimenti" esegue un blocco di istruzioni se la condizione è vera, e un blocco alternativo se la condizione è falsa.

```
se <condizione> allora
  # Istruzioni da eseguire se la condizione è vera
altrimenti
  # Istruzioni da eseguire se la condizione è falsa
fine
```

#### Caratteristiche
- Biforcazione completa: gestisce entrambi i casi (vero e falso)
- Garantisce che uno dei due blocchi di istruzioni venga sempre eseguito
- Utile per situazioni con due alternative distinte

#### Esempi di utilizzo

##### Decisione binaria
```
quando si clicca su [bandiera verde]
chiedi [Preferisci il giorno o la notte?] e attendi
se <(risposta) = [giorno]> allora
  passa allo sfondo [cielo v]
  dire [Ecco un bel cielo soleggiato!] per [2] secondi
altrimenti
  passa allo sfondo [notte v]
  dire [Ecco un bel cielo stellato!] per [2] secondi
fine
```

Questo script cambia lo sfondo in base alla preferenza dell'utente.

##### Controllo del punteggio
```
quando si clicca su [bandiera verde]
porta [punteggio v] a [0]
attendi [10] secondi
se <(punteggio) >= [50]> allora
  dire [Complimenti! Hai vinto!] per [2] secondi
altrimenti
  dire [Mi dispiace, hai perso. Riprova!] per [2] secondi
fine
```

Questo script verifica se il punteggio ha raggiunto la soglia di vittoria e mostra un messaggio appropriato.

## Condizioni in Scratch

### Tipi di condizioni

#### Condizioni di confronto
Confrontano valori e restituiscono un risultato booleano:

- **[a] > [b]**: maggiore di
- **[a] < [b]**: minore di
- **[a] = [b]**: uguale a

#### Condizioni di contatto
Verificano se uno sprite sta toccando qualcosa:

- **sta toccando [sprite/bordo/puntatore]?**: verifica il contatto con un altro elemento
- **sta toccando il colore [colore]?**: verifica il contatto con un colore specifico
- **colore [colore1] sta toccando [colore2]?**: verifica il contatto tra due colori

#### Condizioni di input
Verificano l'input dell'utente:

- **tasto [spazio] premuto?**: verifica se un tasto specifico è premuto
- **mouse giù?**: verifica se il pulsante del mouse è premuto

#### Condizioni su stringhe
Verificano proprietà delle stringhe:

- **[testo] contiene [sottostringa]?**: verifica se una stringa contiene una sottostringa

### Esempi di utilizzo delle condizioni

#### Controllo del movimento con i tasti
```
quando si clicca su [bandiera verde]
per sempre
  se <tasto [freccia su v] premuto?> allora
    punta in direzione [0]
    muovi di [10] passi
  fine
  se <tasto [freccia giù v] premuto?> allora
    punta in direzione [180]
    muovi di [10] passi
  fine
  se <tasto [freccia destra v] premuto?> allora
    punta in direzione [90]
    muovi di [10] passi
  fine
  se <tasto [freccia sinistra v] premuto?> allora
    punta in direzione [-90]
    muovi di [10] passi
  fine
fine
```

Questo script permette di controllare lo sprite utilizzando i tasti freccia.

#### Verifica del contatto
```
quando si clicca su [bandiera verde]
per sempre
  se <sta toccando [Sprite2 v]?> allora
    cambia [punteggio v] di [1]
    vai a x: (numero a caso tra [-240] e [240]) y: (numero a caso tra [-180] e [180])
  fine
fine
```

Questo script incrementa il punteggio e sposta lo sprite in una posizione casuale quando tocca un altro sprite.

## Combinare condizioni

### Operatori logici
Gli operatori logici permettono di combinare più condizioni:

- **<a> e <b>**: vero solo se entrambe le condizioni sono vere
- **<a> o <b>**: vero se almeno una delle condizioni è vera
- **non <a>**: inverte il valore booleano (vero diventa falso e viceversa)

### Esempi di condizioni combinate

#### Condizione "e"
```
quando si clicca su [bandiera verde]
per sempre
  se <<(posizione x) > [0]> e <(posizione y) > [0]>> allora
    dire [Sono nel quadrante in alto a destra!] per [0.5] secondi
  fine
fine
```

Questo script verifica se lo sprite si trova nel quadrante in alto a destra dello stage.

#### Condizione "o"
```
quando si clicca su [bandiera verde]
per sempre
  se <<sta toccando [Sprite2 v]?> o <sta toccando [Sprite3 v]?>> allora
    dire [Contatto!] per [0.5] secondi
  fine
fine
```

Questo script verifica se lo sprite sta toccando uno tra due sprite diversi.

#### Condizione "non"
```
quando si clicca su [bandiera verde]
per sempre
  se <non <sta toccando [bordo v]?>> allora
    muovi di [10] passi
  fine
fine
```

Questo script fa muovere lo sprite solo quando non sta toccando il bordo.

## Pattern decisionali avanzati

### Condizioni annidate
Le condizioni annidate sono strutture condizionali all'interno di altre strutture condizionali, che permettono di creare logiche decisionali più complesse.

```
se <condizione1> allora
  # Istruzioni per condizione1 vera
  se <condizione2> allora
    # Istruzioni per condizione1 e condizione2 vere
  altrimenti
    # Istruzioni per condizione1 vera e condizione2 falsa
  fine
altrimenti
  # Istruzioni per condizione1 falsa
fine
```

#### Esempi di utilizzo

##### Sistema di livelli
```
quando si clicca su [bandiera verde]
se <(punteggio) < [50]> allora
  porta [livello v] a [1]
  se <(punteggio) < [20]> allora
    porta [difficoltà v] a [facile]
  altrimenti
    porta [difficoltà v] a [media]
  fine
altrimenti
  porta [livello v] a [2]
  se <(punteggio) < [80]> allora
    porta [difficoltà v] a [media]
  altrimenti
    porta [difficoltà v] a [difficile]
  fine
fine
dire (unione di [Livello: ] e (livello) e [ - Difficoltà: ] e (difficoltà)) per [2] secondi
```

Questo script determina il livello e la difficoltà in base al punteggio, utilizzando condizioni annidate.

### Catene di condizioni
Le catene di condizioni sono una serie di blocchi "se-altrimenti" che verificano condizioni diverse in sequenza.

```
se <condizione1> allora
  # Istruzioni per condizione1 vera
altrimenti
  se <condizione2> allora
    # Istruzioni per condizione1 falsa e condizione2 vera
  altrimenti
    se <condizione3> allora
      # Istruzioni per condizione1 e condizione2 false e condizione3 vera
    altrimenti
      # Istruzioni per tutte le condizioni false
    fine
  fine
fine
```

#### Esempi di utilizzo

##### Classificazione del punteggio
```
quando si clicca su [bandiera verde]
chiedi [Inserisci il tuo punteggio (0-100):] e attendi
porta [punteggio v] a (risposta)
se <(punteggio) >= [90]> allora
  dire [Eccellente! Hai ottenuto un A.] per [2] secondi
altrimenti
  se <(punteggio) >= [80]> allora
    dire [Molto bene! Hai ottenuto un B.] per [2] secondi
  altrimenti
    se <(punteggio) >= [70]> allora
      dire [Bene! Hai ottenuto un C.] per [2] secondi
    altrimenti
      se <(punteggio) >= [60]> allora
        dire [Sufficiente. Hai ottenuto un D.] per [2] secondi
      altrimenti
        dire [Insufficiente. Hai ottenuto un F.] per [2] secondi
      fine
    fine
  fine
fine
```

Questo script classifica il punteggio dell'utente in diverse categorie utilizzando una catena di condizioni.

### Switch-case simulato
In Scratch non esiste un blocco "switch-case" come in altri linguaggi, ma è possibile simularlo utilizzando una serie di blocchi "se".

```
porta [caso v] a [valore]
se <(caso) = [valore1]> allora
  # Istruzioni per caso = valore1
fine
se <(caso) = [valore2]> allora
  # Istruzioni per caso = valore2
fine
se <(caso) = [valore3]> allora
  # Istruzioni per caso = valore3
fine
# E così via...
```

#### Esempi di utilizzo

##### Menu di selezione
```
quando si clicca su [bandiera verde]
chiedi [Scegli un'opzione (1-4):] e attendi
porta [scelta v] a (risposta)
se <(scelta) = [1]> allora
  dire [Hai scelto l'opzione 1: Gioca] per [2] secondi
  # Codice per iniziare il gioco
fine
se <(scelta) = [2]> allora
  dire [Hai scelto l'opzione 2: Istruzioni] per [2] secondi
  # Codice per mostrare le istruzioni
fine
se <(scelta) = [3]> allora
  dire [Hai scelto l'opzione 3: Impostazioni] per [2] secondi
  # Codice per le impostazioni
fine
se <(scelta) = [4]> allora
  dire [Hai scelto l'opzione 4: Esci] per [2] secondi
  # Codice per uscire
fine
```

Questo script implementa un menu di selezione utilizzando un approccio simile a switch-case.

## Applicazioni pratiche

### Gioco di domande e risposte
```
quando si clicca su [bandiera verde]
porta [punteggio v] a [0]
chiedi [Qual è la capitale dell'Italia?] e attendi
se <(risposta) = [Roma]> allora
  cambia [punteggio v] di [1]
  dire [Corretto!] per [2] secondi
altrimenti
  dire [Sbagliato. La risposta corretta è Roma.] per [2] secondi
fine
chiedi [Quanto fa 7 x 8?] e attendi
se <(risposta) = [56]> allora
  cambia [punteggio v] di [1]
  dire [Corretto!] per [2] secondi
altrimenti
  dire [Sbagliato. La risposta corretta è 56.] per [2] secondi
fine
dire [Hai totalizzato ] + (punteggio) + [ punti su 2!] per [3] secondi
```

Questo script implementa un semplice gioco di domande e risposte utilizzando condizioni per verificare le risposte.

### Sistema di controllo del personaggio
```
quando si clicca su [bandiera verde]
per sempre
  se <tasto [freccia destra v] premuto?> allora
    punta in direzione [90]
    muovi di [5] passi
    passa al costume [cammina-destra v]
  altrimenti
    se <tasto [freccia sinistra v] premuto?> allora
      punta in direzione [-90]
      muovi di [5] passi
      passa al costume [cammina-sinistra v]
    altrimenti
      passa al costume [fermo v]
    fine
  fine
  se <<tasto [spazio v] premuto?> e <(posizione y) = [-120]>> allora
    ripeti [10] volte
      cambia y di [12]
    fine
  fine
  se <(posizione y) > [-120]> allora
    cambia y di [-6]
  fine
fine
```

Questo script implementa un sistema di controllo per un personaggio di un platform game, con movimento orizzontale e salto.

### Simulazione di intelligenza artificiale semplice
```
quando si clicca su [bandiera verde]
per sempre
  se <(distanza da [Giocatore v]) < [100]> allora
    se <(distanza da [Giocatore v]) < [50]> allora
      # Il nemico attacca quando è molto vicino
      passa al costume [attacco v]
    altrimenti
      # Il nemico insegue quando è a media distanza
      punta verso [Giocatore v]
      muovi di [2] passi
      passa al costume [corsa v]
    fine
  altrimenti
    # Il nemico pattuglia quando il giocatore è lontano
    se <(timer) > [2]> allora
      ruota di (numero a caso tra [-20] e [20]) gradi
      azzera timer
    fine
    muovi di [1] passi
    passa al costume [pattuglia v]
  fine
  attendi [0.1] secondi
fine
```

Questo script implementa un comportamento di intelligenza artificiale semplice per un nemico in un gioco, che reagisce in modo diverso in base alla distanza dal giocatore.

## Buone pratiche

### Chiarezza delle condizioni
È importante mantenere le condizioni chiare e leggibili:

- Evita condizioni troppo complesse
- Suddividi condizioni complesse in più condizioni semplici
- Utilizza variabili booleane per memorizzare risultati intermedi

```
# Invece di questo
se <<<(x) > [0]> e <(y) > [0]>> e <<(distanza da [Giocatore v]) < [100]> o <(timer) > [5]>>> allora
  # Istruzioni...
fine

# Preferisci questo
porta [nel_quadrante_1 v] a <<(x) > [0]> e <(y) > [0]>>
porta [giocatore_vicino v] a <(distanza da [Giocatore v]) < [100]>
porta [timer_scaduto v] a <(timer) > [5]>
se <<(nel_quadrante_1) = [vero]> e <<(giocatore_vicino) = [vero]> o <(timer_scaduto) = [vero]>>> allora
  # Istruzioni...
fine
```

### Gestione dei casi limite
È importante considerare tutti i possibili casi, inclusi quelli limite:

- Verifica cosa succede con valori estremi (es. 0, numeri negativi, valori molto grandi)
- Gestisci esplicitamente i casi speciali
- Considera cosa succede se l'utente fornisce input non validi

```
quando si clicca su [bandiera verde]
chiedi [Inserisci un numero positivo:] e attendi
se <(risposta) > [0]> allora
  dire [Grazie per aver inserito un numero positivo!] per [2] secondi
altrimenti
  se <(risposta) = [0]> allora
    dire [Hai inserito zero, che non è positivo né negativo.] per [2] secondi
  altrimenti
    se <(risposta) < [0]> allora
      dire [Hai inserito un numero negativo.] per [2] secondi
    altrimenti
      dire [Non hai inserito un numero valido.] per [2] secondi
    fine
  fine
fine
```

### Debugging delle condizioni
Per identificare e risolvere problemi nelle strutture condizionali:

- Verifica separatamente ogni parte di una condizione complessa
- Utilizza blocchi "dire" per visualizzare i valori delle variabili e i risultati delle condizioni
- Testa con diversi valori di input per assicurarti che tutte le condizioni funzionino come previsto

## Conclusione
Le strutture condizionali sono elementi fondamentali della programmazione che permettono di creare programmi dinamici e interattivi. In Scratch, i blocchi "se" e "se-altrimenti", combinati con vari tipi di condizioni e operatori logici, offrono un potente sistema per implementare logiche decisionali complesse. Comprendere come utilizzare efficacemente queste strutture è essenziale per creare progetti che rispondano in modo appropriato agli input dell'utente e alle diverse situazioni che possono verificarsi durante l'esecuzione.

## Domande di autovalutazione
1. Quali sono le differenze principali tra i blocchi "se" e "se-altrimenti" in Scratch?
2. Come puoi combinare più condizioni utilizzando gli operatori logici "e", "o" e "non"?
3. Quali sono i vantaggi dell'utilizzo di condizioni annidate rispetto a una singola condizione complessa?
4. Come puoi simulare una struttura switch-case in Scratch?
5. Scrivi uno script che utilizza condizioni per implementare un semplice sistema di password, dove l'utente ha tre tentativi per inserire la password corretta.