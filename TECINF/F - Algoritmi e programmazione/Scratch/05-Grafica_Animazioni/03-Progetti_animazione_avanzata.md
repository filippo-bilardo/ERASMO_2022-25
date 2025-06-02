# Progetti di animazione avanzata

## Introduzione
Dopo aver esplorato le tecniche di base per creare animazioni in Scratch, è il momento di affrontare progetti più complessi e sofisticati. In questa guida, esploreremo tecniche avanzate di animazione e vedremo come combinare diverse funzionalità di Scratch per creare progetti visivamente accattivanti e interattivi.

## Animazioni basate sulla fisica

### Simulazione della gravità e del rimbalzo

```
Quando si clicca sulla bandiera verde
Vai a x: (0) y: (150)
Imposta [velocità y v] a [0]
Imposta [gravità v] a [-0.5]
Imposta [attrito v] a [0.99]
Imposta [elasticità v] a [0.8]
Per sempre
  Cambia [velocità y v] di (gravità)
  Cambia y di (velocità y)
  Se <(y) < [-170]> allora
    Imposta [velocità y v] a [-(velocità y) * (elasticità)]
    Porta y a [-170]
    Imposta [velocità x v] a [(velocità x) * (attrito)]
  Fine
  Cambia x di (velocità x)
  Se <(x) > [230] o (x) < [-230]> allora
    Imposta [velocità x v] a [-(velocità x) * (elasticità)]
  Fine
Fine
```

### Simulazione di un pendolo

```
Quando si clicca sulla bandiera verde
Imposta [lunghezza v] a [100]
Imposta [gravità v] a [0.4]
Imposta [smorzamento v] a [0.99]
Imposta [angolo v] a [45]
Imposta [velocità angolare v] a [0]
Per sempre
  Imposta [accelerazione v] a [((sin di (angolo)) * (-1)) * (gravità)]
  Cambia [velocità angolare v] di (accelerazione)
  Imposta [velocità angolare v] a [(velocità angolare) * (smorzamento)]
  Cambia [angolo v] di (velocità angolare)
  Vai a x: ((sin di (angolo)) * (lunghezza)) y: ((cos di (angolo)) * (lunghezza) * (-1))
  Attendi (0.01) secondi
Fine
```

### Sistema di particelle

```
Quando si clicca sulla bandiera verde
Nascondi
Cancella tutti i cloni

Quando si clicca sullo stage
Ripeti (20) volte
  Crea clone di [me stesso v]
Fine

Quando vengo clonato
Mostra
Vai a x: (posizione x del mouse) y: (posizione y del mouse)
Punta in direzione (numero a caso da (0) a (360))
Imposta [velocità v] a (numero a caso da (2) a (8))
Imposta [vita v] a (numero a caso da (20) a (60))
Porta dimensione a (numero a caso da (20) a (100))%
Porta effetto [colore v] a (numero a caso da (0) a (100))
Ripeti fino a quando <(vita) = [0]>
  Fai (velocità) passi
  Cambia [velocità v] di (-0.1)
  Cambia [vita v] di (-1)
  Cambia effetto [fantasma v] di (2)
  Se <(velocità) < [0]> allora
    Imposta [velocità v] a [0]
  Fine
Fine
Elimina questo clone
```

## Animazioni con effetti visivi avanzati

### Effetto morphing tra forme

```
Quando si clicca sulla bandiera verde
Nascondi
Cancella tutti i cloni
Imposta [forma v] a [1]
Imposta [transizione v] a [0]

Ripeti (20) volte
  Crea clone di [me stesso v]
Fine

Per sempre
  Cambia [transizione v] di (1)
  Se <(transizione) > [100]> allora
    Imposta [transizione v] a [0]
    Se <(forma) = [1]> allora
      Imposta [forma v] a [2]
    Altrimenti
      Imposta [forma v] a [1]
    Fine
  Fine
  Attendi (0.05) secondi
Fine

Quando vengo clonato
Mostra
Imposta [id v] a [0]
Cambia [id v] di (1)
Per sempre
  Se <(forma) = [1]> allora
    Vai a x: ((sin di ((id) * (18) + (transizione) * (1.8))) * (100)) y: ((cos di ((id) * (18) + (transizione) * (1.8))) * (100))
  Altrimenti
    Vai a x: ((sin di ((id) * (18))) * ((id) * (5))) y: ((cos di ((id) * (18))) * ((id) * (5)))
  Fine
Fine
```

