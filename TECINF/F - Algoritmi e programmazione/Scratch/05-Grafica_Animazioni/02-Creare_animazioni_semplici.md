# Creare animazioni semplici

## Introduzione
Le animazioni sono uno degli aspetti più coinvolgenti della programmazione con Scratch, permettendo di dare vita ai progetti e renderli dinamici. In questa guida, esploreremo le tecniche fondamentali per creare animazioni semplici ma efficaci, utilizzando i blocchi di movimento, gli effetti grafici e i cambi di costume.

## Animazione tramite movimento

### Movimento lineare
1. **Movimento base**: Utilizzare i blocchi "vai a x: y:" e "scivola in x secondi a x: y:" per spostare gli sprite
   ```
   Quando si clicca sulla bandiera verde
   Vai a x: (-200) y: (0)
   Scivola in (2) secondi a x: (200) y: (0)
   ```

2. **Movimento continuo**: Utilizzare cicli per creare movimenti ripetitivi
   ```
   Quando si clicca sulla bandiera verde
   Per sempre
     Vai a x: (-200) y: (0)
     Scivola in (2) secondi a x: (200) y: (0)
     Vai a x: (200) y: (0)
     Scivola in (2) secondi a x: (-200) y: (0)
   Fine
   ```

3. **Movimento con rimbalzo**: Utilizzare i blocchi di rilevamento dei bordi
   ```
   Quando si clicca sulla bandiera verde
   Punta in direzione (45)
   Per sempre
     Fai (10) passi
     Se <tocca bordo?> allora
       Rimbalza
     Fine
   Fine
   ```

### Movimento non lineare
1. **Movimento circolare**: Utilizzare seno e coseno per creare movimenti circolari
   ```
   Quando si clicca sulla bandiera verde
   Imposta [angolo v] a [0]
   Per sempre
     Imposta [angolo v] a ((angolo) + (2))
     Vai a x: ((sin di (angolo)) * (100)) y: ((cos di (angolo)) * (100))
   Fine
   ```

2. **Movimento a onda**: Creare un effetto ondulatorio
   ```
   Quando si clicca sulla bandiera verde
   Per sempre
     Vai a x: ((timer) * (50)) y: ((sin di ((timer) * (180))) * (100))
   Fine
   ```

## Animazione tramite cambio di costume

### Creazione di costumi multipli
1. **Utilizzo dell'editor grafico**: Creare diversi costumi per uno sprite
2. **Importazione di costumi**: Importare immagini esterne come costumi
3. **Duplicazione e modifica**: Duplicare un costume esistente e modificarlo leggermente

### Animazione frame-by-frame
1. **Cambio sequenziale di costumi**: Utilizzare il blocco "passa al costume successivo"
   ```
   Quando si clicca sulla bandiera verde
   Per sempre
     Passa al costume successivo
     Attendi (0.1) secondi
   Fine
   ```

2. **Controllo preciso dei costumi**: Utilizzare il blocco "passa al costume [nome]"
   ```
   Quando si clicca sulla bandiera verde
   Per sempre
     Passa al costume [camminata-1 v]
     Attendi (0.1) secondi
     Passa al costume [camminata-2 v]
     Attendi (0.1) secondi
     Passa al costume [camminata-3 v]
     Attendi (0.1) secondi
     Passa al costume [camminata-4 v]
     Attendi (0.1) secondi
   Fine
   ```

### Sincronizzazione di movimento e cambio di costume
```
Quando si clicca sulla bandiera verde
Vai a x: (-200) y: (0)
Per sempre
  Ripeti (10) volte
    Cambia x di (5)
    Passa al costume successivo
    Attendi (0.1) secondi
  Fine
  Ripeti (10) volte
    Cambia x di (-5)
    Passa al costume successivo
    Attendi (0.1) secondi
  Fine
Fine
```

## Animazione tramite effetti grafici

### Effetti disponibili in Scratch
1. **Colore**: Cambia il colore dello sprite
2. **Fantasma**: Rende lo sprite trasparente
3. **Luminosità**: Modifica la luminosità dello sprite
4. **Fisheye**: Crea un effetto occhio di pesce
5. **Vortice**: Crea un effetto vortice
6. **Pixel**: Pixella l'immagine
7. **Mosaico**: Crea un effetto mosaico
8. **Luminosità**: Modifica la luminosità

### Applicazione degli effetti
1. **Effetti statici**: Utilizzare il blocco "porta effetto [nome] a [valore]"
   ```
   Quando si clicca sulla bandiera verde
   Porta effetto [colore v] a (50)
   ```

2. **Effetti dinamici**: Utilizzare il blocco "cambia effetto [nome] di [valore]"
   ```
   Quando si clicca sulla bandiera verde
   Per sempre
     Cambia effetto [colore v] di (5)
     Attendi (0.1) secondi
   Fine
   ```

3. **Transizioni di effetti**: Creare transizioni fluide
   ```
   Quando si clicca sulla bandiera verde
   Porta effetto [fantasma v] a (100)
   Scivola in (2) secondi a x: (0) y: (0)
   Ripeti (100) volte
     Cambia effetto [fantasma v] di (-1)
     Attendi (0.02) secondi
   Fine
   ```

## Animazione tramite ridimensionamento e rotazione

### Ridimensionamento
1. **Dimensione statica**: Utilizzare il blocco "porta dimensione a [percentuale]%"
   ```
   Quando si clicca sulla bandiera verde
   Porta dimensione a (50)%
   ```

2. **Dimensione dinamica**: Utilizzare il blocco "cambia dimensione di [valore]"
   ```
   Quando si clicca sulla bandiera verde
   Porta dimensione a (10)%
   Ripeti (18) volte
     Cambia dimensione di (5)
     Attendi (0.1) secondi
   Fine
   ```

