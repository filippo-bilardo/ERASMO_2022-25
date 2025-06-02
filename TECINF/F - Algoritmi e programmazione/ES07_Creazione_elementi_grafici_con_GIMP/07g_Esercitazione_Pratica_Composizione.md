# Esercitazione Pratica - Composizione Finale

## Esercizio 6: Assemblaggio e Composizione Finale

### Obiettivo
In questo esercizio finale, assemblerai tutti gli elementi grafici che hai creato nei precedenti esercizi per visualizzare come apparirà il gioco completo. Creerai una composizione che mostri lo sfondo, la rana protagonista, i veicoli, gli elementi del fiume e i power-up nelle loro posizioni di gioco, fornendo una visione d'insieme del progetto Frogger.

### Procedura dettagliata

#### 1. Creazione del documento di composizione

Inizia creando un nuovo documento che servirà come "screenshot" del gioco in azione:

- **Dimensioni**: 800×600 pixel (le stesse dello sfondo)
- **Risoluzione**: 72 pixel/pollice
- **Spazio colore**: RGB
- **Sfondo**: Trasparente

Salva immediatamente il file come "frogger_composizione.xcf" nella cartella /Frogger/Composizione_Finale/.

#### 2. Importazione dello sfondo

Il primo passo è importare lo sfondo che hai creato nell'Esercizio 1:

1. Vai su File → Apri come livelli
2. Naviga nella cartella /Frogger/Sfondo/ e seleziona "sfondo_frogger.png"
3. Il file verrà aperto come un nuovo livello nel tuo documento di composizione
4. Rinomina questo livello in "Sfondo" per mantenerlo organizzato

#### 3. Organizzazione dei livelli per la composizione

Per mantenere la composizione ordinata e facilmente modificabile, crea una struttura gerarchica di livelli:

- **Gruppo "Interfaccia"**: Per elementi dell'interfaccia utente come punteggio, vite, ecc.
- **Gruppo "PowerUp"**: Per i power-up posizionati nel gioco
- **Gruppo "Rana"**: Per il personaggio principale
- **Gruppo "Elementi Fiume"**: Per tronchi e tartarughe
- **Gruppo "Veicoli"**: Per le auto e altri veicoli sulla strada
- **Livello "Sfondo"**: Il livello di sfondo che hai appena importato

Per creare un gruppo di livelli, clicca sull'icona "Crea un nuovo gruppo di livelli" in basso nel pannello Livelli o fai clic destro nel pannello e seleziona "Nuovo gruppo di livelli". Assegna a ciascun gruppo un nome descrittivo.

#### 4. Posizionamento dei veicoli sulla strada

Ora importa e posiziona i veicoli che hai creato nell'Esercizio 3:

1. Seleziona il gruppo "Veicoli" nel pannello Livelli
2. Vai su File → Apri come livelli
3. Naviga nella cartella /Frogger/Veicoli/ e seleziona uno dei file PNG dei veicoli
4. Usa lo strumento Sposta (scorciatoia: M) per posizionare il veicolo sulla strada
5. Ripeti il processo per importare altri veicoli, posizionandoli su corsie diverse della strada

Per creare un effetto realistico di traffico:
- Posiziona veicoli dello stesso tipo sulla stessa corsia, ma a distanze diverse
- Alterna la direzione dei veicoli tra le corsie (da sinistra a destra in una corsia, da destra a sinistra in quella adiacente)
- Varia le dimensioni e i tipi di veicoli per creare interesse visivo

#### 5. Posizionamento degli elementi sul fiume

Importa e posiziona i tronchi e le tartarughe che hai creato nell'Esercizio 4:

1. Seleziona il gruppo "Elementi Fiume" nel pannello Livelli
2. Importa i file PNG dei tronchi e delle tartarughe come hai fatto per i veicoli
3. Posiziona questi elementi sul fiume, creando percorsi che la rana possa seguire per attraversarlo

Per un layout efficace:
- Alterna file di tronchi e tartarughe
- Varia le dimensioni dei tronchi in ciascuna fila
- Lascia alcuni spazi vuoti che rappresentino una sfida, ma assicurati che ci sia sempre un percorso possibile per attraversare
- Come per i veicoli, alterna la direzione del movimento tra le file

#### 6. Aggiunta dei power-up

Importa e posiziona alcuni dei power-up che hai creato nell'Esercizio 5:

1. Seleziona il gruppo "PowerUp" nel pannello Livelli
2. Importa i file PNG dei power-up
3. Posiziona i power-up in punti strategici del gioco: alcuni sulla strada, altri sul fiume, altri nelle zone sicure

Non esagerare con il numero di power-up: posizionane solo 2-3 per dare l'idea di come apparirebbero nel gioco reale.

#### 7. Posizionamento della rana protagonista

Importa e posiziona la rana che hai creato nell'Esercizio 2:

