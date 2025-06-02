# Esempi pratici di algoritmi

## Introduzione
In questa guida esploreremo esempi concreti di algoritmi implementati in Scratch, andando oltre gli algoritmi di ordinamento e ricerca già visti. Questi esempi ti aiuteranno a comprendere come applicare i concetti algoritmici per risolvere problemi reali e sviluppare progetti interessanti.

## Algoritmi matematici

### Calcolo del massimo comun divisore (MCD)

#### Descrizione dell'algoritmo
L'algoritmo di Euclide per il calcolo del massimo comun divisore (MCD) si basa sul principio che se a e b sono due numeri interi positivi, allora MCD(a, b) = MCD(b, a mod b).

#### Implementazione in Scratch
```
Definisci MCD [a] [b]
Ripeti fino a quando <(b) = [0]>
  Imposta [temp v] a (b)
  Imposta [b v] a ((a) mod (b))
  Imposta [a v] a (temp)
Fine
Rispondi (a)

Quando si clicca sulla bandiera verde
Imposta [num1 v] a (chiedi [Inserisci il primo numero:] e attendi)
Imposta [num2 v] a (chiedi [Inserisci il secondo numero:] e attendi)
Imposta [risultato v] a (MCD (num1) (num2))
Dire (unione di [Il MCD di ] e (num1) e [ e ] e (num2) e [ è ] e (risultato)) per (3) secondi
```

### Calcolo dei numeri di Fibonacci

#### Descrizione dell'algoritmo
La sequenza di Fibonacci è una serie di numeri in cui ogni numero è la somma dei due precedenti, partendo da 0 e 1.

#### Implementazione in Scratch
```
Definisci fibonacci [n]
Se <(n) = [0]> allora
  Rispondi [0]
Fine
Se <(n) = [1]> allora
  Rispondi [1]
Fine
Imposta [a v] a [0]
Imposta [b v] a [1]
Imposta [i v] a [2]
Ripeti fino a quando <(i) > (n)>
  Imposta [temp v] a (b)
  Imposta [b v] a ((a) + (b))
  Imposta [a v] a (temp)
  Cambia [i v] di (1)
Fine
Rispondi (b)

Quando si clicca sulla bandiera verde
Cancella tutto da [sequenza v]
Imposta [n v] a (chiedi [Quanti numeri di Fibonacci vuoi calcolare?] e attendi)
Per i da (0) a ((n) - (1))
  Aggiungi (fibonacci (i)) a [sequenza v]
Fine
Dire (unione di [Sequenza di Fibonacci: ] e (sequenza)) per (5) secondi
```

### Verifica della primalità di un numero

#### Descrizione dell'algoritmo
Un numero è primo se è divisibile solo per 1 e per se stesso. Questo algoritmo verifica se un numero è primo controllando se ha divisori fino alla sua radice quadrata.

#### Implementazione in Scratch
```
Definisci è_primo [n]
Se <(n) ≤ [1]> allora
  Rispondi [falso]
Fine
Se <(n) = [2]> allora
  Rispondi [vero]
Fine
Se <((n) mod (2)) = [0]> allora
  Rispondi [falso]
Fine
Imposta [i v] a [3]
Ripeti fino a quando <(i) * (i) > (n)>
  Se <((n) mod (i)) = [0]> allora
    Rispondi [falso]
  Fine
  Cambia [i v] di (2)
Fine
Rispondi [vero]

Quando si clicca sulla bandiera verde
Imposta [numero v] a (chiedi [Inserisci un numero:] e attendi)
Se <(è_primo (numero)) = [vero]> allora
  Dire (unione di (numero) e [ è un numero primo]) per (2) secondi
Altrimenti
  Dire (unione di (numero) e [ non è un numero primo]) per (2) secondi
Fine
```

## Algoritmi di manipolazione delle stringhe

### Verifica di palindromi

#### Descrizione dell'algoritmo
Un palindromo è una parola o frase che si legge allo stesso modo da sinistra a destra e da destra a sinistra. Questo algoritmo verifica se una stringa è un palindromo.