### Effetto trail (scia)

```
Quando si clicca sulla bandiera verde
Nascondi
Cancella tutti i cloni

Per sempre
  Vai a x: (posizione x del mouse) y: (posizione y del mouse)
  Crea clone di [me stesso v]
Fine

Quando vengo clonato
Mostra
Porta dimensione a (50)%
Porta effetto [fantasma v] a (0)
Ripeti (20) volte
  Cambia dimensione di (-2)
  Cambia effetto [fantasma v] di (5)
  Attendi (0.05) secondi
Fine
Elimina questo clone
```

### Effetto caleidoscopio

```
Quando si clicca sulla bandiera verde
Nascondi
Cancella tutti i cloni
Imposta [num_riflessi v] a [8]

Ripeti (num_riflessi) volte
  Crea clone di [me stesso v]
Fine

Quando vengo clonato
Mostra
Imposta [id v] a [0]
Cambia [id v] di (1)
Punta in direzione ((id) * (360) / (num_riflessi))
Per sempre
  Vai a x: (0) y: (0)
  Fai (distanza da [mouse v]) passi
  Porta effetto [colore v] a ((id) * (100) / (num_riflessi))
Fine
```

## Animazioni narrative

### Scena con transizioni fluide

```
Quando si clicca sulla bandiera verde
Nascondi
Invia messaggio [inizia scena 1]

Quando ricevo messaggio [inizia scena 1]
Mostra
Vai a x: (-200) y: (0)
Porta effetto [fantasma v] a (100)
Scivola in (1) secondi a x: (0) y: (0)
Ripeti (20) volte
  Cambia effetto [fantasma v] di (-5)
  Attendi (0.05) secondi
Fine
Attendi (3) secondi
Ripeti (20) volte
  Cambia effetto [fantasma v] di (5)
  Attendi (0.05) secondi
Fine
Invia messaggio [inizia scena 2]

Quando ricevo messaggio [inizia scena 2]
// Script per la scena 2
```

### Animazione di un personaggio che parla

```
Quando si clicca sulla bandiera verde
Per sempre
  Se <(volume) > [10]> allora
    Ripeti fino a quando <(volume) < [5]>
      Passa al costume [bocca aperta v]
      Attendi (0.05) secondi
      Passa al costume [bocca chiusa v]
      Attendi (0.05) secondi
    Fine
  Altrimenti
    Passa al costume [bocca chiusa v]
  Fine
Fine
```

### Animazione di espressioni facciali

```
Quando si clicca sulla bandiera verde
Imposta [emozione v] a [neutrale]

Quando si preme il tasto [1 v]
Imposta [emozione v] a [felice]

Quando si preme il tasto [2 v]
Imposta [emozione v] a [triste]

Quando si preme il tasto [3 v]
Imposta [emozione v] a [arrabbiato]

Quando si preme il tasto [4 v]
Imposta [emozione v] a [sorpreso]

Per sempre
  Se <(emozione) = [felice]> allora
    Passa al costume [occhi felici v]
    Attendi (0.1) secondi
    Passa al costume [bocca sorriso v]
  Fine
  Se <(emozione) = [triste]> allora
    Passa al costume [occhi tristi v]
    Attendi (0.1) secondi
    Passa al costume [bocca triste v]
  Fine
  // Altre emozioni...
Fine
```

## Tecniche di animazione cinematografica

### Effetto parallasse (profondità)

```
Quando si clicca sulla bandiera verde
Imposta [velocità sfondo v] a [1]
Imposta [velocità medio v] a [3]
Imposta [velocità primo piano v] a [5]

// Script per lo sfondo
Per sempre
  Cambia x di (-(velocità sfondo))
  Se <(x) < [-480]> allora
    Porta x a [480]
  Fine
Fine

// Script per gli elementi di medio piano
// ...

// Script per gli elementi di primo piano
// ...
```