1. Seleziona il gruppo "Rana" nel pannello Livelli
2. Importa il file PNG della rana (scegli una delle varianti, ad esempio "rana_ferma_su.png")
3. Posiziona la rana in un punto interessante del gioco, ad esempio:
   - A metà strada mentre attraversa la strada
   - Su un tronco nel fiume
   - In procinto di raccogliere un power-up

#### 8. Creazione di elementi dell'interfaccia utente

Per completare la composizione, aggiungi alcuni elementi base dell'interfaccia utente:

1. Seleziona il gruppo "Interfaccia" nel pannello Livelli
2. Crea un nuovo livello chiamato "UI_Base"
3. Usa lo strumento Rettangolo per creare una barra nella parte superiore o inferiore dello schermo
4. Riempila con un colore scuro semi-trasparente (ad esempio nero con opacità al 70%)
5. Crea un nuovo livello chiamato "UI_Testo"
6. Usa lo strumento Testo (scorciatoia: T) per aggiungere elementi come:
   - "SCORE: 1250"
   - "LEVEL: 3"
   - "TIME: 60"
   - "LIVES: 3"

Per le vite, puoi anche importare una versione ridotta dell'immagine della rana e duplicarla tre volte.

#### 9. Aggiunta di effetti speciali

Per rendere la composizione più dinamica e interessante, aggiungi alcuni effetti speciali:

1. **Effetto di movimento**: Per i veicoli in movimento o i tronchi, puoi aggiungere leggere scie di movimento usando lo strumento Pennello con un colore semi-trasparente

2. **Splash d'acqua**: Se la rana è sul fiume, puoi aggiungere piccoli splash d'acqua attorno al tronco o alla tartaruga su cui si trova

3. **Effetto di raccolta power-up**: Se la rana è vicina a un power-up, puoi aggiungere un effetto di bagliore o particelle tra la rana e il power-up, come se stesse per raccoglierlo

4. **Ombra sotto gli elementi**: Aggiungi una leggera ombra sotto i veicoli, i tronchi, le tartarughe e la rana per dare profondità alla scena

#### 10. Esportazione della composizione finale

Una volta completata la composizione, esportala in formato PNG per la visualizzazione e la condivisione:

1. Vai su File → Esporta come
2. Seleziona il formato PNG
3. Salva nella cartella /Frogger/Composizione_Finale/ con il nome "frogger_screenshot.png"
4. Nella finestra di dialogo delle opzioni PNG, mantieni le impostazioni predefinite e clicca su "Esporta"

Inoltre, salva il file XCF per mantenere tutti i livelli e poter modificare la composizione in futuro.

### Criteri di valutazione

Per valutare la qualità della tua composizione finale, considera i seguenti aspetti:

**Equilibrio visivo**: La composizione dovrebbe essere equilibrata, senza aree troppo affollate o troppo vuote. Gli elementi dovrebbero essere distribuiti in modo da creare un senso di movimento e dinamismo.

**Coerenza stilistica**: Tutti gli elementi dovrebbero apparire come se appartenessero allo stesso gioco, con uno stile grafico coerente e una palette di colori armoniosa.

**Leggibilità del gameplay**: Dalla composizione dovrebbe essere chiaro come funziona il gioco: quali sono gli ostacoli, quali sono gli obiettivi, come si muove il personaggio.

**Qualità dell'integrazione**: Gli elementi importati dovrebbero integrarsi perfettamente con lo sfondo, senza bordi evidenti o problemi di scala.

**Attenzione ai dettagli**: Piccoli dettagli come ombre, riflessi, effetti di movimento e elementi dell'interfaccia utente dovrebbero arricchire la composizione senza sovrastarla.

### Suggerimenti avanzati

**Creazione di una scena narrativa**: Invece di posizionare gli elementi in modo casuale, prova a creare una "scena" che racconti un momento specifico del gameplay. Ad esempio, la rana che sta per essere investita da un'auto o che salta da una tartaruga che sta per immergersi.

**Variazioni di composizione**: Crea più versioni della composizione che mostrino diverse situazioni di gioco o diversi livelli (ad esempio, una versione diurna e una notturna).

**Aggiunta di effetti atmosferici**: Considera l'aggiunta di effetti atmosferici come nebbia leggera, pioggia, o raggi di sole per creare un'atmosfera più ricca e immersiva.

**Creazione di una schermata di titolo**: Come progetto bonus, usa gli elementi che hai creato per comporre una schermata di titolo accattivante per il gioco, con il logo, pulsanti di menu e decorazioni tematiche.

**Mockup di schermate di gioco aggiuntive**: Oltre alla schermata di gameplay principale, considera la creazione di mockup per altre schermate come "Game Over", "Level Complete" o "High Scores".

**Documentazione del processo**: Per un portfolio professionale, documenta il processo di creazione della composizione finale, mostrando come hai integrato i vari elementi e quali decisioni di design hai preso lungo il percorso.