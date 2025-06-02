# Algoritmi di ricerca

## Introduzione
Gli algoritmi di ricerca sono procedure che permettono di trovare un elemento specifico all'interno di una collezione di dati. In questa guida, esploreremo come implementare diversi algoritmi di ricerca in Scratch, comprendendo i principi di base e le differenze tra i vari approcci.

## Concetti fondamentali

### Cos'è un algoritmo di ricerca
Un algoritmo di ricerca è una sequenza di istruzioni che prende in input una collezione di dati e un valore da cercare, e restituisce la posizione del valore nella collezione o un'indicazione che il valore non è presente.

### Perché studiare gli algoritmi di ricerca
1. **Fondamenti della programmazione**: Gli algoritmi di ricerca sono esempi classici di algoritmi e aiutano a comprendere concetti fondamentali
2. **Efficienza**: Diversi algoritmi hanno diverse caratteristiche di efficienza, insegnando l'importanza dell'ottimizzazione
3. **Applicazioni pratiche**: La ricerca è un'operazione comune in molte applicazioni reali

### Criteri di valutazione degli algoritmi
1. **Tempo di esecuzione**: Quanto velocemente l'algoritmo trova l'elemento cercato
2. **Spazio di memoria**: Quanta memoria aggiuntiva richiede l'algoritmo
3. **Prerequisiti**: Alcuni algoritmi richiedono che i dati siano già ordinati

## Implementazione in Scratch

### Preparazione dell'ambiente
1. **Creazione di una lista**: Utilizzeremo una lista per memorizzare i valori in cui cercare
   ```
   Quando si clicca sulla bandiera verde
   Cancella tutto da [numeri v]
   Ripeti (10) volte
     Aggiungi (numero a caso da (1) a (100)) a [numeri v]
   Fine
   ```

2. **Visualizzazione della lista**: Creiamo una rappresentazione visiva della lista
   ```
   Quando si clicca sulla bandiera verde
   Cancella tutto
   Penna su
   Nascondi
   Vai a x: (-200) y: (-150)
   Disegna lista
   ```

3. **Blocco personalizzato per disegnare la lista**
   ```
   Definisci disegna lista
   Cancella tutto
   Penna su
   Per i da (1) a (lunghezza di [numeri v])
     Vai a x: ((-200) + ((i) - (1)) * (40)) y: (-150)
     Penna giù
     Imposta dimensione penna a (5)
     Imposta colore penna a [#0000ff]
     Fai ((elemento (i) di [numeri v]) / (2)) passi
     Penna su
   Fine
   ```

## Algoritmo 1: Ricerca Lineare (o Sequenziale)

### Descrizione dell'algoritmo
La ricerca lineare esamina ogni elemento della lista uno dopo l'altro, fino a trovare l'elemento cercato o fino a raggiungere la fine della lista.

### Implementazione in Scratch
```
Definisci ricerca lineare [valore]
Imposta [trovato v] a [falso]
Imposta [posizione v] a [0]
Per i da (1) a (lunghezza di [numeri v])
  // Evidenzia l'elemento corrente
  Vai a x: ((-200) + ((i) - (1)) * (40)) y: (-150)
  Penna giù
  Imposta dimensione penna a (5)
  Imposta colore penna a [#ff0000]
  Fai ((elemento (i) di [numeri v]) / (2)) passi
  Penna su
  Attendi (0.5) secondi
  
  Se <(elemento (i) di [numeri v]) = (valore)> allora
    Imposta [trovato v] a [vero]
    Imposta [posizione v] a (i)
    Interrompi
  Fine
  
  // Ripristina il colore dell'elemento
  Vai a x: ((-200) + ((i) - (1)) * (40)) y: (-150)
  Penna giù
  Imposta dimensione penna a (5)
  Imposta colore penna a [#0000ff]
  Fai ((elemento (i) di [numeri v]) / (2)) passi
  Penna su
Fine

Se <(trovato) = [vero]> allora
  Dire (unione di [Elemento trovato in posizione ] e (posizione)) per (2) secondi
Altrimenti
  Dire [Elemento non trovato] per (2) secondi
Fine
```

