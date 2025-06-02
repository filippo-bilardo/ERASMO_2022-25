# Variabili e operatori

## Introduzione
Le variabili e gli operatori sono concetti fondamentali in qualsiasi linguaggio di programmazione, incluso Scratch. In questa guida, esploreremo cosa sono le variabili, come crearle e utilizzarle in Scratch, e come manipolare i dati attraverso vari tipi di operatori. Questi concetti sono essenziali per creare programmi dinamici e interattivi.

## Variabili in Scratch

### Cos'è una variabile
Una variabile è un contenitore che memorizza un valore che può cambiare durante l'esecuzione del programma. Puoi immaginare una variabile come una scatola etichettata in cui puoi mettere un numero, una parola o qualsiasi altro tipo di dato. Il contenuto della scatola può essere modificato, ma l'etichetta (il nome della variabile) rimane la stessa.

### Tipi di variabili in Scratch
Scratch gestisce automaticamente i tipi di dati, quindi non è necessario dichiarare esplicitamente se una variabile conterrà un numero, una stringa o un valore booleano. Una variabile in Scratch può contenere:

- **Numeri**: interi (es. 42) o decimali (es. 3.14)
- **Testo**: sequenze di caratteri (es. "Ciao mondo")
- **Valori booleani**: rappresentati in Scratch attraverso i blocchi booleani (vero/falso)

### Ambito delle variabili
In Scratch, le variabili possono avere due ambiti diversi:

- **Variabili per tutti gli sprite**: accessibili e modificabili da qualsiasi sprite nel progetto
- **Variabili per un solo sprite**: accessibili e modificabili solo dallo sprite per cui sono state create

La scelta dell'ambito dipende dalle esigenze del progetto. Le variabili per tutti gli sprite sono utili per dati che devono essere condivisi (es. punteggio, livello), mentre le variabili per un solo sprite sono ideali per dati specifici di uno sprite (es. velocità, salute).

## Creare e utilizzare variabili

### Creazione di una variabile
1. Vai alla categoria "Variabili" nella tavolozza dei blocchi
2. Clicca sul pulsante "Crea una Variabile"
3. Inserisci un nome descrittivo per la variabile
4. Seleziona l'ambito della variabile ("Per tutti gli sprite" o "Solo per questo sprite")
5. Clicca su "OK" per creare la variabile

### Nominare le variabili
È importante scegliere nomi significativi per le variabili. Un buon nome di variabile dovrebbe:

- Descrivere chiaramente il contenuto della variabile
- Essere abbastanza specifico ma non eccessivamente lungo
- Utilizzare convenzioni coerenti (es. camelCase o snake_case)

Esempi di buoni nomi di variabili: `punteggio`, `velocitàGiocatore`, `tempoRimanente`, `numeroVite`.

### Blocchi per manipolare le variabili
Dopo aver creato una variabile, nella categoria "Variabili" appariranno diversi blocchi per manipolarla:

- **porta [variabile] a [valore]**: assegna un valore specifico alla variabile
- **cambia [variabile] di [valore]**: incrementa o decrementa la variabile del valore specificato
- **mostra variabile [variabile]**: visualizza il valore della variabile sullo stage
- **nascondi variabile [variabile]**: nasconde la visualizzazione della variabile dallo stage
- **[variabile]**: blocco reporter che restituisce il valore attuale della variabile

### Esempi di utilizzo delle variabili

#### Contatore semplice
```
quando si clicca su [bandiera verde]
porta [contatore v] a [0]
per sempre
  cambia [contatore v] di [1]
  attendi [1] secondi
fine
```

Questo script crea un contatore che aumenta di 1 ogni secondo.

#### Punteggio in un gioco
```
quando si clicca su [bandiera verde]
porta [punteggio v] a [0]

# In un altro script, quando il giocatore ottiene punti
quando <tocca [oggetto v]?>
cambia [punteggio v] di [10]
nascondi
```

Questo esempio mostra come utilizzare una variabile per tenere traccia del punteggio in un gioco.

#### Memorizzare input dell'utente
```
quando si clicca su [bandiera verde]
chiedi [Come ti chiami?] e attendi
porta [nome v] a (risposta)
dire [Ciao, ] + (nome) + [!] per [2] secondi
```

Questo script chiede all'utente di inserire il proprio nome, lo memorizza in una variabile e poi lo utilizza per un saluto personalizzato.

## Operatori in Scratch

### Cos'è un operatore
Gli operatori sono simboli o blocchi che eseguono operazioni sui dati. In Scratch, gli operatori sono rappresentati da blocchi verdi nella categoria "Operatori".

### Tipi di operatori

#### Operatori aritmetici
Eseguono calcoli matematici:

- **[a] + [b]**: addizione
- **[a] - [b]**: sottrazione
- **[a] * [b]**: moltiplicazione
- **[a] / [b]**: divisione
- **numero a caso tra [a] e [b]**: genera un numero casuale nell'intervallo specificato

#### Operatori di confronto
Confrontano valori e restituiscono un risultato booleano (vero/falso):

- **[a] > [b]**: maggiore di
- **[a] < [b]**: minore di
- **[a] = [b]**: uguale a

#### Operatori logici
Combinano o modificano valori booleani:

- **<a> e <b>**: vero solo se entrambe le condizioni sono vere
- **<a> o <b>**: vero se almeno una delle condizioni è vera
- **non <a>**: inverte il valore booleano (vero diventa falso e viceversa)