#### Implementazione in Scratch
```
Definisci è_palindromo [testo]
Imposta [lunghezza v] a (lunghezza di (testo))
Per i da (1) a (arrotonda (lunghezza) / (2))
  Se <(lettera (i) di (testo)) ≠ (lettera ((lunghezza) - ((i) - (1))) di (testo))> allora
    Rispondi [falso]
  Fine
Fine
Rispondi [vero]

Quando si clicca sulla bandiera verde
Imposta [parola v] a (chiedi [Inserisci una parola:] e attendi)
Se <(è_palindromo (parola)) = [vero]> allora
  Dire (unione di ["] e (parola) e [" è un palindromo]) per (2) secondi
Altrimenti
  Dire (unione di ["] e (parola) e [" non è un palindromo]) per (2) secondi
Fine
```

### Conteggio delle occorrenze di una lettera

#### Descrizione dell'algoritmo
Questo algoritmo conta quante volte una determinata lettera appare in una stringa.

#### Implementazione in Scratch
```
Definisci conta_occorrenze [testo] [lettera]
Imposta [conteggio v] a [0]
Per i da (1) a (lunghezza di (testo))
  Se <(lettera (i) di (testo)) = (lettera)> allora
    Cambia [conteggio v] di (1)
  Fine
Fine
Rispondi (conteggio)

Quando si clicca sulla bandiera verde
Imposta [frase v] a (chiedi [Inserisci una frase:] e attendi)
Imposta [carattere v] a (chiedi [Quale lettera vuoi contare?] e attendi)
Imposta [risultato v] a (conta_occorrenze (frase) (carattere))
Dire (unione di [La lettera "] e (carattere) e [" appare ] e (risultato) e [ volte nella frase]) per (3) secondi
```

### Inversione di una stringa

#### Descrizione dell'algoritmo
Questo algoritmo inverte l'ordine dei caratteri in una stringa.

#### Implementazione in Scratch
```
Definisci inverti [testo]
Imposta [risultato v] a []
Per i da (lunghezza di (testo)) a (1) con incremento di (-1)
  Imposta [risultato v] a (unione di (risultato) e (lettera (i) di (testo)))
Fine
Rispondi (risultato)

Quando si clicca sulla bandiera verde
Imposta [frase v] a (chiedi [Inserisci una frase da invertire:] e attendi)
Imposta [invertita v] a (inverti (frase))
Dire (unione di [Frase invertita: ] e (invertita)) per (3) secondi
```

## Algoritmi di simulazione fisica

### Simulazione di gravità

#### Descrizione dell'algoritmo
Questo algoritmo simula l'effetto della gravità su un oggetto, implementando le leggi del moto di Newton in forma semplificata.

#### Implementazione in Scratch
```
Quando si clicca sulla bandiera verde
Vai a x: (0) y: (150)
Imposta [velocità_y v] a [0]
Imposta [gravità v] a [-0.5]
Imposta [attrito v] a [0.99]
Imposta [elasticità v] a [0.8]
Per sempre
  // Applica la gravità alla velocità verticale
  Cambia [velocità_y v] di (gravità)
  
  // Aggiorna la posizione in base alla velocità
  Cambia y di (velocità_y)
  
  // Gestisci la collisione con il suolo
  Se <(y) < [-170]> allora
    Imposta [velocità_y v] a [-(velocità_y) * (elasticità)]
    Porta y a [-170]
  Fine
  
  // Gestisci l'input dell'utente
  Se <tasto [spazio v] premuto?> allora
    Imposta [velocità_y v] a [10]
  Fine
Fine
```

### Simulazione di moto armonico

#### Descrizione dell'algoritmo
Questo algoritmo simula un moto armonico semplice, come quello di una molla o di un pendolo.

