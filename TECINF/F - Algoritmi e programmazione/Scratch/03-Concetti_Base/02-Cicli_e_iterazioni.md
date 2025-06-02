# Cicli e iterazioni

## Introduzione
I cicli, o strutture iterative, sono uno dei concetti fondamentali della programmazione che permettono di ripetere un blocco di istruzioni più volte. In Scratch, i cicli sono rappresentati da blocchi di controllo che consentono di creare ripetizioni in modo semplice e visuale. In questa guida, esploreremo i diversi tipi di cicli disponibili in Scratch, come utilizzarli efficacemente e come implementare pattern comuni di iterazione.

## Concetto di iterazione

### Cos'è un ciclo
Un ciclo è una struttura di controllo che permette di eseguire ripetutamente un blocco di istruzioni. Invece di scrivere lo stesso codice più volte, puoi utilizzare un ciclo per ripetere automaticamente le istruzioni il numero di volte desiderato o fino a quando una certa condizione è soddisfatta.

### Perché usare i cicli
I cicli sono fondamentali nella programmazione per diversi motivi:

- **Efficienza**: riducono la quantità di codice da scrivere
- **Manutenibilità**: rendono il codice più facile da modificare e aggiornare
- **Scalabilità**: permettono di gestire facilmente grandi quantità di ripetizioni
- **Flessibilità**: consentono di creare comportamenti dinamici basati su condizioni

## Tipi di cicli in Scratch

### Ciclo "ripeti"
Il blocco "ripeti" esegue un blocco di istruzioni un numero specifico di volte.

```
ripeti [10] volte
  # Istruzioni da ripetere
fine
```

#### Caratteristiche
- Numero fisso di ripetizioni
- Il conteggio inizia da 1 e termina al valore specificato
- Semplice da usare per ripetizioni di cui si conosce in anticipo il numero

#### Esempi di utilizzo

##### Disegnare un quadrato
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

Questo script utilizza un ciclo "ripeti" per disegnare un quadrato, ripetendo 4 volte la sequenza "muovi e ruota".

##### Creare un effetto visivo
```
quando si clicca su [bandiera verde]
ripeti [10] volte
  cambia effetto [colore v] di [25]
  attendi [0.2] secondi
fine
rimuovi effetti grafici
```

Questo script crea un effetto visivo cambiando gradualmente il colore dello sprite.

### Ciclo "per sempre"
Il blocco "per sempre" esegue continuamente un blocco di istruzioni senza mai fermarsi (a meno che il programma non venga interrotto manualmente o tramite un blocco "ferma").

```
per sempre
  # Istruzioni da ripetere indefinitamente
fine
```