### Analisi dell'algoritmo
1. **Complessità temporale**: O(n) nel caso peggiore (l'elemento non è presente o è l'ultimo)
2. **Complessità spaziale**: O(1), richiede solo alcune variabili
3. **Prerequisiti**: Nessuno, funziona con qualsiasi lista
4. **Vantaggi**: Semplice da implementare, funziona con liste non ordinate
5. **Svantaggi**: Inefficiente per liste grandi

## Algoritmo 2: Ricerca Binaria

### Descrizione dell'algoritmo
La ricerca binaria funziona dividendo ripetutamente a metà la porzione della lista che potrebbe contenere l'elemento cercato, fino a restringere la posizione a un singolo elemento.

### Prerequisito: Lista ordinata
La ricerca binaria richiede che la lista sia già ordinata. Possiamo utilizzare uno degli algoritmi di ordinamento visti in precedenza.

```
Quando si clicca sulla bandiera verde
Cancella tutto da [numeri v]
Ripeti (10) volte
  Aggiungi (numero a caso da (1) a (100)) a [numeri v]
Fine
// Ordina la lista
bubble sort
Disegna lista
```

### Implementazione in Scratch
```
Definisci ricerca binaria [valore]
Imposta [trovato v] a [falso]
Imposta [inizio v] a [1]
Imposta [fine v] a (lunghezza di [numeri v])
Imposta [posizione v] a [0]

Ripeti fino a quando <(inizio) > (fine) o (trovato) = [vero]>
  Imposta [medio v] a (arrotonda ((inizio) + (fine)) / (2))
  
  // Evidenzia l'elemento corrente
  Vai a x: ((-200) + ((medio) - (1)) * (40)) y: (-150)
  Penna giù
  Imposta dimensione penna a (5)
  Imposta colore penna a [#ff0000]
  Fai ((elemento (medio) di [numeri v]) / (2)) passi
  Penna su
  Attendi (0.5) secondi
  
  Se <(elemento (medio) di [numeri v]) = (valore)> allora
    Imposta [trovato v] a [vero]
    Imposta [posizione v] a (medio)
  Altrimenti
    Se <(elemento (medio) di [numeri v]) < (valore)> allora
      Imposta [inizio v] a ((medio) + (1))
    Altrimenti
      Imposta [fine v] a ((medio) - (1))
    Fine
  Fine
  
  // Ripristina il colore dell'elemento
  Vai a x: ((-200) + ((medio) - (1)) * (40)) y: (-150)
  Penna giù
  Imposta dimensione penna a (5)
  Imposta colore penna a [#0000ff]
  Fai ((elemento (medio) di [numeri v]) / (2)) passi
  Penna su
Fine

Se <(trovato) = [vero]> allora
  Dire (unione di [Elemento trovato in posizione ] e (posizione)) per (2) secondi
Altrimenti
  Dire [Elemento non trovato] per (2) secondi
Fine
```

### Analisi dell'algoritmo
1. **Complessità temporale**: O(log n) nel caso peggiore
2. **Complessità spaziale**: O(1)
3. **Prerequisiti**: La lista deve essere ordinata
4. **Vantaggi**: Molto efficiente per liste grandi
5. **Svantaggi**: Richiede che la lista sia ordinata

## Algoritmo 3: Ricerca per Interpolazione

### Descrizione dell'algoritmo
La ricerca per interpolazione è una variante della ricerca binaria che stima la posizione dell'elemento cercato in base al suo valore e ai valori agli estremi della lista.