#### Implementazione in Scratch
```
Quando si clicca sulla bandiera verde
Imposta [ampiezza v] a [100]
Imposta [frequenza v] a [0.05]
Imposta [fase v] a [0]
Per sempre
  Imposta [x v] a ((ampiezza) * (sin di ((fase) * (360))))
  Vai a x: (x) y: (0)
  Cambia [fase v] di (frequenza)
Fine
```

### Simulazione di collisioni elastiche

#### Descrizione dell'algoritmo
Questo algoritmo simula collisioni elastiche tra oggetti, conservando la quantità di moto e l'energia cinetica.

#### Implementazione in Scratch
```
// Script per la palla 1
Quando si clicca sulla bandiera verde
Vai a x: (-100) y: (0)
Imposta [velocità_x1 v] a [5]
Imposta [massa1 v] a [2]
Per sempre
  Cambia x di (velocità_x1)
  
  // Controlla collisione con la palla 2
  Se <(distanza da [Palla2 v]) < [50]> allora
    // Calcola le nuove velocità dopo la collisione
    Imposta [v1_finale v] a (((velocità_x1) * ((massa1) - (massa2)) + (2) * (massa2) * (velocità_x2)) / ((massa1) + (massa2)))
    Invia messaggio [aggiorna velocità]
    Imposta [velocità_x1 v] a (v1_finale)
  Fine
  
  // Rimbalza sui bordi
  Se <(x) > [240] o (x) < [-240]> allora
    Imposta [velocità_x1 v] a [-(velocità_x1)]
  Fine
Fine

// Script per la palla 2
Quando si clicca sulla bandiera verde
Vai a x: (100) y: (0)
Imposta [velocità_x2 v] a [-3]
Imposta [massa2 v] a [1]
Per sempre
  Cambia x di (velocità_x2)
Fine

Quando ricevo messaggio [aggiorna velocità]
Imposta [v2_finale v] a (((velocità_x2) * ((massa2) - (massa1)) + (2) * (massa1) * (velocità_x1)) / ((massa1) + (massa2)))
Imposta [velocità_x2 v] a (v2_finale)
```

## Algoritmi di intelligenza artificiale

### Algoritmo di inseguimento semplice

#### Descrizione dell'algoritmo
Questo algoritmo implementa un comportamento di inseguimento semplice, dove uno sprite segue un altro con una certa velocità.

#### Implementazione in Scratch
```
// Script per l'inseguitore
Quando si clicca sulla bandiera verde
Per sempre
  Punta verso [Obiettivo v]
  Fai (3) passi
Fine

// Script per l'obiettivo (controllato dal mouse)
Quando si clicca sulla bandiera verde
Per sempre
  Vai a x: (posizione x del mouse) y: (posizione y del mouse)
Fine
```

### Algoritmo di evitamento degli ostacoli

#### Descrizione dell'algoritmo
Questo algoritmo permette a uno sprite di muoversi evitando gli ostacoli presenti nel percorso.

#### Implementazione in Scratch
```
Quando si clicca sulla bandiera verde
Per sempre
  Se <tocca [Ostacolo v]?> allora
    Ruota di (numero a caso da (90) a (180)) gradi
    Fai (10) passi
  Altrimenti
    Fai (5) passi
    Se <tocca bordo?> allora
      Rimbalza
    Fine
  Fine
Fine
```

### Algoritmo di flocking (comportamento di gruppo)

#### Descrizione dell'algoritmo
Questo algoritmo simula il comportamento di gruppo di uccelli o pesci, basato su tre regole: separazione, allineamento e coesione.

