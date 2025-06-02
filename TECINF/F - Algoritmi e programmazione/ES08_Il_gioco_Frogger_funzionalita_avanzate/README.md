# Il Gioco Frogger - Funzionalità Avanzate

## Introduzione

In questa esercitazione, espanderemo il gioco Frogger base creato nell'esercitazione precedente (ES06) aggiungendo funzionalità avanzate che renderanno il gioco più coinvolgente e completo. Implementeremo un sistema di punteggio, vite multiple, livelli di difficoltà crescente, effetti sonori e power-up.

## Concetti Teorici per le Funzionalità Avanzate

### 1. Variabili in Scratch

Le variabili sono contenitori che memorizzano dati che possono cambiare durante l'esecuzione del programma. In Scratch, possiamo creare variabili per:
- Tenere traccia del punteggio
- Contare le vite rimanenti
- Memorizzare il livello attuale
- Registrare il tempo di gioco

Per creare una variabile in Scratch:
1. Vai alla categoria "Variabili" nel pannello dei blocchi
2. Clicca su "Crea una Variabile"
3. Assegna un nome alla variabile (es. "punteggio", "vite", "livello")
4. Scegli se la variabile deve essere disponibile per tutti gli sprite o solo per uno specifico

### 2. Trasmissione di Messaggi

La trasmissione di messaggi permette la comunicazione tra sprite e la sincronizzazione di eventi nel gioco. Useremo i messaggi per:
- Segnalare quando la rana raggiunge la meta
- Notificare quando la rana perde una vita
- Avviare un nuovo livello

```blocks
invia [messaggio1] e attendi
```

```blocks
quando ricevo [messaggio1]
// Codice da eseguire
```

### 3. Suoni ed Effetti

Scratch permette di aggiungere suoni ed effetti visivi al gioco:
- Suoni per collisioni, salti, vittoria e game over
- Effetti visivi per power-up e transizioni di livello

Per aggiungere un suono:
1. Seleziona lo sprite a cui vuoi aggiungere il suono
2. Vai alla scheda "Suoni"
3. Clicca su "Scegli un Suono" o "Registra un Suono"

### 4. Cloni in Scratch

I cloni sono copie di uno sprite che possono essere create durante l'esecuzione del gioco. Sono utili per:
- Creare più veicoli dello stesso tipo
- Generare power-up in posizioni casuali
- Creare effetti particellari

```blocks
quando si clicca sulla bandierina verde
nascondi
per sempre
  crea clone di [me stesso]
  attendi (5) secondi
fine
```

```blocks
quando vengo clonato
mostra
// Codice per il comportamento del clone
```

## Implementazione delle Funzionalità Avanzate

### Fase 1: Sistema di Punteggio

#### Creazione delle Variabili

1. Crea una variabile chiamata "punteggio" per tutti gli sprite
2. Crea una variabile chiamata "punteggio massimo" per tutti gli sprite

#### Aggiornamento del Punteggio

Aggiungi questo codice allo sprite della rana:

```blocks
Quando si clicca sulla bandierina verde
porta [punteggio v] a [0]
se <(punteggio massimo) = [0]> allora
  porta [punteggio massimo v] a [0]
fine
```

```blocks
Quando vengo toccato da [bordo superiore v]
porta [punteggio v] a ((punteggio) + [100])
riproduci suono [victory v]
attendi (0.5) secondi
vai a x: (numero a caso tra [-240] e [240]) y: [-160]
se <(punteggio) > (punteggio massimo)> allora
  porta [punteggio massimo v] a (punteggio)
fine
```

### Fase 2: Sistema di Vite

#### Creazione della Variabile Vite

1. Crea una variabile chiamata "vite" per tutti gli sprite

#### Gestione delle Vite

Aggiungi questo codice allo sprite della rana:

```blocks
Quando si clicca sulla bandierina verde
porta [vite v] a [3]
```

```blocks
Quando vengo toccato da [veicolo v]
porta [vite v] a ((vite) - [1])
riproduci suono [hit v]
effetto [fantasma v] a (100)
attendi (0.5) secondi
effetto [fantasma v] a (0)
vai a x: (numero a caso tra [-240] e [240]) y: [-160]
se <(vite) = [0]> allora
  invia [game over v] e attendi
fine
```

#### Creazione dello Sprite "Game Over"

1. Crea un nuovo sprite con il testo "Game Over"
2. Aggiungi questo codice al nuovo sprite:

```blocks
Quando si clicca sulla bandierina verde
nascondi
```

```blocks
Quando ricevo [game over v]
mostra
riproduci suono [game over v]
attendi (3) secondi
nascondi
porta [punteggio v] a [0]
porta [vite v] a [3]
porta [livello v] a [1]
invia [restart v] e attendi
```

### Fase 3: Livelli di Difficoltà

#### Creazione della Variabile Livello

1. Crea una variabile chiamata "livello" per tutti gli sprite

#### Gestione dei Livelli

Aggiungi questo codice allo sprite della rana:

```blocks
Quando si clicca sulla bandierina verde
porta [livello v] a [1]
```

```blocks
Quando vengo toccato da [bordo superiore v]
se <(punteggio) mod (500) = [0]> allora
  porta [livello v] a ((livello) + [1])
  invia [nuovo livello v] e attendi
fine
```

#### Adattamento della Velocità dei Veicoli

Modifica il codice di ogni veicolo per aumentare la velocità in base al livello:

```blocks
Quando si clicca sulla bandierina verde
porta [velocità base v] a [10]
```

```blocks
Quando ricevo [nuovo livello v]
porta [velocità base v] a ((velocità base) + [2])
```

```blocks
Quando si clicca sulla bandierina verde
vai a x: [-240] y: [-120]  // Posizione nella seconda corsia
per sempre
  fai ((velocità base) * (livello)) passi
  attendi (1) secondi
  se <(x position) > [240]> allora
    vai a x: [-240] y: [-120]
  fine
fine
```

### Fase 4: Effetti Sonori

#### Aggiunta di Suoni al Gioco

1. Aggiungi i seguenti suoni alla libreria del tuo progetto:
   - "jump" (per quando la rana salta)
   - "hit" (per quando la rana viene colpita)
   - "victory" (per quando la rana raggiunge la meta)
   - "game over" (per quando il gioco termina)
   - "power up" (per quando la rana prende un power-up)

2. Aggiungi questo codice allo sprite della rana per il suono del salto:

```blocks
Quando si preme il tasto [freccia su v]
riproduci suono [jump v]
se <(y position) < [180]> allora
  cambia y di (15)
fine
```

### Fase 5: Power-Up

#### Creazione dello Sprite Power-Up

1. Crea un nuovo sprite per rappresentare un power-up (ad esempio, una stella o una moneta)
2. Aggiungi questo codice al nuovo sprite:

```blocks
Quando si clicca sulla bandierina verde
nascondi
per sempre
  attendi (numero a caso tra [5] e [15]) secondi
  vai a x: (numero a caso tra [-240] e [240]) y: (numero a caso tra [-160] e [160])
  mostra
  attendi (5) secondi
  nascondi
fine
```

#### Effetti del Power-Up

Aggiungi questo codice allo sprite del power-up:

```blocks
Quando vengo toccato da [rana v]
nascondi
riproduci suono [power up v]
invia [power up attivato v] e attendi
```

Aggiungi questo codice allo sprite della rana:

```blocks
Quando ricevo [power up attivato v]
porta [punteggio v] a ((punteggio) + [50])
effetto [luminosità v] a (100)
attendi (5) secondi
effetto [luminosità v] a (0)
```

## Esercizio Completo

Per completare l'esercizio, segui questi passaggi:

1. **Implementa il sistema di punteggio**:
   - Crea le variabili necessarie
   - Aggiungi il codice per incrementare il punteggio quando la rana raggiunge la meta
   - Visualizza il punteggio e il punteggio massimo sullo stage

2. **Implementa il sistema di vite**:
   - Crea la variabile per le vite
   - Aggiungi il codice per decrementare le vite quando la rana viene colpita
   - Crea lo sprite e il codice per il game over

3. **Implementa i livelli di difficoltà**:
   - Crea la variabile per il livello
   - Modifica il codice dei veicoli per aumentare la velocità in base al livello
   - Aggiungi il codice per passare al livello successivo

4. **Aggiungi effetti sonori**:
   - Importa i suoni necessari
   - Aggiungi il codice per riprodurre i suoni nei momenti appropriati

5. **Implementa i power-up**:
   - Crea lo sprite per il power-up
   - Aggiungi il codice per far apparire e scomparire il power-up
   - Implementa gli effetti del power-up sulla rana

## Sfide Aggiuntive

Se hai completato tutte le funzionalità sopra, prova ad aggiungere queste sfide extra:

1. **Modalità Tempo**: Aggiungi un timer che limita il tempo disponibile per completare il livello

2. **Nemici Speciali**: Crea nemici con comportamenti unici, come veicoli che cambiano direzione o velocità

3. **Power-Up Diversi**: Implementa diversi tipi di power-up con effetti differenti (invincibilità, velocità extra, punti bonus)

4. **Schermata Iniziale**: Crea una schermata di titolo con opzioni per iniziare il gioco o vedere le istruzioni

5. **Salvataggio dei Punteggi**: Usa le liste in Scratch per salvare e visualizzare i migliori punteggi

## Conclusione

In questa esercitazione hai imparato a:
- Utilizzare le variabili per tenere traccia di informazioni di gioco
- Implementare un sistema di punteggio e vite
- Creare livelli con difficoltà crescente
- Aggiungere effetti sonori e visivi al gioco
- Implementare power-up e funzionalità speciali

Queste competenze sono fondamentali nello sviluppo di videogiochi e possono essere applicate a molti altri progetti. Continua a sperimentare e a migliorare il tuo gioco Frogger aggiungendo nuove funzionalità e meccaniche di gioco!