#### Caratteristiche
- Esecuzione infinita (fino all'interruzione del programma)
- Utile per comportamenti continui (es. controllo del movimento, monitoraggio di eventi)
- Deve essere usato con attenzione per evitare di bloccare l'esecuzione di altri script

#### Esempi di utilizzo

##### Movimento continuo
```
quando si clicca su [bandiera verde]
per sempre
  muovi di [10] passi
  rimbalza quando tocchi il bordo
fine
```

Questo script fa muovere continuamente lo sprite, facendolo rimbalzare quando tocca i bordi dello stage.

##### Monitoraggio di input
```
quando si clicca su [bandiera verde]
per sempre
  se <tasto [spazio v] premuto?> allora
    cambia effetto [fantasma v] di [25]
  fine
  se <tasto [freccia giù v] premuto?> allora
    cambia effetto [fantasma v] di [-25]
  fine
fine
```

Questo script monitora continuamente la pressione dei tasti e modifica l'effetto fantasma dello sprite di conseguenza.

### Ciclo "ripeti fino a quando"
Il blocco "ripeti fino a quando" esegue un blocco di istruzioni ripetutamente fino a quando una condizione specificata diventa vera.

```
ripeti fino a quando <condizione>
  # Istruzioni da ripetere
fine
```

#### Caratteristiche
- Numero variabile di ripetizioni, determinato da una condizione
- La condizione viene verificata prima di ogni iterazione
- Il ciclo termina quando la condizione diventa vera
- Utile quando non si conosce in anticipo il numero esatto di ripetizioni

#### Esempi di utilizzo

##### Conto alla rovescia
```
quando si clicca su [bandiera verde]
porta [tempo v] a [10]
ripeti fino a quando <(tempo) = [0]>
  dire (tempo) per [1] secondi
  cambia [tempo v] di [-1]
fine
dire [Tempo scaduto!] per [2] secondi
```

Questo script crea un conto alla rovescia da 10 a 0, terminando quando la variabile "tempo" raggiunge 0.

##### Raggiungere un obiettivo
```
quando si clicca su [bandiera verde]
porta [punteggio v] a [0]
ripeti fino a quando <(punteggio) >= [100]>
  se <toccando [moneta v]?> allora
    cambia [punteggio v] di [10]
  fine
  # Altre istruzioni per il gameplay
fine
dire [Hai vinto!] per [2] secondi
```

Questo script continua l'esecuzione fino a quando il punteggio raggiunge o supera 100.

## Tecniche avanzate di iterazione

### Cicli annidati
I cicli annidati sono cicli all'interno di altri cicli. Ogni volta che il ciclo esterno esegue un'iterazione, il ciclo interno esegue tutte le sue iterazioni.

```
ripeti [5] volte
  ripeti [4] volte
    # Istruzioni da ripetere
  fine
fine
```

#### Esempi di utilizzo

##### Disegnare una griglia
```
quando si clicca su [bandiera verde]
cancella tutto
porta penna giù
andare a x: [-150] y: [150]
ripeti [5] volte  # Righe
  porta x a [-150]
  cambia y di [-50]
  ripeti [6] volte  # Colonne
    muovi di [50] passi
    porta penna su
    muovi di [10] passi
    porta penna giù
  fine
fine
porta penna su
```

Questo script utilizza cicli annidati per disegnare una griglia 5x6.

##### Effetto visivo complesso
```
quando si clicca su [bandiera verde]
ripeti [36] volte
  ripeti [10] volte
    muovi di [10] passi
    ruota di [10] gradi
  fine
  ruota di [10] gradi
fine
```

Questo script crea un effetto visivo complesso disegnando 36 cerchi disposti in cerchio.

### Contatori e accumulatori
I contatori e gli accumulatori sono variabili utilizzate all'interno dei cicli per tenere traccia di valori.

#### Contatore
Un contatore è una variabile che tiene traccia del numero di iterazioni o eventi.

```
quando si clicca su [bandiera verde]
porta [contatore v] a [0]
ripeti [10] volte
  cambia [contatore v] di [1]
  dire (contatore) per [0.5] secondi
fine
```

Questo script utilizza un contatore per mostrare il numero dell'iterazione corrente.

#### Accumulatore
Un accumulatore è una variabile che accumula un valore durante le iterazioni.

```
quando si clicca su [bandiera verde]
porta [somma v] a [0]
ripeti [5] volte
  cambia [somma v] di (numero a caso tra [1] e [10])
  dire [La somma è ora ] + (somma) per [1] secondi
fine
```

Questo script utilizza un accumulatore per sommare numeri casuali.

### Cicli con variabile di controllo
In Scratch, puoi simulare un ciclo con variabile di controllo (simile al ciclo "for" in altri linguaggi) utilizzando una variabile e un ciclo "ripeti fino a quando".

```
quando si clicca su [bandiera verde]
porta [i v] a [1]
ripeti fino a quando <(i) > [10]>
  # Istruzioni da ripetere
  cambia [i v] di [1]
fine
```

#### Esempi di utilizzo

##### Tabellina
```
quando si clicca su [bandiera verde]
chiedi [Quale tabellina vuoi vedere?] e attendi
porta [numero v] a (risposta)
porta [i v] a [1]
ripeti fino a quando <(i) > [10]>
  dire (unione di (i) e [x] e (numero) e [=] e ((i) * (numero))) per [1] secondi
  cambia [i v] di [1]
fine
```

Questo script mostra la tabellina del numero inserito dall'utente.

##### Sequenza di Fibonacci
```
quando si clicca su [bandiera verde]
porta [a v] a [0]
porta [b v] a [1]
porta [i v] a [1]
dire (a) per [1] secondi
dire (b) per [1] secondi
ripeti fino a quando <(i) > [8]>
  porta [temp v] a (b)
  porta [b v] a ((a) + (b))
  porta [a v] a (temp)
  dire (b) per [1] secondi
  cambia [i v] di [1]
fine
```

Questo script calcola e mostra i primi 10 numeri della sequenza di Fibonacci.

## Pattern comuni di iterazione

### Iterazione su una lista
In Scratch, puoi iterare su tutti gli elementi di una lista utilizzando un ciclo e un contatore.

```
quando si clicca su [bandiera verde]
# Supponiamo di avere una lista chiamata "nomi"
porta [i v] a [1]
ripeti fino a quando <(i) > (lunghezza di [nomi v])>
  dire (elemento (i) di [nomi v]) per [1] secondi
  cambia [i v] di [1]
fine
```

Questo script mostra ogni elemento della lista "nomi" uno dopo l'altro.

### Ricerca in una lista
Puoi utilizzare un ciclo per cercare un elemento specifico in una lista.

```
quando si clicca su [bandiera verde]
chiedi [Cosa stai cercando?] e attendi
porta [elemento_cercato v] a (risposta)
porta [trovato v] a [falso]
porta [i v] a [1]
ripeti fino a quando <<(i) > (lunghezza di [elementi v])> o <(trovato) = [vero]>>
  se <(elemento (i) di [elementi v]) = (elemento_cercato)> allora
    porta [trovato v] a [vero]
  fine
  cambia [i v] di [1]
fine
se <(trovato) = [vero]> allora
  dire [Elemento trovato alla posizione ] + (i - 1) per [2] secondi
altrimenti
  dire [Elemento non trovato] per [2] secondi
fine
```

Questo script cerca un elemento in una lista e mostra la sua posizione se trovato.

### Animazione frame-by-frame
Puoi utilizzare un ciclo per creare un'animazione passando attraverso una serie di costumi.

```
quando si clicca su [bandiera verde]
porta [frame v] a [1]
ripeti fino a quando <(frame) > (numero di costumi)>
  passa al costume (frame)
  cambia [frame v] di [1]
  attendi [0.1] secondi
fine
```

Questo script crea un'animazione passando attraverso tutti i costumi dello sprite.

## Ottimizzazione e debugging dei cicli

### Evitare cicli infiniti
Un ciclo infinito è un ciclo che non termina mai, causando il blocco del programma. Per evitare cicli infiniti:

- Assicurati che la condizione di un ciclo "ripeti fino a quando" possa essere soddisfatta
- Verifica che le variabili di controllo vengano incrementate correttamente
- Considera l'aggiunta di una condizione di sicurezza (es. numero massimo di iterazioni)

```
# Esempio di ciclo con condizione di sicurezza
porta [i v] a [1]
porta [max_iterazioni v] a [1000]
ripeti fino a quando <<(condizione_principale)> o <(i) > (max_iterazioni)>>
  # Istruzioni da ripetere
  cambia [i v] di [1]
fine
se <(i) > (max_iterazioni)> allora
  dire [Attenzione: raggiunto il numero massimo di iterazioni!] per [2] secondi
fine
```

### Ottimizzare le prestazioni
Per migliorare le prestazioni dei cicli:

- Evita operazioni costose all'interno di cicli frequenti
- Riduci il numero di blocchi "attendi" all'interno dei cicli
- Considera l'uso della modalità Turbo per calcoli intensivi
- Sposta le operazioni invarianti fuori dal ciclo

### Debugging dei cicli
Per identificare e risolvere problemi nei cicli:

- Utilizza blocchi "dire" per visualizzare i valori delle variabili durante l'esecuzione
- Aggiungi punti di controllo (es. suoni o effetti visivi) per tracciare l'esecuzione
- Testa con valori limite (es. 0, 1, valori molto grandi)
- Esegui manualmente il ciclo passo-passo per verificare la logica

## Conclusione
I cicli sono strumenti potenti che permettono di creare comportamenti ripetitivi e dinamici nei progetti Scratch. Comprendere i diversi tipi di cicli disponibili e come utilizzarli efficacemente è fondamentale per creare programmi efficienti e scalabili. Con la pratica, imparerai a scegliere il tipo di ciclo più adatto per ogni situazione e a implementare pattern di iterazione complessi per risolvere problemi specifici.

## Domande di autovalutazione
1. Quali sono i tre tipi principali di cicli in Scratch e quando è più appropriato utilizzare ciascuno di essi?
2. Come puoi implementare un ciclo che conta da 1 a 10 in Scratch?
3. Cosa sono i cicli annidati e in quali situazioni sono utili?
4. Come puoi evitare cicli infiniti nei tuoi progetti Scratch?
5. Scrivi uno script che utilizza un ciclo per trovare il numero più grande in una lista di numeri.