3. **Effetto pulsazione**: Creare un effetto di pulsazione
   ```
   Quando si clicca sulla bandiera verde
   Per sempre
     Ripeti (10) volte
       Cambia dimensione di (2)
       Attendi (0.05) secondi
     Fine
     Ripeti (10) volte
       Cambia dimensione di (-2)
       Attendi (0.05) secondi
     Fine
   Fine
   ```

### Rotazione
1. **Rotazione statica**: Utilizzare il blocco "punta in direzione [gradi]"
   ```
   Quando si clicca sulla bandiera verde
   Punta in direzione (90)
   ```

2. **Rotazione dinamica**: Utilizzare il blocco "ruota di [gradi] gradi"
   ```
   Quando si clicca sulla bandiera verde
   Per sempre
     Ruota di (5) gradi
     Attendi (0.05) secondi
   Fine
   ```

3. **Stili di rotazione**: Utilizzare il blocco "usa stile rotazione [stile]"
   - "ruota": Lo sprite ruota completamente
   - "sinistra-destra": Lo sprite si gira solo a sinistra o a destra
   - "non ruotare": Lo sprite mantiene sempre lo stesso orientamento

## Combinare tecniche di animazione

### Esempio: Farfalla che vola
```
Quando si clicca sulla bandiera verde
Usa stile rotazione [ruota v]
Per sempre
  Cambia effetto [colore v] di (5)
  Ruota di (5) gradi
  Vai a x: ((sin di ((timer) * (100))) * (150)) y: ((cos di ((timer) * (80))) * (100))
  Passa al costume successivo
  Attendi (0.1) secondi
Fine
```

### Esempio: Esplosione
```
Quando si clicca sulla bandiera verde
Nascondi
Vai a x: (0) y: (0)
Porta dimensione a (10)%
Porta effetto [luminosità v] a (0)

Quando ricevo messaggio [esplodi v]
Mostra
Ripeti (20) volte
  Cambia dimensione di (5)
  Cambia effetto [luminosità v] di (5)
  Passa al costume successivo
  Attendi (0.05) secondi
Fine
Porta effetto [fantasma v] a (0)
Ripeti (20) volte
  Cambia effetto [fantasma v] di (5)
  Attendi (0.05) secondi
Fine
Nascondi
```

## Tecniche avanzate

### Animazione basata sulla fisica
1. **Gravità**: Simulare l'effetto della gravità
   ```
   Quando si clicca sulla bandiera verde
   Imposta [velocità y v] a [0]
   Imposta [gravità v] a [-0.5]
   Per sempre
     Cambia [velocità y v] di (gravità)
     Cambia y di (velocità y)
     Se <(y) < [-180]> allora
       Imposta [velocità y v] a [-(velocità y) * (0.8)]
       Porta y a [-180]
     Fine
   Fine
   ```

2. **Inerzia**: Simulare l'inerzia e l'attrito
   ```
   Quando si clicca sulla bandiera verde
   Imposta [velocità x v] a [0]
   Imposta [attrito v] a [0.95]
   Per sempre
     Se <tasto [freccia destra v] premuto?> allora
       Cambia [velocità x v] di [0.5]
     Fine
     Se <tasto [freccia sinistra v] premuto?> allora
       Cambia [velocità x v] di [-0.5]
     Fine
     Imposta [velocità x v] a [(velocità x) * (attrito)]
     Cambia x di (velocità x)
   Fine
   ```

### Animazione di più sprite
1. **Sincronizzazione tramite messaggi**: Utilizzare i messaggi per sincronizzare le animazioni di più sprite
2. **Cloni**: Utilizzare i cloni per creare molte istanze animate di uno sprite
   ```
   Quando si clicca sulla bandiera verde
   Nascondi
   Cancella tutti i cloni
   Ripeti (20) volte
     Crea clone di [me stesso v]
   Fine
   
   Quando vengo clonato
   Mostra
   Vai a x: (numero a caso da (-240) a (240)) y: (numero a caso da (-180) a (180))
   Porta dimensione a (numero a caso da (20) a (100))%
   Per sempre
     Ruota di (numero a caso da (-5) a (5)) gradi
     Fai (numero a caso da (1) a (5)) passi
     Se <tocca bordo?> allora
       Rimbalza
     Fine
   Fine
   ```

## Best Practices

1. **Framerate costante**: Mantieni un framerate costante utilizzando blocchi di attesa coerenti
2. **Ottimizzazione**: Evita di avere troppe animazioni complesse contemporaneamente
3. **Modularità**: Dividi animazioni complesse in parti più semplici
4. **Riutilizzo**: Crea blocchi personalizzati per animazioni che utilizzi frequentemente
5. **Sincronizzazione**: Utilizza messaggi o variabili per sincronizzare diverse animazioni

## Esercizi pratici

1. **Camminata del personaggio**: Crea un personaggio che cammina da sinistra a destra e cambia direzione quando raggiunge il bordo
2. **Animazione ciclica**: Crea un'animazione che si ripete ciclicamente, come un sole che sorge e tramonta
3. **Animazione interattiva**: Crea un'animazione che risponde all'input dell'utente, come un fiore che sboccia quando viene cliccato

## Domande di autovalutazione

1. Quali sono i tre metodi principali per creare animazioni in Scratch?
2. Come puoi sincronizzare il movimento di uno sprite con il cambio di costume?
3. Quali effetti grafici in Scratch sono più utili per creare transizioni fluide?
4. Come puoi simulare la gravità in un'animazione Scratch?
5. Quali tecniche puoi utilizzare per ottimizzare le prestazioni di animazioni complesse?