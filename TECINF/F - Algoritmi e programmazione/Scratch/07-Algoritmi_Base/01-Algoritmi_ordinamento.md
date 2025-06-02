# Algoritmi di ordinamento

## Introduzione
Gli algoritmi di ordinamento sono procedure che organizzano elementi di una lista in un determinato ordine, tipicamente numerico o alfabetico. In questa guida, esploreremo come implementare diversi algoritmi di ordinamento in Scratch, comprendendo i principi di base e le differenze tra i vari approcci.

## Concetti fondamentali

### Cos'è un algoritmo di ordinamento
Un algoritmo di ordinamento è una sequenza di istruzioni che prende in input una lista disordinata e produce in output la stessa lista con gli elementi disposti in un ordine specifico.

### Perché studiare gli algoritmi di ordinamento
1. **Fondamenti della programmazione**: Gli algoritmi di ordinamento sono esempi classici di algoritmi e aiutano a comprendere concetti fondamentali
2. **Efficienza**: Diversi algoritmi hanno diverse caratteristiche di efficienza, insegnando l'importanza dell'ottimizzazione
3. **Applicazioni pratiche**: L'ordinamento è un'operazione comune in molte applicazioni reali

### Criteri di valutazione degli algoritmi
1. **Tempo di esecuzione**: Quanto velocemente l'algoritmo completa l'ordinamento
2. **Spazio di memoria**: Quanta memoria aggiuntiva richiede l'algoritmo
3. **Stabilità**: Se l'algoritmo mantiene l'ordine relativo di elementi con valori uguali

## Implementazione in Scratch

### Preparazione dell'ambiente
1. **Creazione di una lista**: Utilizzeremo una lista per memorizzare i valori da ordinare
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

## Algoritmo 1: Bubble Sort (Ordinamento a bolle)

### Descrizione dell'algoritmo
Il Bubble Sort confronta coppie di elementi adiacenti e li scambia se sono nell'ordine sbagliato. Il processo viene ripetuto fino a quando non sono necessari più scambi, il che indica che la lista è ordinata.

### Implementazione in Scratch
```
Definisci bubble sort
Per i da (1) a (lunghezza di [numeri v] - 1)
  Per j da (1) a (lunghezza di [numeri v] - (i))
    Se <(elemento (j) di [numeri v]) > (elemento ((j) + (1)) di [numeri v])> allora
      Imposta [temp v] a (elemento (j) di [numeri v])
      Sostituisci elemento (j) di [numeri v] con (elemento ((j) + (1)) di [numeri v])
      Sostituisci elemento ((j) + (1)) di [numeri v] con (temp)
      Disegna lista
      Attendi (0.1) secondi
    Fine
  Fine
Fine
```

### Analisi dell'algoritmo
1. **Complessità temporale**: O(n²) nel caso peggiore e medio, O(n) nel caso migliore (quando la lista è già ordinata)
2. **Complessità spaziale**: O(1), richiede solo una variabile temporanea per lo scambio
3. **Stabilità**: È un algoritmo stabile
4. **Vantaggi**: Semplice da implementare e comprendere
5. **Svantaggi**: Inefficiente per liste grandi

## Algoritmo 2: Selection Sort (Ordinamento per selezione)

### Descrizione dell'algoritmo
Il Selection Sort divide la lista in due parti: una parte ordinata e una parte non ordinata. Ad ogni iterazione, trova l'elemento minimo nella parte non ordinata e lo sposta alla fine della parte ordinata.

### Implementazione in Scratch
```
Definisci selection sort
Per i da (1) a (lunghezza di [numeri v] - 1)
  Imposta [min_idx v] a (i)
  Per j da ((i) + (1)) a (lunghezza di [numeri v])
    Se <(elemento (j) di [numeri v]) < (elemento (min_idx) di [numeri v])> allora
      Imposta [min_idx v] a (j)
    Fine
  Fine
  Se <(min_idx) ≠ (i)> allora
    Imposta [temp v] a (elemento (i) di [numeri v])
    Sostituisci elemento (i) di [numeri v] con (elemento (min_idx) di [numeri v])
    Sostituisci elemento (min_idx) di [numeri v] con (temp)
    Disegna lista
    Attendi (0.1) secondi
  Fine
Fine
```