#### Implementazione in Scratch
```
// Inizializzazione
Quando si clicca sulla bandiera verde
Nascondi
Cancella tutti i cloni
Ripeti (10) volte
  Crea clone di [me stesso v]
Fine

// Comportamento di ogni individuo del gruppo
Quando vengo clonato
Mostra
Vai a x: (numero a caso da (-200) a (200)) y: (numero a caso da (-150) a (150))
Punta in direzione (numero a caso da (0) a (359))
Imposta [velocità v] a (numero a caso da (2) a (4))
Per sempre
  // Regola 1: Separazione - evita gli altri troppo vicini
  Se <(distanza da [altri v]) < [20]> allora
    Ruota di (numero a caso da (-45) a (45)) gradi
  Fine
  
  // Regola 2: Allineamento - segui la direzione media del gruppo
  Se <(distanza da [altri v]) < [100]> allora
    Punta verso [altri v]
    Ruota di (numero a caso da (-10) a (10)) gradi
  Fine
  
  // Regola 3: Coesione - muoviti verso il centro del gruppo
  Se <(distanza da [altri v]) > [150]> allora
    Punta verso [altri v]
  Fine
  
  // Movimento
  Fai (velocità) passi
  
  // Rimbalza sui bordi
  Se <tocca bordo?> allora
    Ruota di (180) gradi
  Fine
Fine
```

## Algoritmi di gioco

### Algoritmo di generazione di labirinti

#### Descrizione dell'algoritmo
Questo algoritmo genera un labirinto casuale utilizzando l'algoritmo di Depth-First Search (DFS).

#### Implementazione in Scratch
```
Quando si clicca sulla bandiera verde
Cancella tutto
Imposta [dimensione cella v] a [20]
Imposta [larghezza v] a [20]
Imposta [altezza v] a [15]
Imposta [griglia v] a []

// Inizializza la griglia
Per y da (1) a (altezza)
  Per x da (1) a (larghezza)
    Aggiungi [1] a [griglia v] // 1 rappresenta un muro
  Fine
Fine

// Punto di partenza
Imposta [start_x v] a [1]
Imposta [start_y v] a [1]
Sostituisci elemento (((start_y) - (1)) * (larghezza) + (start_x)) di [griglia v] con [0] // 0 rappresenta un percorso

// Genera il labirinto con DFS
Cancella tutto da [stack v]
Aggiungi (start_x) a [stack v]
Aggiungi (start_y) a [stack v]

Ripeti fino a quando <(lunghezza di [stack v]) = [0]>
  // Prendi l'ultima cella dallo stack
  Imposta [y v] a (elemento (lunghezza di [stack v]) di [stack v])
  Cancella elemento (lunghezza di [stack v]) di [stack v]
  Imposta [x v] a (elemento (lunghezza di [stack v]) di [stack v])
  Cancella elemento (lunghezza di [stack v]) di [stack v]
  
  // Controlla i vicini non visitati
  Imposta [vicini v] a []
  
  // Vicino sopra
  Se <(y) > [2]> allora
    Se <(elemento (((y) - (3)) * (larghezza) + (x)) di [griglia v]) = [1]> allora
      Aggiungi [0] a [vicini v] // Direzione: sopra
    Fine
  Fine
  
  // Vicino destra
  Se <(x) < ((larghezza) - (1))> allora
    Se <(elemento (((y) - (1)) * (larghezza) + (x) + (2)) di [griglia v]) = [1]> allora
      Aggiungi [1] a [vicini v] // Direzione: destra
    Fine
  Fine
  
  // Vicino sotto
  Se <(y) < ((altezza) - (1))> allora
    Se <(elemento (((y) + (1)) * (larghezza) + (x)) di [griglia v]) = [1]> allora
      Aggiungi [2] a [vicini v] // Direzione: sotto
    Fine
  Fine
  
  // Vicino sinistra
  Se <(x) > [2]> allora
    Se <(elemento (((y) - (1)) * (larghezza) + (x) - (2)) di [griglia v]) = [1]> allora
      Aggiungi [3] a [vicini v] // Direzione: sinistra
    Fine
  Fine
  
  // Se ci sono vicini non visitati
  Se <(lunghezza di [vicini v]) > [0]> allora
    // Aggiungi la cella corrente allo stack
    Aggiungi (x) a [stack v]
    Aggiungi (y) a [stack v]
    
    // Scegli un vicino casuale
    Imposta [direzione v] a (elemento (numero a caso da (1) a (lunghezza di [vicini v])) di [vicini v])
    
    // Calcola le coordinate del vicino e della parete tra le celle
    Se <(direzione) = [0]> allora // Sopra
      Imposta [nx v] a (x)
      Imposta [ny v] a ((y) - (2))
      Imposta [wx v] a (x)
      Imposta [wy v] a ((y) - (1))
    Fine
    Se <(direzione) = [1]> allora // Destra
      Imposta [nx v] a ((x) + (2))
      Imposta [ny v] a (y)
      Imposta [wx v] a ((x) + (1))
      Imposta [wy v] a (y)
    Fine
    Se <(direzione) = [2]> allora // Sotto
      Imposta [nx v] a (x)
      Imposta [ny v] a ((y) + (2))
      Imposta [wx v] a (x)
      Imposta [wy v] a ((y) + (1))
    Fine
    Se <(direzione) = [3]> allora // Sinistra
      Imposta [nx v] a ((x) - (2))
      Imposta [ny v] a (y)
      Imposta [wx v] a ((x) - (1))
      Imposta [wy v] a (y)
    Fine
    
    // Rimuovi la parete
    Sostituisci elemento (((wy) - (1)) * (larghezza) + (wx)) di [griglia v] con [0]
    
    // Marca la nuova cella come visitata
    Sostituisci elemento (((ny) - (1)) * (larghezza) + (nx)) di [griglia v] con [0]
    
    // Aggiungi la nuova cella allo stack
    Aggiungi (nx) a [stack v]
    Aggiungi (ny) a [stack v]
  Fine
Fine

// Disegna il labirinto
Penna su
Nascondi
Imposta dimensione penna a (2)
Imposta colore penna a [#000000]

Per y da (1) a (altezza)
  Per x da (1) a (larghezza)
    Se <(elemento (((y) - (1)) * (larghezza) + (x)) di [griglia v]) = [1]> allora
      Vai a x: (((x) - (1)) * (dimensione cella) - (240)) y: (((y) - (1)) * (dimensione cella) - (180))
      Penna giù
      Vai a x: (((x) - (1)) * (dimensione cella) - (240) + (dimensione cella)) y: (((y) - (1)) * (dimensione cella) - (180))
      Vai a x: (((x) - (1)) * (dimensione cella) - (240) + (dimensione cella)) y: (((y) - (1)) * (dimensione cella) - (180) + (dimensione cella))
      Vai a x: (((x) - (1)) * (dimensione cella) - (240)) y: (((y) - (1)) * (dimensione cella) - (180) + (dimensione cella))
      Vai a x: (((x) - (1)) * (dimensione cella) - (240)) y: (((y) - (1)) * (dimensione cella) - (180))
      Penna su
    Fine
  Fine
Fine
```

