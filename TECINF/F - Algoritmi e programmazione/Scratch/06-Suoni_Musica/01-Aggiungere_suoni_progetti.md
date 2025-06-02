# Aggiungere suoni ai progetti

## Introduzione
I suoni sono un elemento fondamentale per creare progetti Scratch coinvolgenti e interattivi. In questa guida, esploreremo come aggiungere, modificare e controllare i suoni nei tuoi progetti, trasformando semplici animazioni in esperienze multimediali complete.

## Tipi di suoni in Scratch

### Suoni predefiniti
Scratch offre una vasta libreria di suoni predefiniti, organizzati in categorie come:
1. **Effetti sonori**: pop, click, esplosioni, ecc.
2. **Strumenti musicali**: piano, chitarra, batteria, ecc.
3. **Voci e vocalizzi**: risate, esclamazioni, ecc.
4. **Suoni di animali**: miagolii, abbai, cinguettii, ecc.
5. **Suoni elettronici**: beep, loop, ecc.

### Suoni registrati
Puoi registrare i tuoi suoni direttamente in Scratch utilizzando il microfono del tuo dispositivo.

### Suoni importati
Puoi importare file audio esterni nei formati supportati (WAV, MP3).

## Aggiungere suoni a un progetto

### Utilizzare la libreria di suoni
1. Seleziona lo sprite a cui vuoi aggiungere un suono
2. Clicca sulla scheda "Suoni" nella parte superiore dell'area di editing
3. Clicca sul pulsante "Scegli un suono" (icona con l'altoparlante)
4. Sfoglia le categorie e seleziona il suono desiderato
5. Clicca su "OK" per aggiungere il suono allo sprite

### Registrare un nuovo suono
1. Nella scheda "Suoni", clicca sul pulsante "Registra un suono" (icona del microfono)
2. Clicca sul pulsante rosso di registrazione per iniziare
3. Parla o produci il suono che desideri registrare
4. Clicca sul pulsante di stop per terminare la registrazione
5. Dai un nome al tuo suono e clicca su "Salva"

### Importare un suono esterno
1. Nella scheda "Suoni", clicca sul pulsante "Carica un suono dal tuo computer" (icona della cartella)
2. Seleziona il file audio che desideri importare
3. Clicca su "Apri" per aggiungere il suono al tuo progetto

## Riprodurre suoni con i blocchi

### Blocchi di base per i suoni
1. **suona suono [nome]**: Riproduce il suono specificato e passa immediatamente al blocco successivo
   ```
   Quando si clicca sulla bandiera verde
   Suona suono [Meow v]
   ```

2. **suona suono [nome] e attendi**: Riproduce il suono specificato e attende che finisca prima di passare al blocco successivo
   ```
   Quando si clicca sulla bandiera verde
   Suona suono [Meow v] e attendi
   Dire [Ho finito di miagolare!] per (2) secondi
   ```

3. **ferma tutti i suoni**: Interrompe immediatamente tutti i suoni in riproduzione
   ```
   Quando si preme il tasto [spazio v]
   Ferma tutti i suoni
   ```

### Controllo avanzato dei suoni
1. **imposta volume a [percentuale]%**: Imposta il volume generale del progetto
   ```
   Quando si clicca sulla bandiera verde
   Imposta volume a (50)%
   ```

2. **cambia volume di [valore]**: Aumenta o diminuisce il volume generale
   ```
   Quando si preme il tasto [freccia su v]
   Cambia volume di (10)
   
   Quando si preme il tasto [freccia giù v]
   Cambia volume di (-10)
   ```

3. **volume**: Blocco reporter che restituisce il volume attuale
   ```
   Quando si clicca sulla bandiera verde
   Dire (unione di [Volume attuale: ] e (volume)) per (2) secondi
   ```

## Modificare i suoni

### Editor di suoni di Scratch
Scratch include un editor di suoni integrato che permette di modificare i suoni direttamente nell'ambiente di sviluppo.

1. Nella scheda "Suoni", clicca sul suono che desideri modificare
2. Si aprirà l'editor di suoni con la forma d'onda del suono

### Funzionalità dell'editor di suoni
1. **Riproduzione**: Pulsanti per riprodurre, mettere in pausa e fermare il suono
2. **Selezione**: Seleziona parti del suono trascinando il mouse sulla forma d'onda
3. **Taglio**: Rimuove la parte selezionata del suono
4. **Copia/Incolla**: Copia e incolla parti del suono
5. **Effetti**: Applica effetti come inversione, eco, aumento/diminuzione della velocità

### Applicare effetti ai suoni
1. Seleziona il suono nell'editor
2. Clicca sul menu a discesa "Effetti" nella parte superiore dell'editor
3. Scegli l'effetto desiderato:
   - **Più veloce/Più lento**: Modifica la velocità di riproduzione
   - **Eco**: Aggiunge un effetto eco
   - **Robot**: Crea un effetto robotico
   - **Più forte/Più piano**: Modifica il volume
   - **Inverti**: Riproduce il suono al contrario

## Esempi pratici

### Esempio 1: Effetti sonori per un gioco
```
Quando si clicca sulla bandiera verde
Per sempre
  Se <tocca [Moneta v]?> allora
    Suona suono [Coin v]
    Cambia [punteggio v] di (1)
    Attendi (0.5) secondi
  Fine
  Se <tocca [Nemico v]?> allora
    Suona suono [Rip v] e attendi
    Ferma [tutti v]
  Fine
Fine
```

### Esempio 2: Strumento musicale virtuale
```
Quando si preme il tasto [a v]
Suona suono [Piano Do v]

Quando si preme il tasto [s v]
Suona suono [Piano Re v]

Quando si preme il tasto [d v]
Suona suono [Piano Mi v]

Quando si preme il tasto [f v]
Suona suono [Piano Fa v]

Quando si preme il tasto [g v]
Suona suono [Piano Sol v]

Quando si preme il tasto [h v]
Suona suono [Piano La v]

Quando si preme il tasto [j v]
Suona suono [Piano Si v]

Quando si preme il tasto [k v]
Suona suono [Piano Do alto v]
```

### Esempio 3: Narrazione con suoni
```
Quando si clicca sulla bandiera verde
Dire [C'era una volta...] per (2) secondi
Suona suono [Vento v] e attendi
Dire [Un giorno di tempesta...] per (2) secondi
Suona suono [Tuono v] e attendi
Dire [Quando improvvisamente...] per (2) secondi
Suona suono [Porta che si apre v] e attendi
```

## Sincronizzare suoni con animazioni

### Utilizzo di messaggi
```
Quando si clicca sulla bandiera verde
Suona suono [Drum v]
Invia messaggio [battito]

Quando ricevo messaggio [battito]
Cambia effetto [colore v] di (25)
Attendi (0.2) secondi
Cambia effetto [colore v] di (-25)
```

### Utilizzo di suoni e attendi
```
Quando si clicca sulla bandiera verde
Ripeti (10) volte
  Suona suono [Pop v] e attendi
  Cambia dimensione di (10)
Fine
Ripeti (10) volte
  Suona suono [Pop v] e attendi
  Cambia dimensione di (-10)
Fine
```

### Sincronizzazione con il tempo musicale
```
Quando si clicca sulla bandiera verde
Imposta [tempo v] a [60]
Ripeti (4) volte
  Suona suono [Drum v] e attendi
  Attendi ((60) / (tempo)) secondi
Fine
```

## Rilevamento del volume del microfono

### Utilizzo del blocco "volume"
```
Quando si clicca sulla bandiera verde
Per sempre
  Porta dimensione a ((volume) * (2))
  Se <(volume) > [30]> allora
    Suona suono [Pop v]
    Attendi (0.2) secondi
  Fine
Fine
```

## Best Practices

1. **Qualità dei suoni**: Utilizza suoni di buona qualità e assicurati che siano chiari e appropriati
2. **Volume appropriato**: Mantieni un volume equilibrato tra i diversi suoni del tuo progetto
3. **Non esagerare**: Troppi suoni possono distrarre o irritare l'utente
4. **Feedback sonoro**: Usa i suoni per fornire feedback sulle azioni dell'utente
5. **Ottimizzazione**: I file audio grandi possono rallentare il progetto, quindi ottimizza la durata e la qualità

## Esercizi pratici

1. **Soundboard**: Crea una soundboard con diversi effetti sonori attivabili tramite tasti o clic
2. **Storia sonora**: Crea una storia interattiva dove i suoni giocano un ruolo importante nella narrazione
3. **Gioco musicale**: Sviluppa un semplice gioco musicale dove l'utente deve riprodurre una sequenza di suoni

## Domande di autovalutazione

1. Quali sono i tre modi principali per aggiungere suoni a un progetto Scratch?
2. Qual è la differenza tra i blocchi "suona suono" e "suona suono e attendi"?
3. Come puoi modificare un suono in Scratch?
4. Come puoi sincronizzare un suono con un'animazione?
5. In che modo puoi utilizzare il microfono per creare interazioni basate sul suono nei tuoi progetti?