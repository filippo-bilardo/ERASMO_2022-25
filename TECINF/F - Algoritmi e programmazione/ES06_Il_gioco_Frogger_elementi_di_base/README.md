# Il Gioco Frogger - Elementi di Base

## Cos'è Frogger?

Frogger è un classico videogioco arcade sviluppato da Konami nel 1981. L'obiettivo del gioco è guidare una rana attraverso una strada trafficata e un fiume pieno di pericoli per raggiungere la sicurezza sull'altra sponda. Il giocatore deve evitare di essere investito dai veicoli sulla strada e di cadere nell'acqua durante l'attraversamento del fiume.

Nella versione originale, il gioco è composto da:
- Una rana controllata dal giocatore
- Veicoli di vario tipo che si muovono sulla strada (automobili, camion, autobus)
- Tronchi e tartarughe galleggianti sul fiume
- Una zona sicura dove la rana deve arrivare

## Concetti Teorici per Implementare Frogger in Scratch

### 1. Sistema di Coordinate in Scratch

In Scratch, lo stage (lo sfondo) ha un sistema di coordinate cartesiane:
- L'origine (0,0) è al centro dello stage
- L'asse X va da -240 (sinistra) a 240 (destra)
- L'asse Y va da -180 (basso) a 180 (alto)

![Sistema di coordinate](https://en.scratch-wiki.info/w/images/Xy-grid.gif)

### 2. Eventi in Scratch

Gli eventi sono blocchi che avviano l'esecuzione di uno script quando si verifica una determinata condizione. I principali eventi che useremo sono:

- `Quando si clicca sulla bandierina verde`: Avvia il gioco
- `Quando si preme il tasto [freccia]`: Controlla il movimento della rana

### 3. Movimento degli Sprite

Per muovere gli sprite in Scratch possiamo usare diversi blocchi:

- `Vai a x: [x] y: [y]`: Posiziona lo sprite alle coordinate specificate
- `Cambia x di [n]`: Sposta lo sprite orizzontalmente
- `Cambia y di [n]`: Sposta lo sprite verticalmente
- `Fai [n] passi`: Muove lo sprite nella direzione in cui è orientato

### 4. Cicli e Controllo del Flusso

Per gestire il movimento continuo degli ostacoli useremo:

- `Per sempre`: Esegue continuamente un blocco di codice
- `Attendi [n] secondi`: Pausa l'esecuzione per il tempo specificato
- `Se [condizione] allora`: Esegue un blocco di codice solo se la condizione è vera

### 5. Rilevamento dei Bordi

Per gestire il comportamento degli sprite quando raggiungono i bordi dello stage:

- `Se sul bordo, rimbalza`: Fa rimbalzare lo sprite quando tocca un bordo
- `Se [x position] > [240] allora`: Condizione per verificare se lo sprite ha raggiunto il bordo destro

## Implementazione del Gioco

### Fase 1: Preparazione dello Stage e degli Sprite

#### Preparazione dello Stage

1. Cerca su Internet un'immagine adatta per lo sfondo del gioco Frogger (una strada con corsie e possibilmente un fiume)
2. In Scratch, vai alla sezione Stage e clicca su "Scegli uno Sfondo dalla Libreria" o "Carica uno Sfondo"
3. Seleziona o carica l'immagine trovata

#### Creazione degli Sprite

1. **Sprite della Rana**:
   - Cerca un'immagine di una rana o disegnala nell'editor di Scratch
   - Clicca su "Scegli uno Sprite dalla Libreria" o "Disegna nuovo sprite"
   - Ridimensiona lo sprite se necessario usando lo strumento di ridimensionamento

2. **Sprite dei Veicoli**:
   - Crea almeno 3 sprite diversi per i veicoli (auto, camion, autobus)
   - Puoi usare la libreria di Scratch o disegnarli tu stesso
   - Assicurati che abbiano dimensioni appropriate rispetto alla rana

### Fase 2: Programmazione della Rana

#### Posizionamento Iniziale

```blocks
Quando si clicca sulla bandierina verde
vai a x: (numero a caso tra [-240] e [240]) y: [-160]
```

Questo codice posiziona la rana in una posizione casuale nella parte inferiore dello stage quando inizia il gioco.

#### Movimento con i Tasti Freccia

```blocks
Quando si preme il tasto [freccia su]
se <(y position) < [180]> allora
  cambia y di (15)
fine
```

```blocks
Quando si preme il tasto [freccia giù]
se <(y position) > [-180]> allora
  cambia y di (-15)
fine
```

```blocks
Quando si preme il tasto [freccia destra]
se <(x position) < [240]> allora
  cambia x di (15)
fine
```

```blocks
Quando si preme il tasto [freccia sinistra]
se <(x position) > [-240]> allora
  cambia x di (-15)
fine
```

Questi blocchi permettono di muovere la rana usando i tasti freccia, impedendole di uscire dai bordi dello stage.

### Fase 3: Programmazione dei Veicoli

#### Codice per la Macchina-1

```blocks
Quando si clicca sulla bandierina verde
vai a x: [-240] y: [-120]  // Posizione nella seconda corsia
per sempre
  fai (10) passi
  attendi (1) secondi
  se <(x position) > [240]> allora
    vai a x: [-240] y: [-120]
  fine
fine
```

Questo codice fa apparire la macchina nella seconda corsia e la fa muovere continuamente da sinistra a destra. Quando raggiunge il bordo destro, torna al bordo sinistro.

#### Codice per la Macchina-2

```blocks
Quando si clicca sulla bandierina verde
vai a x: [240] y: [-80]  // Posizione nella terza corsia
per sempre
  fai (-8) passi  // Valore negativo per muoversi da destra a sinistra
  attendi (1.2) secondi
  se <(x position) < [-240]> allora
    vai a x: [240] y: [-80]
  fine
fine
```

Questo codice fa apparire la seconda macchina nella terza corsia e la fa muovere continuamente da destra a sinistra. Quando raggiunge il bordo sinistro, torna al bordo destro.

#### Codice per l'Autobus

```blocks
Quando si clicca sulla bandierina verde
vai a x: [-240] y: [-40]  // Posizione nella quarta corsia
per sempre
  fai (5) passi  // L'autobus si muove più lentamente
  attendi (0.8) secondi
  se <(x position) > [240]> allora
    vai a x: [-240] y: [-40]
  fine
fine
```

Questo codice fa apparire l'autobus nella quarta corsia e lo fa muovere continuamente da sinistra a destra, ma più lentamente rispetto alle macchine.

## Esercizio Completo

Per completare l'esercizio, segui questi passaggi:

1. **Prepara lo stage e gli sprite**:
   - Cerca e imposta uno sfondo adatto per il gioco
   - Crea lo sprite della rana
   - Crea almeno 3 sprite per i veicoli (macchine e autobus)

2. **Programma la rana**:
   - Fai apparire la rana in una posizione casuale nella parte inferiore dello stage quando si clicca sulla bandierina verde
   - Programma il movimento della rana con i tasti freccia, impedendole di uscire dai bordi dello stage

3. **Programma i veicoli**:
   - Fai apparire ogni veicolo nella sua corsia
   - Programma il movimento continuo dei veicoli
   - Fai riapparire i veicoli dal lato opposto quando escono dallo stage

## Estensioni Possibili

Una volta completato l'esercizio base, puoi aggiungere queste funzionalità per migliorare il gioco:

1. **Rilevamento delle collisioni**: Aggiungi il codice per rilevare quando la rana viene investita da un veicolo
2. **Punteggio**: Aggiungi un sistema di punteggio che aumenta quando la rana raggiunge la parte superiore dello stage
3. **Vite**: Dai al giocatore un numero limitato di vite
4. **Livelli di difficoltà**: Aumenta la velocità dei veicoli man mano che il giocatore avanza nel gioco

## Conclusione

In questo esercizio hai imparato a:
- Creare e posizionare sprite in Scratch
- Programmare il movimento di uno sprite usando i tasti freccia
- Implementare il movimento automatico degli sprite
- Gestire i bordi dello stage
- Creare un semplice gioco arcade

Continua a sperimentare con Scratch per migliorare il tuo gioco Frogger e creare nuovi progetti!