### Implementazione in Scratch
```
Definisci ricerca interpolazione [valore]
Imposta [trovato v] a [falso]
Imposta [inizio v] a [1]
Imposta [fine v] a (lunghezza di [numeri v])
Imposta [posizione v] a [0]

Ripeti fino a quando <(inizio) > (fine) o (trovato) = [vero]>
  // Formula di interpolazione
  Se <(elemento (fine) di [numeri v]) = (elemento (inizio) di [numeri v])> allora
    Imposta [pos v] a (inizio)
  Altrimenti
    Imposta [pos v] a (arrotonda ((inizio) + ((fine) - (inizio)) * ((valore) - (elemento (inizio) di [numeri v])) / ((elemento (fine) di [numeri v]) - (elemento (inizio) di [numeri v]))))
  Fine
  
  // Assicurati che pos sia nell'intervallo [inizio, fine]
  Se <(pos) < (inizio)> allora
    Imposta [pos v] a (inizio)
  Fine
  Se <(pos) > (fine)> allora
    Imposta [pos v] a (fine)
  Fine
  
  // Evidenzia l'elemento corrente
  Vai a x: ((-200) + ((pos) - (1)) * (40)) y: (-150)
  Penna giù
  Imposta dimensione penna a (5)
  Imposta colore penna a [#ff0000]
  Fai ((elemento (pos) di [numeri v]) / (2)) passi
  Penna su
  Attendi (0.5) secondi
  
  Se <(elemento (pos) di [numeri v]) = (valore)> allora
    Imposta [trovato v] a [vero]
    Imposta [posizione v] a (pos)
  Altrimenti
    Se <(elemento (pos) di [numeri v]) < (valore)> allora
      Imposta [inizio v] a ((pos) + (1))
    Altrimenti
      Imposta [fine v] a ((pos) - (1))
    Fine
  Fine
  
  // Ripristina il colore dell'elemento
  Vai a x: ((-200) + ((pos) - (1)) * (40)) y: (-150)
  Penna giù
  Imposta dimensione penna a (5)
  Imposta colore penna a [#0000ff]
  Fai ((elemento (pos) di [numeri v]) / (2)) passi
  Penna su
Fine

Se <(trovato) = [vero]> allora
  Dire (unione di [Elemento trovato in posizione ] e (posizione)) per (2) secondi
Altrimenti
  Dire [Elemento non trovato] per (2) secondi
Fine
```

### Analisi dell'algoritmo
1. **Complessità temporale**: O(log log n) nel caso medio, O(n) nel caso peggiore
2. **Complessità spaziale**: O(1)
3. **Prerequisiti**: La lista deve essere ordinata e i valori dovrebbero essere uniformemente distribuiti
4. **Vantaggi**: Più efficiente della ricerca binaria per dati uniformemente distribuiti
5. **Svantaggi**: Prestazioni peggiori per distribuzioni non uniformi

## Confronto tra algoritmi

### Esperimento: Cercare un elemento con diversi algoritmi
```
Quando si clicca sulla bandiera verde
Cancella tutto da [numeri v]
Ripeti (100) volte
  Aggiungi (numero a caso da (1) a (1000)) a [numeri v]
Fine
// Ordina la lista per la ricerca binaria e per interpolazione
bubble sort
Disegna lista

Imposta [valore da cercare v] a (chiedi [Inserisci un valore da cercare:] e attendi)

Dire [Ricerca Lineare] per (2) secondi
Imposta [inizio v] a (timer)
ricerca lineare (valore da cercare)
Imposta [tempo lineare v] a ((timer) - (inizio))
Dire (unione di [Ricerca Lineare: ] e (tempo lineare) e [ secondi]) per (3) secondi

Dire [Ricerca Binaria] per (2) secondi
Imposta [inizio v] a (timer)
ricerca binaria (valore da cercare)
Imposta [tempo binario v] a ((timer) - (inizio))
Dire (unione di [Ricerca Binaria: ] e (tempo binario) e [ secondi]) per (3) secondi

Dire [Ricerca per Interpolazione] per (2) secondi
Imposta [inizio v] a (timer)
ricerca interpolazione (valore da cercare)
Imposta [tempo interpolazione v] a ((timer) - (inizio))
Dire (unione di [Ricerca per Interpolazione: ] e (tempo interpolazione) e [ secondi]) per (3) secondi
```

### Tabella di confronto

| Algoritmo | Caso migliore | Caso medio | Caso peggiore | Spazio | Prerequisiti |
|-----------|--------------|------------|--------------|--------|-------------|
| Ricerca Lineare | O(1) | O(n/2) | O(n) | O(1) | Nessuno |
| Ricerca Binaria | O(1) | O(log n) | O(log n) | O(1) | Lista ordinata |
| Ricerca per Interpolazione | O(1) | O(log log n) | O(n) | O(1) | Lista ordinata, distribuzione uniforme |

## Applicazioni pratiche

