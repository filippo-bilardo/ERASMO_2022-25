# Disegnare con Scratch

## Introduzione
Scratch offre potenti strumenti per disegnare e creare grafica, permettendo agli utenti di esprimere la propria creatività attraverso il codice. In questa guida, esploreremo le diverse funzionalità di disegno disponibili in Scratch, dalle basi dell'editor grafico fino all'utilizzo dei blocchi della penna per creare disegni programmati.

## L'Editor Grafico di Scratch

### Accesso all'Editor Grafico
1. Seleziona uno sprite esistente o creane uno nuovo
2. Clicca sulla scheda "Costumi" nella parte superiore dell'area di editing
3. L'editor grafico si aprirà, mostrando gli strumenti di disegno disponibili

### Strumenti di disegno principali
1. **Pennello**: Per disegnare a mano libera
2. **Linea**: Per creare linee rette
3. **Rettangolo/Ellisse**: Per disegnare forme geometriche
4. **Testo**: Per aggiungere testo ai costumi
5. **Riempimento**: Per colorare aree chiuse
6. **Seleziona**: Per selezionare e modificare parti del disegno

### Modalità di disegno
1. **Modalità Bitmap**: Disegno basato sui pixel, ideale per immagini dettagliate
2. **Modalità Vettoriale**: Disegno basato su forme matematiche, ideale per grafica scalabile
3. **Conversione tra modalità**: È possibile convertire tra le due modalità, ma potrebbero esserci perdite di qualità

### Tecniche avanzate nell'Editor Grafico
1. **Livelli**: Gestione di diversi livelli per creare disegni complessi
2. **Gruppi**: Raggruppamento di elementi per manipolarli insieme
3. **Trasformazioni**: Rotazione, ridimensionamento e riflessione di parti del disegno

## La Penna in Scratch

### Introduzione ai blocchi della Penna
I blocchi della categoria Penna permettono di disegnare programmando, creando pattern, forme geometriche e disegni complessi attraverso il movimento degli sprite.

### Blocchi fondamentali della Penna
1. **penna giù**: Inizia a disegnare quando lo sprite si muove
2. **penna su**: Smette di disegnare quando lo sprite si muove
3. **cancella tutto**: Rimuove tutti i segni della penna dallo stage
4. **imposta colore penna a**: Cambia il colore della penna
5. **imposta dimensione penna a**: Modifica lo spessore della linea

### Esempio base: Disegnare una linea
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Vai a x: (-100) y: (0)
Penna giù
Vai a x: (100) y: (0)
Penna su
```

### Controllo avanzato della Penna
1. **cambia colore penna di**: Modifica incrementalmente il colore della penna
2. **imposta sfumatura penna a**: Controlla la trasparenza della penna
3. **cambia sfumatura penna di**: Modifica incrementalmente la trasparenza
4. **imposta stile penna a**: Cambia lo stile della linea (solido, tratteggiato, ecc.)

## Disegno di forme geometriche

### Disegnare un quadrato
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Vai a x: (-50) y: (-50)
Penna giù
Ripeti (4) volte
  Fai (100) passi
  Ruota di (90) gradi
Fine
Penna su
```

### Disegnare un cerchio
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Vai a x: (0) y: (0)
Vai a x: (0) y: (-100)
Penna giù
Ripeti (360) volte
  Fai (1) passi
  Ruota di (1) gradi
Fine
Penna su
```

### Disegnare una stella
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Vai a x: (0) y: (0)
Punta in direzione (90)
Penna giù
Ripeti (5) volte
  Fai (100) passi
  Ruota di (144) gradi
Fine
Penna su
```

## Tecniche di disegno avanzate

### Disegno ricorsivo: Frattali
```
Definisci albero (lunghezza) (angolo)
Se <(lunghezza) > [10]> allora
  Penna giù
  Fai (lunghezza) passi
  Ruota di (angolo) gradi
  albero ((lunghezza) * (0.7)) (angolo)
  Ruota di ((angolo) * (-2)) gradi
  albero ((lunghezza) * (0.7)) (angolo)
  Ruota di (angolo) gradi
  Fai (-(lunghezza)) passi
  Penna su
Fine

Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Nascondi
Vai a x: (0) y: (-150)
Punta in direzione (0)
Imposta dimensione penna a (1)
albero (80) (30)
```

### Disegno parametrico
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Nascondi
Vai a x: (0) y: (0)
Imposta dimensione penna a (1)
Penna giù
Per i da (0) a (360) con incremento di (1)
  Imposta colore penna a ((i) * (1))
  Vai a x: ((sin di ((i) * (3))) * (100)) y: ((cos di (i)) * (100))
Fine
Penna su
```

### Effetto arcobaleno
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Nascondi
Vai a x: (-240) y: (0)
Imposta dimensione penna a (5)
Penna giù
Per i da (0) a (480) con incremento di (1)
  Imposta colore penna a ((i) / (2))
  Vai a x: ((i) - (240)) y: ((sin di ((i) / (2))) * (100))
Fine
Penna su
```

## Combinare disegno e animazione

### Disegno progressivo
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Nascondi
Vai a x: (0) y: (0)
Imposta dimensione penna a (2)
Per i da (0) a (360) con incremento di (5)
  Punta in direzione (i)
  Penna giù
  Fai (100) passi
  Penna su
  Vai a x: (0) y: (0)
  Attendi (0.05) secondi
Fine
```

### Disegno interattivo
```
Quando si clicca sulla bandiera verde
Cancella tutto
Penna su
Mostra
Imposta dimensione penna a (2)
Per sempre
  Se <mouse premuto?> allora
    Penna giù
  Altrimenti
    Penna su
  Fine
  Vai a x: (posizione x del mouse) y: (posizione y del mouse)
  Imposta colore penna a ((timer) * (10))
Fine
```

## Best Practices

1. **Pianificazione**: Prima di iniziare a disegnare, pianifica il tuo disegno su carta o mentalmente
2. **Modularità**: Dividi disegni complessi in parti più semplici e crea blocchi personalizzati per ciascuna parte
3. **Coordinate**: Utilizza il sistema di coordinate di Scratch in modo efficace, ricordando che l'origine (0,0) è al centro dello stage
4. **Ottimizzazione**: Evita di usare troppi blocchi di disegno in progetti complessi, poiché potrebbero rallentare l'esecuzione
5. **Pulizia**: Usa "cancella tutto" all'inizio dei tuoi script per assicurarti che lo stage sia pulito

## Esercizi pratici

1. **Disegno geometrico**: Crea un programma che disegni un poligono regolare con un numero di lati specificato dall'utente
2. **Arte generativa**: Crea un disegno che cambi in base a input casuali o dell'utente
3. **Logo Turtle**: Implementa un semplice interprete del linguaggio Logo, che permetta all'utente di inserire comandi come "avanti", "indietro", "destra", "sinistra"

## Domande di autovalutazione

1. Qual è la differenza tra la modalità bitmap e la modalità vettoriale nell'editor grafico di Scratch?
2. Come puoi disegnare un cerchio perfetto usando i blocchi della penna?
3. Quali blocchi sono necessari per creare un disegno interattivo che segua il mouse?
4. Come puoi creare un effetto di disegno con colori che cambiano gradualmente?
5. Quali sono i vantaggi di utilizzare blocchi personalizzati per creare disegni complessi?