### Effetto camera shake (tremore della telecamera)

```
Quando ricevo messaggio [esplosione]
Ripeti (10) volte
  Cambia x di (numero a caso da (-5) a (5))
  Cambia y di (numero a caso da (-5) a (5))
  Attendi (0.05) secondi
Fine
Vai a x: (0) y: (0)
```

### Effetto slow motion

```
Quando si preme il tasto [spazio v]
Imposta [tempo v] a [0.2]
Attendi (3) secondi
Imposta [tempo v] a [1]

Quando si clicca sulla bandiera verde
Per sempre
  Fai (5) * (tempo) passi
  Attendi (0.05) / (tempo) secondi
Fine
```

## Progetti completi

### Progetto: Animazione interattiva di una storia

Questo progetto combina diverse tecniche per creare una storia animata interattiva con più scene, personaggi animati e transizioni fluide.

1. **Struttura del progetto**:
   - Diversi sfondi per le varie scene
   - Personaggi principali con costumi per diverse azioni ed emozioni
   - Elementi di sfondo animati
   - Sistema di dialogo interattivo

2. **Tecniche utilizzate**:
   - Transizioni tra scene con effetti di dissolvenza
   - Animazione dei personaggi con cambio di costume
   - Parallasse per creare profondità
   - Effetti sonori e musica di sottofondo
   - Interazione dell'utente per avanzare nella storia

### Progetto: Simulazione di un ecosistema

Questo progetto simula un ecosistema con diverse creature che interagiscono tra loro seguendo regole basate sulla fisica e sul comportamento.

1. **Struttura del progetto**:
   - Sfondo dell'ambiente (foresta, oceano, ecc.)
   - Diverse specie di creature (prede, predatori, piante)
   - Sistema di riproduzione e ciclo vitale

2. **Tecniche utilizzate**:
   - Cloni per creare molte istanze di creature
   - Fisica per il movimento naturale
   - Algoritmi di steering per il comportamento delle creature
   - Variabili per tenere traccia della popolazione
   - Grafici animati per visualizzare i dati dell'ecosistema

### Progetto: Effetti visivi musicali

Questo progetto crea visualizzazioni dinamiche che reagiscono alla musica o all'input del microfono.

1. **Struttura del progetto**:
   - Sfondo nero o minimalista
   - Diversi tipi di visualizzatori (barre, onde, particelle)
   - Controlli per modificare gli effetti

2. **Tecniche utilizzate**:
   - Rilevamento del volume del microfono
   - Sistema di particelle che reagisce al suono
   - Effetti di colore che cambiano con la musica
   - Trasformazioni matematiche per creare pattern visivi

## Best Practices

1. **Pianificazione**: Per progetti di animazione complessi, pianifica in anticipo la struttura e le interazioni
2. **Modularità**: Dividi il progetto in componenti più piccoli e gestibili
3. **Ottimizzazione**: Utilizza tecniche per migliorare le prestazioni, come limitare il numero di cloni attivi
4. **Debugging**: Aggiungi funzionalità di debug per testare parti specifiche dell'animazione
5. **Documentazione**: Commenta il codice e documenta le tecniche utilizzate per riferimento futuro

## Esercizi pratici

1. **Crea un'animazione basata sulla fisica**: Implementa un sistema di particelle che simula fuoco, acqua o fumo
2. **Sviluppa una scena narrativa**: Crea una breve storia animata con almeno due personaggi e transizioni tra scene
3. **Progetta un visualizzatore musicale**: Crea un'animazione che reagisce al volume del microfono con effetti visivi creativi

## Domande di autovalutazione

1. Quali tecniche puoi utilizzare per simulare effetti fisici realistici nelle tue animazioni?
2. Come puoi ottimizzare le prestazioni quando utilizzi molti cloni in un sistema di particelle?
3. Quali sono i vantaggi di utilizzare la matematica (seno, coseno, ecc.) per creare animazioni?
4. Come puoi creare transizioni fluide tra diverse scene di un'animazione narrativa?
5. Quali tecniche puoi utilizzare per sincronizzare le animazioni con l'audio o l'input dell'utente?