### Ricerca in un database di gioco
```
Quando si clicca sulla bandiera verde
Cancella tutto da [nomi v]
Cancella tutto da [punteggi v]
Aggiungi [Mario] a [nomi v]
Aggiungi [120] a [punteggi v]
Aggiungi [Luigi] a [nomi v]
Aggiungi [150] a [punteggi v]
Aggiungi [Peach] a [nomi v]
Aggiungi [90] a [punteggi v]
Aggiungi [Toad] a [nomi v]
Aggiungi [200] a [punteggi v]
Aggiungi [Bowser] a [nomi v]
Aggiungi [180] a [punteggi v]

Imposta [nome da cercare v] a (chiedi [Inserisci un nome da cercare:] e attendi)
Imposta [trovato v] a [falso]
Imposta [posizione v] a [0]

Per i da (1) a (lunghezza di [nomi v])
  Se <(elemento (i) di [nomi v]) = (nome da cercare)> allora
    Imposta [trovato v] a [vero]
    Imposta [posizione v] a (i)
    Interrompi
  Fine
Fine

Se <(trovato) = [vero]> allora
  Dire (unione di [Giocatore ] e (nome da cercare) e [ trovato con punteggio ] e (elemento (posizione) di [punteggi v])) per (3) secondi
Altrimenti
  Dire (unione di [Giocatore ] e (nome da cercare) e [ non trovato]) per (3) secondi
Fine
```

### Ricerca binaria in un dizionario
```
Quando si clicca sulla bandiera verde
Cancella tutto da [parole v]
Aggiungi [albero] a [parole v]
Aggiungi [banana] a [parole v]
Aggiungi [casa] a [parole v]
Aggiungi [dado] a [parole v]
Aggiungi [elefante] a [parole v]
Aggiungi [fiore] a [parole v]
Aggiungi [gatto] a [parole v]
Aggiungi [hotel] a [parole v]
Aggiungi [isola] a [parole v]
Aggiungi [limone] a [parole v]

Imposta [parola da cercare v] a (chiedi [Inserisci una parola da cercare:] e attendi)
Imposta [trovato v] a [falso]
Imposta [inizio v] a [1]
Imposta [fine v] a (lunghezza di [parole v])
Imposta [posizione v] a [0]

Ripeti fino a quando <(inizio) > (fine) o (trovato) = [vero]>
  Imposta [medio v] a (arrotonda ((inizio) + (fine)) / (2))
  
  Se <(elemento (medio) di [parole v]) = (parola da cercare)> allora
    Imposta [trovato v] a [vero]
    Imposta [posizione v] a (medio)
  Altrimenti
    // Confronto lessicografico
    Se <(parola da cercare) < (elemento (medio) di [parole v])> allora
      Imposta [fine v] a ((medio) - (1))
    Altrimenti
      Imposta [inizio v] a ((medio) + (1))
    Fine
  Fine
Fine

Se <(trovato) = [vero]> allora
  Dire (unione di [La parola ] e (parola da cercare) e [ è presente nel dizionario]) per (3) secondi
Altrimenti
  Dire (unione di [La parola ] e (parola da cercare) e [ non è presente nel dizionario]) per (3) secondi
Fine
```

## Best Practices

1. **Scelta dell'algoritmo**: Seleziona l'algoritmo più adatto in base alle caratteristiche dei dati e ai requisiti di efficienza
2. **Visualizzazione**: Utilizza rappresentazioni visive per comprendere meglio il funzionamento degli algoritmi
3. **Ottimizzazione**: Considera possibili ottimizzazioni specifiche per il tuo caso d'uso
4. **Preprocessing**: Se prevedi di effettuare molte ricerche, considera di ordinare la lista in anticipo

## Esercizi pratici

1. **Implementa la ricerca a salto (Jump Search)**: Prova a implementare l'algoritmo Jump Search in Scratch
2. **Ricerca in strutture bidimensionali**: Crea un algoritmo per cercare un elemento in una matrice
3. **Ricerca fuzzy**: Implementa un algoritmo che trovi elementi simili a quello cercato (ad esempio, parole con errori di ortografia)

## Domande di autovalutazione

1. In quali situazioni la ricerca lineare potrebbe essere preferibile rispetto alla ricerca binaria?
2. Quali sono i vantaggi della ricerca per interpolazione rispetto alla ricerca binaria?
3. Come cambierebbe l'implementazione della ricerca binaria se volessi trovare tutte le occorrenze di un elemento invece che solo la prima?
4. Quali modifiche dovresti apportare agli algoritmi di ricerca per lavorare con stringhe invece che con numeri?
5. Come potresti combinare gli algoritmi di ordinamento e di ricerca per ottimizzare le prestazioni in un'applicazione reale?