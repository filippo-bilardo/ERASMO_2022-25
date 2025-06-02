# Esempi di semplici programmi: "Ciao, mondo!"

## Introduzione
In questa guida, esploreremo alcuni esempi di programmi semplici in Scratch, partendo dal classico "Ciao, mondo!" fino a progetti leggermente più complessi. Questi esempi ti aiuteranno a comprendere i concetti fondamentali della programmazione in Scratch e a sviluppare le competenze necessarie per creare progetti più elaborati in futuro.

## Il programma "Ciao, mondo!"

### Cos'è un programma "Ciao, mondo!"
Nella tradizione della programmazione, "Ciao, mondo!" (o "Hello, World!" in inglese) è spesso il primo programma che si impara a scrivere in un nuovo linguaggio. Si tratta di un programma semplice che ha l'unico scopo di mostrare il messaggio "Ciao, mondo!" sullo schermo. È un ottimo punto di partenza per familiarizzare con la sintassi e l'ambiente di sviluppo.

### Versione base in Scratch

#### Implementazione con fumetto
1. Crea un nuovo progetto in Scratch
2. Utilizza lo sprite del gatto predefinito
3. Dalla categoria "Eventi", trascina il blocco "quando si clicca su [bandiera verde]" nell'area degli script
4. Dalla categoria "Aspetto", trascina il blocco "dire [Ciao, mondo!] per [2] secondi" e collegalo sotto il blocco precedente

Questo script farà apparire un fumetto con il testo "Ciao, mondo!" sopra lo sprite del gatto per 2 secondi quando si clicca sulla bandiera verde.

#### Implementazione con testo sullo stage
1. Crea un nuovo progetto in Scratch
2. Dalla categoria "Eventi", trascina il blocco "quando si clicca su [bandiera verde]" nell'area degli script
3. Dalla categoria "Aspetto", trascina il blocco "dire [Ciao, mondo!]" (senza durata) e collegalo sotto il blocco precedente

In questa versione, il fumetto con "Ciao, mondo!" rimarrà visibile finché non viene eseguito un altro blocco "dire" o "dire per secondi".

### Varianti del "Ciao, mondo!"

#### Con interazione utente
```
quando si clicca su [bandiera verde]
chiedi [Come ti chiami?] e attendi
dire [Ciao, ] + (risposta) + [! Benvenuto in Scratch!] per [2] secondi
```

Questo script chiederà all'utente di inserire il proprio nome e poi mostrerà un saluto personalizzato.

#### Con animazione
```
quando si clicca su [bandiera verde]
andare a x: [0] y: [0]
puntare in direzione [90]
nascondi
attendi [1] secondi
mostra
ripeti [10] volte
  muovi di [10] passi
  attendi [0.1] secondi
fine
dire [Ciao, mondo!] per [2] secondi
```

Questo script aggiunge un'animazione semplice prima di mostrare il messaggio "Ciao, mondo!".

#### Con suono
```
quando si clicca su [bandiera verde]
suona [meow] fino a completamento
dire [Ciao, mondo!] per [2] secondi
```

Questo script riproduce un suono prima di mostrare il messaggio.

## Altri esempi di programmi semplici

### Disegno di una forma geometrica

#### Disegno di un quadrato
```
quando si clicca su [bandiera verde]
cancella tutto
porta penna giù
ripeti [4] volte
  muovi di [100] passi
  ruota di [90] gradi
fine
porta penna su
```

Questo script utilizza l'estensione "Penna" per disegnare un quadrato sullo stage.

#### Disegno di un cerchio
```
quando si clicca su [bandiera verde]
cancella tutto
porta penna giù
ripeti [36] volte
  muovi di [10] passi
  ruota di [10] gradi
fine
porta penna su
```

Questo script disegna un cerchio approssimato utilizzando piccoli segmenti.

### Animazione semplice

#### Movimento con rimbalzo
```
quando si clicca su [bandiera verde]
andare a x: [0] y: [0]
puntare in direzione [45]
per sempre
  muovi di [10] passi
  rimbalza quando tocchi il bordo
fine
```

Questo script fa muovere lo sprite in diagonale, rimbalzando quando tocca i bordi dello stage.

#### Cambio di costume
```
quando si clicca su [bandiera verde]
per sempre
  cambia costume in [costume1]
  attendi [0.5] secondi
  cambia costume in [costume2]
  attendi [0.5] secondi
fine
```

Questo script alterna continuamente tra due costumi, creando un'animazione semplice.

### Interazione con l'utente

#### Controllo con tastiera
```
quando si clicca su [bandiera verde]
per sempre
  se <tasto [freccia su] premuto?> allora
    muovi di [10] passi
  fine
  se <tasto [freccia giù] premuto?> allora
    muovi di [-10] passi
  fine
  se <tasto [freccia destra] premuto?> allora
    ruota di [15] gradi
  fine
  se <tasto [freccia sinistra] premuto?> allora
    ruota di [-15] gradi
  fine
fine
```

Questo script permette di controllare lo sprite utilizzando i tasti freccia della tastiera.

#### Seguire il puntatore del mouse
```
quando si clicca su [bandiera verde]
per sempre
  punta verso [puntatore del mouse v]
  muovi di [5] passi
fine
```

Questo script fa seguire allo sprite il puntatore del mouse.

### Utilizzo di variabili

#### Contatore semplice
```
quando si clicca su [bandiera verde]
porta [contatore v] a [0]
per sempre
  cambia [contatore v] di [1]
  attendi [1] secondi
fine
```

Questo script crea una variabile chiamata "contatore" e la incrementa di 1 ogni secondo.

#### Timer
```
quando si clicca su [bandiera verde]
porta [tempo v] a [10]
ripeti fino a quando <(tempo) = [0]>
  attendi [1] secondi
  cambia [tempo v] di [-1]
fine
dire [Tempo scaduto!] per [2] secondi
```

Questo script crea un conto alla rovescia da 10 a 0, mostrando un messaggio quando il tempo è scaduto.

## Progetti leggermente più complessi

### Quiz semplice
```
quando si clicca su [bandiera verde]
porta [punteggio v] a [0]
chiedi [Quanto fa 5 + 3?] e attendi
se <(risposta) = [8]> allora
  cambia [punteggio v] di [1]
  dire [Corretto!] per [2] secondi
altrimenti
  dire [Sbagliato. La risposta corretta è 8.] per [2] secondi
fine
chiedi [Qual è la capitale dell'Italia?] e attendi
se <(risposta) = [Roma]> allora
  cambia [punteggio v] di [1]
  dire [Corretto!] per [2] secondi
altrimenti
  dire [Sbagliato. La risposta corretta è Roma.] per [2] secondi
fine
dire [Hai totalizzato ] + (punteggio) + [ punti su 2!] per [3] secondi
```

Questo script crea un semplice quiz con due domande, tenendo traccia del punteggio dell'utente.

### Gioco "Acchiappa la mela"
```
# Script per lo sprite "Mela"
quando si clicca su [