#### Operatori per stringhe
Manipola testo:

- **unione di [a] e [b]**: concatena due stringhe
- **lettera [n] di [testo]**: estrae il carattere alla posizione specificata
- **lunghezza di [testo]**: restituisce il numero di caratteri in una stringa
- **[testo] contiene [sottostringa]?**: verifica se una stringa contiene una sottostringa

#### Operatori matematici avanzati
Eseguono funzioni matematiche più complesse:

- **[n] mod [m]**: restituisce il resto della divisione di n per m
- **arrotonda [n]**: arrotonda un numero al più vicino intero
- **assoluto di [n]**: restituisce il valore assoluto di un numero
- **[funzione] di [n]**: applica una funzione matematica (radice quadrata, sin, cos, tan, asin, acos, atan, ln, log, e^, 10^)

### Esempi di utilizzo degli operatori

#### Calcolo matematico
```
quando si clicca su [bandiera verde]
porta [risultato v] a ((3 * 4) + (10 / 2))
dire [Il risultato è ] + (risultato) per [2] secondi
```

Questo script esegue un calcolo matematico e mostra il risultato.

#### Decisione basata su confronto
```
quando si clicca su [bandiera verde]
chiedi [Quanti anni hai?] e attendi
se <(risposta) < [18]> allora
  dire [Sei minorenne.] per [2] secondi
altrimenti
  dire [Sei maggiorenne.] per [2] secondi
fine
```

Questo script utilizza un operatore di confronto per prendere una decisione basata sull'età inserita dall'utente.

#### Combinazione di condizioni logiche
```
quando si clicca su [bandiera verde]
se <<(posizione x) > [0]> e <(posizione y) > [0]>> allora
  dire [Sono nel quadrante in alto a destra!] per [2] secondi
fine
```

Questo script utilizza l'operatore logico "e" per verificare se lo sprite si trova nel quadrante in alto a destra dello stage.

#### Manipolazione di stringhe
```
quando si clicca su [bandiera verde]
porta [nome v] a [Scratch]
porta [saluto v] a (unione di [Ciao, ] e (nome))
dire (saluto) per [2] secondi
porta [iniziale v] a (lettera [1] di (nome))
dire [La tua iniziale è ] + (iniziale) per [2] secondi
```

Questo script dimostra l'uso di operatori per stringhe per manipolare testo.

## Combinare variabili e operatori

### Aggiornare variabili con operatori
```
quando si clicca su [bandiera verde]
porta [x v] a [5]
porta [y v] a [3]
porta [somma v] a ((x) + (y))
porta [prodotto v] a ((x) * (y))
porta [media v] a ((somma) / [2])
dire [La media è ] + (media) per [2] secondi
```

Questo script utilizza variabili e operatori insieme per eseguire calcoli più complessi.

### Condizioni basate su variabili
```
quando si clicca su [bandiera verde]
porta [punteggio v] a [0]
porta [livello v] a [1]
ripeti fino a quando <(punteggio) > [100]>
  cambia [punteggio v] di (numero a caso tra [1] e [10])
  attendi [0.5] secondi
  se <(punteggio) > [50]> allora
    porta [livello v] a [2]
  fine
fine
dire [Hai raggiunto il livello ] + (livello) + [ con ] + (punteggio) + [ punti!] per [2] secondi
```

Questo script utilizza variabili e operatori per creare un sistema di livelli basato sul punteggio.

## Buone pratiche

### Inizializzazione delle variabili
È importante inizializzare le variabili all'inizio del programma per evitare comportamenti imprevisti:

```
quando si clicca su [bandiera verde]
porta [punteggio v] a [0]
porta [vite v] a [3]
porta [livello v] a [1]
# Resto del programma...
```

### Evitare la divisione per zero
La divisione per zero causa errori in matematica. È buona pratica verificare che il divisore non sia zero prima di eseguire una divisione:

```
se <(divisore) = [0]> allora
  dire [Impossibile dividere per zero!] per [2] secondi
altrimenti
  porta [risultato v] a ((dividendo) / (divisore))
fine
```

### Documentare l'uso delle variabili
Utilizza commenti per spiegare lo scopo delle variabili e come vengono utilizzate:

```
# Inizializza le variabili del gioco
porta [punteggio v] a [0]  # Tiene traccia del punteggio del giocatore
porta [vite v] a [3]       # Numero di tentativi disponibili
porta [livello v] a [1]     # Livello attuale del gioco
```

## Conclusione
Le variabili e gli operatori sono strumenti potenti che permettono di creare programmi dinamici e interattivi in Scratch. Le variabili consentono di memorizzare e manipolare dati, mentre gli operatori permettono di eseguire calcoli, confronti e manipolazioni di stringhe. Combinando questi concetti, è possibile implementare logiche complesse e creare progetti sofisticati.

## Domande di autovalutazione
1. Qual è la differenza tra una variabile "per tutti gli sprite" e una variabile "solo per questo sprite"?
2. Come puoi incrementare il valore di una variabile di 5 in Scratch?
3. Quali operatori utilizzeresti per verificare se un numero è compreso tra 10 e 20?
4. Come puoi combinare due stringhe in Scratch?
5. Scrivi uno script che calcola l'area di un rettangolo, date le variabili "lunghezza" e "larghezza".