### Analisi dell'algoritmo
1. **Complessità temporale**: O(n²) in tutti i casi
2. **Complessità spaziale**: O(1)
3. **Stabilità**: Non è un algoritmo stabile
4. **Vantaggi**: Numero minimo di scambi
5. **Svantaggi**: Sempre O(n²) anche se la lista è già ordinata

## Algoritmo 3: Insertion Sort (Ordinamento per inserimento)

### Descrizione dell'algoritmo
L'Insertion Sort costruisce la lista ordinata un elemento alla volta, prendendo ogni elemento e inserendolo nella posizione corretta all'interno della parte già ordinata della lista.

### Implementazione in Scratch
```
Definisci insertion sort
Per i da (2) a (lunghezza di [numeri v])
  Imposta [valore v] a (elemento (i) di [numeri v])
  Imposta [j v] a ((i) - (1))
  Ripeti fino a quando <(j) < [1] o (elemento (j) di [numeri v]) ≤ (valore)>
    Sostituisci elemento ((j) + (1)) di [numeri v] con (elemento (j) di [numeri v])
    Cambia [j v] di (-1)
    Disegna lista
    Attendi (0.05) secondi
  Fine
  Sostituisci elemento ((j) + (1)) di [numeri v] con (valore)
  Disegna lista
  Attendi (0.1) secondi
Fine
```

### Analisi dell'algoritmo
1. **Complessità temporale**: O(n²) nel caso peggiore e medio, O(n) nel caso migliore
2. **Complessità spaziale**: O(1)
3. **Stabilità**: È un algoritmo stabile
4. **Vantaggi**: Efficiente per liste quasi ordinate, semplice da implementare
5. **Svantaggi**: Inefficiente per liste grandi e disordinate

## Algoritmo 4: Quick Sort (Ordinamento rapido)

### Descrizione dell'algoritmo
Il Quick Sort è un algoritmo di tipo "divide et impera" che seleziona un elemento come pivot e partiziona la lista attorno al pivot, quindi ordina ricorsivamente le due sottoliste.

### Implementazione in Scratch
Data la complessità della ricorsione in Scratch, implementeremo una versione semplificata del Quick Sort.

```
Definisci quick sort [inizio] [fine]
Se <(inizio) < (fine)> allora
  Imposta [pivot_idx v] a (partition (inizio) (fine))
  quick sort (inizio) ((pivot_idx) - (1))
  quick sort ((pivot_idx) + (1)) (fine)
Fine

Definisci partition [inizio] [fine]
Imposta [pivot v] a (elemento (fine) di [numeri v])
Imposta [i v] a ((inizio) - (1))
Per j da (inizio) a ((fine) - (1))
  Se <(elemento (j) di [numeri v]) ≤ (pivot)> allora
    Cambia [i v] di (1)
    Imposta [temp v] a (elemento (i) di [numeri v])
    Sostituisci elemento (i) di [numeri v] con (elemento (j) di [numeri v])
    Sostituisci elemento (j) di [numeri v] con (temp)
    Disegna lista
    Attendi (0.1) secondi
  Fine
Fine
Cambia [i v] di (1)
Imposta [temp v] a (elemento (i) di [numeri v])
Sostituisci elemento (i) di [numeri v] con (elemento (fine) di [numeri v])
Sostituisci elemento (fine) di [numeri v] con (temp)
Disegna lista
Attendi (0.1) secondi
Rispondi (i)
```

### Analisi dell'algoritmo
1. **Complessità temporale**: O(n log n) nel caso medio e migliore, O(n²) nel caso peggiore
2. **Complessità spaziale**: O(log n) per la ricorsione
3. **Stabilità**: Non è un algoritmo stabile
4. **Vantaggi**: Molto efficiente nella pratica, specialmente per liste grandi
5. **Svantaggi**: Implementazione più complessa, caso peggiore O(n²)

## Confronto tra algoritmi

### Esperimento: Ordinare la stessa lista con diversi algoritmi
```
Quando si clicca sulla bandiera verde
Cancella tutto da [numeri v]
Ripeti (10) volte
  Aggiungi (numero a caso da (1) a (100)) a [numeri v]
Fine
Imposta [lista originale v] a [numeri v]

Dire [Bubble Sort] per (2) secondi
Imposta [numeri v] a (lista originale)
Disegna lista
Attendi (1) secondi
Imposta [inizio v] a (timer)
bubble sort
Imposta [tempo bubble v] a ((timer) - (inizio))
Dire (unione di [Bubble Sort: ] e (tempo bubble) e [ secondi]) per (3) secondi

// Ripeti per gli altri algoritmi
```

