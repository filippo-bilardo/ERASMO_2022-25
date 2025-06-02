# Installazione di GIMP

## Requisiti di sistema

Prima di procedere con l'installazione di GIMP, verifica che il tuo sistema soddisfi i seguenti requisiti minimi:

### Windows
- Windows 7, 8, 10 o 11 (32-bit o 64-bit)
- Processore da 1 GHz o superiore
- 2 GB di RAM (consigliati 4 GB)
- 200 MB di spazio libero su disco (consigliato 1 GB per un uso confortevole)
- Scheda grafica con supporto OpenGL 2.0 o superiore

### macOS
- macOS 10.12 (Sierra) o versioni successive
- Processore Intel o Apple Silicon (M1/M2)
- 2 GB di RAM (consigliati 4 GB)
- 200 MB di spazio libero su disco (consigliato 1 GB)

### Linux
- Qualsiasi distribuzione Linux recente (Ubuntu 18.04+, Fedora 30+, Debian 10+, ecc.)
- 2 GB di RAM (consigliati 4 GB)
- 200 MB di spazio libero su disco (consigliato 1 GB)

## Procedura di installazione dettagliata

### Windows

1. **Scarica l'installer**:
   - Visita il sito ufficiale di GIMP: https://www.gimp.org/downloads/
   - Fai clic sul pulsante di download per Windows
   - Verrà scaricato un file .exe (ad esempio "gimp-2.10.32-setup.exe")

2. **Esegui l'installer**:
   - Fai doppio clic sul file .exe scaricato
   - Se appare un avviso di sicurezza di Windows, fai clic su "Sì" per consentire l'installazione

3. **Segui la procedura guidata**:
   - Seleziona la lingua di installazione
   - Accetta i termini della licenza GNU GPL
   - Scegli la cartella di destinazione (consigliato lasciare quella predefinita)
   - Seleziona i componenti da installare (consigliato lasciare tutte le opzioni predefinite)
   - Scegli se creare icone sul desktop e nel menu Start
   - Fai clic su "Installa" per avviare l'installazione

4. **Completa l'installazione**:
   - Attendi il completamento del processo di installazione
   - Al termine, seleziona "Avvia GIMP" se desideri aprire immediatamente il programma
   - Fai clic su "Fine" per completare l'installazione

### macOS

1. **Scarica il file DMG**:
   - Visita il sito ufficiale di GIMP: https://www.gimp.org/downloads/
   - Fai clic sul pulsante di download per macOS
   - Verrà scaricato un file .dmg (ad esempio "gimp-2.10.32.dmg")

2. **Monta l'immagine disco**:
   - Fai doppio clic sul file .dmg scaricato
   - Si aprirà una finestra con l'icona di GIMP e una freccia verso la cartella Applicazioni

3. **Installa GIMP**:
   - Trascina l'icona di GIMP sulla cartella Applicazioni come indicato dalla freccia
   - Attendi il completamento della copia dei file

4. **Avvia GIMP per la prima volta**:
   - Apri la cartella Applicazioni dal Finder
   - Fai doppio clic sull'icona di GIMP
   - Al primo avvio, potrebbe apparire un avviso di sicurezza: fai clic su "Apri" per confermare che desideri eseguire l'applicazione

### Linux

La maggior parte delle distribuzioni Linux include GIMP nei propri repository ufficiali, rendendo l'installazione molto semplice attraverso il gestore pacchetti.

**Ubuntu/Debian**:
```bash
sudo apt update
sudo apt install gimp
```

**Fedora**:
```bash
sudo dnf install gimp
```

**Arch Linux**:
```bash
sudo pacman -S gimp
```

**OpenSUSE**:
```bash
sudo zypper install gimp
```

## Configurazione iniziale

Al primo avvio di GIMP, verranno eseguite alcune configurazioni automatiche. Ecco alcuni passaggi consigliati per ottimizzare l'ambiente di lavoro:

### 1. Scegli la modalità di interfaccia

GIMP offre diverse modalità di interfaccia. Per i principianti, è consigliata la modalità "Finestra singola":

1. Vai su **Modifica → Preferenze**
2. Nella sezione **Interfaccia**, seleziona **Modalità finestra → Modalità finestra singola**
3. Fai clic su **OK**
4. Riavvia GIMP per applicare le modifiche

### 2. Configura lo spazio di lavoro

Per ottimizzare lo spazio di lavoro per la creazione di grafica per videogiochi:

1. Vai su **Finestre → Pannelli agganciabili** e assicurati che siano visibili:
   - Livelli
   - Strumenti
   - Opzioni strumento
   - Pennelli
   - Pattern

2. Organizza i pannelli trascinandoli nelle posizioni più comode per il tuo flusso di lavoro

### 3. Imposta la griglia predefinita

Per la creazione di sprite e elementi di gioco, è utile configurare una griglia predefinita:

1. Crea un nuovo documento (File → Nuovo)
2. Vai su **Immagine → Configura griglia**
3. Imposta la spaziatura a 16x16 pixel (o la dimensione che preferisci per i tuoi sprite)
4. Attiva la griglia con **Visualizza → Mostra griglia**

### 4. Verifica gli aggiornamenti

Assicurati di avere l'ultima versione di GIMP per beneficiare di tutte le funzionalità e correzioni di bug:

1. Vai su **Aiuto → Informazioni su**
2. Verifica il numero di versione
3. Se necessario, visita il sito ufficiale per scaricare aggiornamenti

## Risoluzione dei problemi comuni

### GIMP non si avvia

- **Windows**: Verifica che il tuo sistema soddisfi i requisiti minimi. Prova a eseguire l'installer come amministratore.
- **macOS**: Assicurati che la tua versione di macOS sia compatibile. Prova a spostare GIMP in un'altra posizione all'interno della cartella Applicazioni.
- **Linux**: Verifica eventuali errori nei log di sistema con il comando `journalctl -xe`.

### Interfaccia lenta o poco reattiva

1. Vai su **Modifica → Preferenze**
2. Nella sezione **Gestione risorse**, riduci la dimensione della cache delle immagini
3. Nella sezione **Strumenti di disegno**, riduci la qualità dell'anteprima del pennello

### Problemi con le tavolette grafiche

- **Windows**: Assicurati di avere installati i driver più recenti per la tua tavoletta
- **macOS**: Verifica le impostazioni di Input nelle Preferenze di Sistema
- **Linux**: Installa il pacchetto `xserver-xorg-input-wacom` (o equivalente per la tua distribuzione)

## Conclusione

Hai completato con successo l'installazione di GIMP e configurato l'ambiente di lavoro per iniziare a creare elementi grafici per il tuo gioco Frogger. Nel prossimo modulo, esploreremo l'interfaccia di GIMP e impareremo a utilizzare gli strumenti principali.