### Algoritmo di pathfinding (A*)

#### Descrizione dell'algoritmo
L'algoritmo A* è un algoritmo di ricerca del percorso che trova il percorso più breve tra due punti in una griglia, tenendo conto degli ostacoli.

#### Implementazione semplificata in Scratch
```
// Questa è una versione molto semplificata dell'algoritmo A*
// Per una implementazione completa sarebbero necessarie strutture dati più complesse

Quando si clicca sulla bandiera verde
Imposta [start_x v] a [5]
Imposta [start_y v] a [5]
Imposta [goal_x v] a [15]
Imposta [goal_y v] a [10]

// Inizializza la griglia
Cancella tutto da [griglia v]
Per y da (1) a (15)
  Per x da (1) a (20)
    // 0 = spazio libero, 1 = ostacolo
    Se <(numero a caso da (1) a (10)) < [3]> allora
      Aggiungi [1] a [griglia v]
    Altrimenti
      Aggiungi [0] a [griglia v]
    Fine
  Fine
Fine

// Assicurati che start e goal siano liberi
Sostituisci elemento (((start_y) - (1)) * (20) + (start_x)) di [griglia v] con [0]
Sostituisci elemento (((goal_y) - (1)) * (20) + (goal_x)) di [griglia v] con [0]

// Disegna la griglia
Cancella tutto
Penna su
Nascondi
Imposta dimensione penna a (20)

Per y da (1) a (15)
  Per x da (1) a (20)
    Vai a x: (((x) - (1)) * (20) - (190)) y: (((y) - (1)) * (20) - (140))
    Se <(elemento (((y) - (1)) * (20) + (x)) di [griglia v]) = [1]> allora
      Imposta colore penna a [#000000]
    Altrimenti
      Imposta colore penna a [#ffffff]
    Fine
    Penna giù
    Penna su
  Fine
Fine

// Disegna start e goal
Vai a x: (((start_x) - (1)) * (20) - (190)) y: (((start_y) - (1)) * (20) - (140))
Imposta colore penna a [#00ff00]
Penna giù
Penna su

Vai a x: (((goal_x) - (1)) * (20) - (190)) y: (((goal_y) - (1)) * (20) - (140))
Imposta colore penna a [#ff0000]
Penna giù
Penna su

// Implementazione semplificata di A*
Cancella tutto da [open_list v]
Cancella tutto da [closed_list v]
Cancella tutto da [path v]

// Aggiungi il nodo di partenza alla lista aperta
Aggiungi (start_x) a [open_list v]
Aggiungi (start_y) a [open_list v]
Aggiungi [0] a [open_list v] // g_score
Aggiungi (distanza_manhattan (start_x) (start_y) (goal_x) (goal_y)) a [open_list v] // f_score
Aggiungi [0] a [open_list v] // parent_index (0 = nessun genitore)

Ripeti fino a quando <(lunghezza di [open_list v]) = [0]>
  // Trova il nodo con il minor f_score nella lista aperta
  Imposta [min_f_score v] a [999999]
  Imposta [min_index v] a [0]
  
  Per i da (1) a (lunghezza di [open_list v] / (5))
    Se <(elemento (((i) - (1)) * (5) + (4)) di [open_list v]) < (min_f_score)> allora
      Imposta [min_f_score v] a (elemento (((i) - (1)) * (5) + (4)) di [open_list v])
      Imposta [min_index v] a (i)
    Fine
  Fine
  
  // Estrai il nodo corrente
  Imposta [current_x v] a (elemento (((min_index) - (1)) * (5) + (1)) di [open_list v])
  Imposta [current_y v] a (elemento (((min_index) - (1)) * (5) + (2)) di [open_list v])
  Imposta [current_g v] a (elemento (((min_index) - (1)) * (5) + (3)) di [open_list v])
  Imposta [current_parent v] a (elemento (((min_index) - (1)) * (5) + (5)) di [open_list v])
  
  // Rimuovi il nodo corrente dalla lista aperta
  Cancella elemento (((min_index) - (1)) * (5) + (5)) di [open_list v]
  Cancella elemento (((min_index) - (1)) * (5) + (4)) di [open_list v]
  Cancella elemento (((min_index) - (1)) * (5) + (3)) di [open_list v]
  Cancella elemento (((min_index) - (1)) * (5) + (2)) di [open_list v]
  Cancella elemento (((min_index) - (1)) * (5) + (1)) di [open_list v]
  
  // Aggiungi il nodo corrente alla lista chiusa
  Aggiungi (current_x) a [closed_list v]
  Aggiungi (current_y) a [closed_list v]
  Aggiungi (current_parent) a [closed_list v]
  
  // Controlla se abbiamo raggiunto l'obiettivo
  Se <(current_x) = (goal_x) e (current_y) = (goal_y)> allora
    // Ricostruisci il percorso
    Imposta [current_node v] a (lunghezza di [closed_list v] / (3))
    Ripeti fino a quando <(current_node) = [0]>
      Aggiungi (elemento (((current_node) - (1)) * (3) + (1)) di [closed_list v]) a [path v]
      Aggiungi (elemento (((current_node) - (1)) * (3) + (2)) di [