### Tabella di confronto

| Algoritmo | Caso migliore | Caso medio | Caso peggiore | Spazio | Stabilità |
|-----------|--------------|------------|--------------|--------|----------|
| Bubble Sort | O(n) | O(n²) | O(n²) | O(1) | Stabile |
| Selection Sort | O(n²) | O(n²) | O(n²) | O(1) | Non stabile |
| Insertion Sort | O(n) | O(n²) | O(n²) | O(1) | Stabile |
| Quick Sort | O(n log n) | O(n log n) | O(n²) | O(log n) | Non stabile |

## Applicazioni pratiche

### Ordinamento di dati in un gioco
```
Quando si clicca sulla bandiera verde
Cancella tutto da [punteggi v]
Cancella tutto da [nomi v]
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

// Ordina i punteggi in ordine decrescente
Per i da (1) a (lunghezza di [punteggi v] - 1)
  Per j da (1) a (lunghezza di [punteggi v] - (i))
    Se <(elemento (j) di [punteggi v]) < (elemento ((j) + (1)) di [punteggi v])> allora
      // Scambia punteggi
      Imposta [temp_punteggio v] a (elemento (j) di [punteggi v])
      Sostituisci elemento (j) di [punteggi v] con (elemento ((j) + (1)) di [punteggi v])
      Sostituisci elemento ((j) + (1)) di [punteggi v] con (temp_punteggio)
      
      // Scambia nomi corrispondenti
      Imposta [temp_nome v] a (elemento (j) di [nomi v])
      Sostituisci elemento (j) di [nomi v] con (elemento ((j) + (1)) di [nomi v])
      Sostituisci elemento ((j) + (1)) di [nomi v] con (temp_nome)
    Fine
  Fine
Fine

// Visualizza la classifica
Cancella tutto
Vai a x: (0) y: (150)
Per i da (1) a (lunghezza di [nomi v])
  Dire (unione di (i) e [. ] e (elemento (i) di [nomi v]) e [: ] e (elemento (i) di [punteggi v])) per (2) secondi
Fine
```

### Visualizzazione di dati ordinati
```
Quando si clicca sulla bandiera verde
Cancella tutto da [altezze v]
Ripeti (10) volte
  Aggiungi (numero a caso da (100) a (200)) a [altezze v]
Fine

// Ordina le altezze
bubble sort

// Visualizza un grafico a barre
Cancella tutto
Penna su
Vai a x: (-200) y: (-150)
Per i da (1) a (lunghezza di [altezze v])
  Vai a x: ((-200) + ((i) - (1)) * (40)) y: (-150)
  Penna giù
  Imposta dimensione penna a (20)
  Imposta colore penna a ((i) * (10))
  Fai (elemento (i) di [altezze v]) passi
  Penna su
Fine
```

## Best Practices

1. **Scelta dell'algoritmo**: Seleziona l'algoritmo più adatto in base alle caratteristiche dei dati e ai requisiti di efficienza
2. **Visualizzazione**: Utilizza rappresentazioni visive per comprendere meglio il funzionamento degli algoritmi
3. **Ottimizzazione**: Considera possibili ottimizzazioni specifiche per il tuo caso d'uso
4. **Debugging**: Aggiungi punti di controllo per verificare lo stato dell'ordinamento durante l'esecuzione

## Esercizi pratici

1. **Implementa il Merge Sort**: Prova a implementare l'algoritmo Merge Sort in Scratch
2. **Ordinamento personalizzato**: Crea un algoritmo di ordinamento che ordini gli elementi in base a criteri personalizzati
3. **Visualizzazione avanzata**: Migliora la visualizzazione degli algoritmi con effetti grafici e sonori

## Domande di autovalutazione

1. Quali sono le differenze principali tra Bubble Sort e Selection Sort?
2. In quali situazioni l'Insertion Sort potrebbe essere preferibile rispetto al Quick Sort?
3. Perché la stabilità di un algoritmo di ordinamento può essere importante?
4. Come potresti modificare uno degli algoritmi visti per ordinare in ordine decrescente invece che crescente?
5. Quali sono le limitazioni dell'implementazione del Quick Sort in Scratch e come potresti superarle?