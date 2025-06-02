# Esercitazione Pratica

## Introduzione all'esercitazione

Questa esercitazione pratica ti guiderà attraverso la creazione completa di tutti gli elementi grafici necessari per il gioco Frogger, un classico arcade che ha fatto la storia dei videogiochi. Seguendo questi esercizi passo dopo passo, metterai in pratica le conoscenze acquisite sui concetti fondamentali di GIMP e svilupperai competenze concrete nella creazione di asset per videogiochi, acquisendo padronanza con strumenti professionali di grafica digitale.

Il progetto Frogger è stato scelto appositamente perché combina elementi grafici semplici ma distintivi, permettendoti di concentrarti sulle tecniche di disegno digitale senza la complessità di artwork troppo elaborati. Attraverso la creazione di sfondi, personaggi, veicoli e altri elementi interattivi, imparerai a gestire livelli, selezioni, colori, texture e altri aspetti fondamentali della grafica raster.

Ogni esercizio è strutturato per costruire progressivamente il tuo progetto, partendo dallo sfondo fino ad arrivare all'assemblaggio finale di tutti gli elementi. Ti consigliamo di completare gli esercizi nell'ordine proposto, salvando regolarmente il tuo lavoro sia in formato XCF (per mantenere i livelli e le possibilità di modifica) che in formato PNG (per l'uso nel gioco). Questo approccio ti permetterà di costruire un portfolio di asset grafici coerenti e pronti all'uso in un contesto di sviluppo di videogiochi.

## Preparazione dell'ambiente di lavoro

Prima di iniziare gli esercizi, è fondamentale preparare adeguatamente il tuo ambiente di lavoro. Un'organizzazione efficiente dei file e una configurazione ottimale di GIMP ti permetteranno di lavorare in modo più produttivo e di mantenere il progetto ordinato.

### Organizzazione dei file del progetto

Crea una cartella dedicata al progetto con la seguente struttura gerarchica:

```
/Frogger/
  /Sfondo/
  /Personaggio/
  /Veicoli/
  /Elementi_Fiume/
  /PowerUp/
  /Composizione_Finale/
```

Questa organizzazione ti aiuterà a mantenere i tuoi file ordinati e facilmente accessibili durante tutto il progetto. La suddivisione in sottocartelle specifiche per ogni tipo di elemento grafico ti permetterà di ritrovare rapidamente i file quando dovrai assemblarli nella composizione finale. Inoltre, questa struttura facilita il backup e la condivisione del progetto con altri.

### Configurazione ottimale di GIMP

Per lavorare in modo efficiente, configura GIMP con le seguenti impostazioni:

**Attiva la modalità finestra singola**: Questa modalità rende l'interfaccia più intuitiva e simile ad altri software di grafica professionale. Per attivarla, vai su Modifica → Preferenze → Interfaccia → Modalità finestra e seleziona "Finestra singola". Questa impostazione ti permetterà di avere tutti i pannelli e le finestre di dialogo integrati in un'unica interfaccia, evitando la confusione di multiple finestre fluttuanti.

**Configura la griglia predefinita**: Una griglia ben impostata è essenziale per posizionare con precisione gli elementi grafici. Vai su Immagine → Configura griglia e imposta una dimensione di 32×32 pixel. Questa misura è particolarmente adatta per il gioco Frogger, dove gli elementi si muovono tipicamente in incrementi regolari. Attiva la visualizzazione della griglia con Visualizza → Mostra griglia (scorciatoia: Shift+Ctrl+T) e l'aggancio alla griglia con Visualizza → Aggancia alla griglia.

**Organizza i pannelli essenziali**: Assicurati che i seguenti pannelli siano visibili e facilmente accessibili:
- **Pannello Livelli**: Fondamentale per gestire i diversi elementi sovrapposti
- **Pannello Strumenti**: Contiene tutti gli strumenti di disegno e modifica
- **Pannello Pennelli**: Per accedere rapidamente a diverse punte e dimensioni
- **Pannello Opzioni Strumento**: Per configurare lo strumento attualmente selezionato

Puoi personalizzare la disposizione dei pannelli trascinandoli nelle posizioni più comode per il tuo flusso di lavoro. Una configurazione efficiente prevede generalmente i pannelli Strumenti e Opzioni Strumento sulla sinistra, il pannello Livelli sulla destra, e l'area di lavoro principale al centro.

**Configura le preferenze di salvataggio**: Vai su Modifica → Preferenze → Sistema → Cartelle e imposta la cartella predefinita per il salvataggio dei file. Inoltre, in Preferenze → Gestione file, puoi configurare GIMP per creare automaticamente backup dei tuoi file, una precauzione sempre utile durante progetti complessi.

## Esercizio 1: Creazione dello Sfondo Base

### Obiettivo
In questo primo esercizio, creerai lo sfondo completo del gioco Frogger con tutte le aree necessarie: zone sicure, strada e fiume. Lo sfondo è l'elemento fondamentale che definisce l'ambiente di gioco e fornisce il contesto per tutti gli altri elementi che aggiungerai successivamente.

### Procedura dettagliata

#### 1. Creazione del documento base

Inizia creando un nuovo documento con le dimensioni appropriate per il gioco. Vai su File → Nuovo (scorciatoia: Ctrl+N) e nella finestra di dialogo imposta i seguenti parametri:

- **Dimensioni**: 800×600 pixel - questa risoluzione offre un buon compromesso tra dettaglio e prestazioni per un gioco 2D classico
- **Risoluzione**: 72 pixel/pollice - lo standard per grafica destinata alla visualizzazione su schermo
- **Spazio colore**: RGB - ideale per grafica digitale e visualizzazione su monitor
- **Sfondo**: Trasparente - ti permetterà di vedere chiaramente i livelli che creerai

Clicca su "OK" per creare il documento. Prima di procedere, salva subito il file base come "sfondo_frogger.xcf" nella cartella /Frogger/Sfondo/ che hai creato in precedenza.

#### 2. Organizzazione dei livelli

Una corretta organizzazione dei livelli è fondamentale per mantenere il progetto flessibile e facilmente modificabile. Nel pannello Livelli (se non è visibile, attivalo con Finestre → Pannelli agganciabili → Livelli), crea i seguenti livelli dall'alto verso il basso:

- **Livello "Zone Sicure"**: Conterrà le aree di partenza e arrivo dove la rana è al sicuro
- **Livello "Fiume"**: Conterrà l'area d'acqua con le piattaforme galleggianti
- **Livello "Strada"**: Conterrà l'area stradale con i veicoli
- **Livello "Sfondo Base"**: Un livello di base che può contenere elementi comuni o texture di sfondo

Per creare un nuovo livello, clicca sull'icona "Crea un nuovo livello" in basso nel pannello Livelli o usa la scorciatoia Shift+Ctrl+N. Assegna a ciascun livello un nome descrittivo e mantieni le dimensioni predefinite (uguali al documento).

Ricorda che l'ordine dei livelli è importante: gli elementi nei livelli superiori coprono quelli nei livelli inferiori. Puoi riorganizzare i livelli trascinandoli su e giù nel pannello.

#### 3. Creazione delle zone sicure

Le zone sicure sono le aree in cui la rana può sostare senza pericolo: la zona di partenza in basso e la zona di arrivo in alto.

Seleziona il livello "Zone Sicure" cliccandoci sopra nel pannello Livelli. Attiva lo strumento Selezione rettangolare dalla barra degli strumenti (scorciatoia: R) e crea una selezione rettangolare che copra l'intera larghezza del documento (800 pixel) e abbia un'altezza di circa 96 pixel partendo dal bordo inferiore. Questa sarà la zona di partenza.

Imposta il colore di primo piano su verde (#00CC00) cliccando sul quadrato colorato nella parte inferiore della barra degli strumenti e inserendo il codice esadecimale. Riempi la selezione con questo colore usando lo strumento Riempimento (scorciatoia: Shift+B) o premendo Ctrl+, (virgola).

Per aggiungere texture all'erba e renderla più realistica, mantieni la selezione attiva e vai su Filtri → Rendering → Nuvole → Differenza nuvole. Nella finestra di dialogo, imposta:
- Dettaglio: 15
- Complessità: 3
- Randomizzazione: attiva

Clicca su "OK" per applicare l'effetto. Deseleziona premendo Ctrl+Shift+A.

Ripeti lo stesso processo per la zona di arrivo in alto, creando un'altra selezione rettangolare di 800×96 pixel partendo dal bordo superiore del documento. Riempi con lo stesso verde e applica lo stesso effetto di texture.

Per la zona di arrivo, dovrai creare anche le "tane" dove la rana deve arrivare. Seleziona lo strumento Selezione ellittica (scorciatoia: E) e crea 5 cerchi equidistanti nella parte superiore della zona di arrivo. Ogni cerchio dovrebbe avere un diametro di circa 48 pixel. Riempili con un colore più scuro (ad esempio #006600) per distinguerli dal resto dell'area verde.

#### 4. Creazione della strada

La strada è l'area centrale inferiore dove si muoveranno i veicoli che la rana deve evitare.

Seleziona il livello "Strada" nel pannello Livelli. Usa lo strumento Selezione rettangolare per creare un rettangolo che copra l'intera larghezza del documento e abbia un'altezza di circa 200-250 pixel, posizionato immediatamente sopra la zona di partenza.

Imposta il colore di primo piano su grigio scuro (#333333) e riempi la selezione. Per aggiungere realismo all'asfalto, puoi applicare un leggero rumore andando su Filtri → Rumore → RGB Rumore con valori bassi (circa 0.1-0.2).

Per creare le strisce bianche della strada, deseleziona (Ctrl+Shift+A) e poi usa nuovamente lo strumento Selezione rettangolare. Crea rettangoli orizzontali sottili (circa 8-10 pixel di altezza) che attraversino l'intera larghezza della strada. Posizionali a intervalli regolari di circa 64 pixel, utilizzando la griglia come guida.

Imposta il colore di primo piano su bianco (#FFFFFF) e riempi queste selezioni. Per le linee gialle ai bordi della strada, crea due selezioni rettangolari sottili ai margini superiore e inferiore della strada, riempile con giallo (#FFCC00).

Per un effetto più realistico, puoi aggiungere una leggera ombra sotto le strisce bianche. Crea un nuovo livello chiamato "Ombre Strada" sopra il livello "Strada" ma sotto "Fiume". Seleziona le aree appena sotto le strisce bianche, riempile con nero e riduci l'opacità del livello al 30-40%.

#### 5. Creazione del fiume

Il fiume occupa l'area centrale superiore ed è dove la rana dovrà saltare su tronchi e tartarughe per attraversarlo.

Seleziona il livello "Fiume" nel pannello Livelli. Usa lo strumento Selezione rettangolare per creare un rettangolo che copra l'intera larghezza del documento e abbia un'altezza simile a quella della strada, posizionato tra la zona di arrivo e la strada.

Imposta il colore di primo piano su blu (#0066CC) e riempi la selezione. Per creare l'effetto dell'acqua in movimento, vai su Filtri → Rendering → Nuvole → Plasma. Nella finestra di dialogo, imposta:
- Turbolenza: 2.0
- Seme casuale: attiva

Clicca su "OK" per applicare l'effetto. Per migliorare ulteriormente l'aspetto dell'acqua, puoi:

1. Regolare l'opacità del livello "Fiume" al 90% per un effetto più naturale
2. Cambiare la modalità di fusione del livello da "Normale" a "Sovrapponi" o "Luce soffusa" nel pannello Livelli
3. Aggiungere un leggero effetto di movimento con Filtri → Distorsione → Onde, impostando ampiezze basse e lunghezze d'onda medie

Per aggiungere riflessi sull'acqua, crea un nuovo livello chiamato "Riflessi Acqua" sopra il livello "Fiume". Seleziona lo strumento Pennello con una punta morbida di dimensioni medie (30-50 pixel), imposta il colore su bianco o azzurro molto chiaro (#CCFFFF), e dipingi delicatamente alcune linee orizzontali ondulate. Riduci l'opacità di questo livello al 20-30% e imposta la modalità di fusione su "Schermo".

#### 6. Salvataggio del lavoro

Al termine della creazione dello sfondo, è importante salvare il tuo lavoro in diversi formati:

1. Salva il file in formato XCF (il formato nativo di GIMP che mantiene tutti i livelli e le informazioni di editing) andando su File → Salva (Ctrl+S) e assicurandoti di salvare nella cartella /Frogger/Sfondo/ con il nome "sfondo_frogger.xcf".

2. Esporta anche una versione in formato PNG per l'uso nel gioco. Vai su File → Esporta come (Shift+Ctrl+E), seleziona il formato PNG, naviga nella stessa cartella e salva come "sfondo_frogger.png". Nella finestra di dialogo delle opzioni PNG, mantieni le impostazioni predefinite e clicca su "Esporta".

Ricorda di salvare frequentemente durante il lavoro per evitare perdite accidentali. Puoi usare la scorciatoia Ctrl+S per salvare rapidamente le modifiche al file XCF.

### Criteri di valutazione

Per valutare la qualità del tuo sfondo, considera i seguenti aspetti:

**Corretta divisione delle aree di gioco**: Le zone sicure, la strada e il fiume dovrebbero essere chiaramente definite e proporzionate correttamente. La disposizione dovrebbe rispecchiare il layout classico di Frogger, con dimensioni appropriate per ciascuna area.

**Uso appropriato dei colori e delle texture**: I colori dovrebbero essere vivaci ma coerenti, creando un ambiente visivamente piacevole. Le texture dovrebbero aggiungere profondità e interesse visivo senza risultare eccessive o distraenti.

**Organizzazione efficiente dei livelli**: I livelli dovrebbero essere nominati in modo chiaro e organizzati logicamente. Questa organizzazione faciliterà le modifiche future e l'aggiunta di nuovi elementi.

**Precisione nell'allineamento degli elementi**: Tutti gli elementi dovrebbero essere allineati con precisione, utilizzando la griglia come guida. Le strisce stradali, i bordi e le tane nella zona di arrivo dovrebbero essere posizionati in modo uniforme e simmetrico.

### Suggerimenti avanzati

**Utilizzo efficiente di guide e griglia**: Oltre alla griglia predefinita, puoi creare guide personalizzate trascinandole dai righelli (attiva i righelli con Visualizza → Righelli se non sono visibili). Le guide possono essere posizionate con precisione numerica facendo doppio clic su di esse.

**Sperimentazione con texture personalizzate**: Prova diverse combinazioni di filtri per creare texture uniche. Per l'erba, puoi combinare Differenza nuvole con un leggero effetto di Mosaico (Filtri → Distorsione → Mosaico) per un look più stilizzato. Per l'acqua, prova a sovrapporre più effetti di Plasma con diverse impostazioni e modalità di fusione.

**Utilizzo di sfumature per profondità**: Aggiungi sfumature sottili per creare profondità. Ad esempio, puoi far apparire l'acqua più profonda al centro utilizzando lo strumento Sfumatura con una transizione da blu chiaro ai bordi a blu più scuro al centro.

**Creazione di bordi dettagliati**: Per un look più rifinito, aggiungi bordi dettagliati tra le diverse aree. Ad esempio, puoi creare un sottile bordo roccioso tra il fiume e la strada utilizzando lo strumento Pennello con una texture di pietra o applicando un effetto di Bump map (Filtri → Mappa → Bump map).

**Ottimizzazione per la visibilità del gameplay**: Assicurati che lo sfondo, pur essendo dettagliato e interessante, non interferisca con la visibilità degli elementi di gioco che si muoveranno sopra di esso. Mantieni un buon contrasto tra lo sfondo e gli elementi in movimento.

## Esercizio 2: Disegno della Rana Protagonista

### Obiettivo
In questo esercizio, creerai il personaggio principale del gioco: la rana che il giocatore controllerà. Realizzerai diverse pose per l'animazione, assicurandoti che il personaggio sia riconoscibile, caratteristico e ben visibile sullo sfondo del gioco.

### Procedura dettagliata

#### 1. Creazione del documento per il personaggio

Inizia creando un nuovo documento specifico per il personaggio della rana. Vai su File → Nuovo e imposta i seguenti parametri:

- **Dimensioni**: 64×64 pixel - questa dimensione è ideale per il protagonista di Frogger, abbastanza grande da mostrare dettagli ma proporzionata rispetto agli altri elementi di gioco
- **Risoluzione**: 72 pixel/pollice
- **Spazio colore**: RGB
- **Trasparenza**: Attiva - fondamentale per i personaggi di gioco, permette di vedere lo sfondo attorno alla rana

Clicca su "OK" per creare il documento. Salva immediatamente il file come "rana_base.xcf" nella cartella /Frogger/Personaggio/.

#### 2. Impostazione dei livelli per il personaggio

Una struttura a livelli ben organizzata è particolarmente importante quando si disegna un personaggio, poiché permette di modificare facilmente parti specifiche senza alterare l'intero disegno. Crea i seguenti livelli dall'alto verso il basso:

- **Livello "Dettagli"**: Per elementi decorativi, punti luce e dettagli finali
- **Livello "Zampe"**: Per le quattro zampe della rana
- **Livello "Occhi"**: Per gli occhi e le espressioni
- **Livello "Testa"**: Per la testa della rana
- **Livello "Corpo"**: Per il corpo principale della rana

Questa organizzazione ti permetterà di lavorare su ciascun elemento anatomico separatamente, facilitando le modifiche e la creazione di varianti per l'animazione.

#### 3. Disegno della rana base

Inizia disegnando il corpo principale della rana, che servirà come base per tutti i frame di animazione:

**Corpo**: Seleziona il livello "Corpo" nel pannello Livelli. Attiva lo strumento Ellisse (scorciatoia: E) e, tenendo premuto il tasto Shift per mantenere le proporzioni, disegna un ovale orizzontale che occupi circa due terzi del documento. Imposta il colore di primo piano su verde (#00AA00) e riempi la selezione.

Per dare volume al corpo, crea un'ombra interna: mantieni la selezione attiva, riduci leggermente la selezione con Selezione → Restringi di circa 2-3 pixel, inverti la selezione con Selezione → Inverti, e riempi con un verde leggermente più scuro (#009900). Deseleziona con Ctrl+Shift+A.

**Testa**: Seleziona il livello "Testa" e usa nuovamente lo strumento Ellisse per creare un'ellisse più piccola nella parte superiore del corpo, leggermente sovrapposta ad esso. Riempi con un verde leggermente più chiaro (#00BB00) per distinguerla dal corpo. Aggiungi volume con la stessa tecnica usata per il corpo.

**Occhi**: Passa al livello "Occhi". Usa lo strumento Ellisse per creare due piccoli cerchi nella parte superiore della testa. Riempili di bianco (#FFFFFF). All'interno di ciascun occhio, crea un cerchio ancora più piccolo e riempilo di nero (#000000) per le pupille. Per un effetto più realistico, aggiungi un piccolo punto di luce bianco in ciascuna pupilla usando lo strumento Pennello con una punta dura molto piccola.

**Zampe**: Seleziona il livello "Zampe". Usa lo strumento Ellisse o lo strumento Percorsi per creare quattro piccole ellissi ai lati del corpo, due anteriori e due posteriori. Le zampe posteriori dovrebbero essere leggermente più grandi di quelle anteriori. Riempile con un verde simile a quello del corpo ma leggermente più chiaro (#00BB00).

Per aggiungere le dita, usa lo strumento Pennello con una punta dura di piccole dimensioni (3-5 pixel) e disegna 3-4 piccole estensioni all'estremità di ciascuna zampa. Puoi anche usare lo strumento Percorsi per creare forme più precise per le membrane tra le dita, tipiche delle rane.

#### 4. Aggiunta di dettagli e texture

I dettagli fanno la differenza tra un personaggio piatto e uno caratteristico e memorabile:

Seleziona il livello "Dettagli" e usa lo strumento Pennello per aggiungere elementi che arricchiscano il design della rana:

- **Macchie sul dorso**: Usa un pennello morbido con opacità ridotta (30-40%) per aggiungere macchie leggermente più scure sul dorso della rana. Varia la dimensione e la posizione delle macchie per un aspetto naturale.

- **Punti di luce**: Con un pennello piccolo e bianco, aggiungi punti di luce strategici (sulla testa, sul dorso e sulle zampe) per dare volume e far sembrare la pelle umida, caratteristica delle rane.

- **Dettagli delle zampe**: Aggiungi linee sottili per definire le membrane tra le dita e piccoli dettagli anatomici come le articolazioni.

- **Espressione facciale**: Aggiungi una semplice bocca curva per dare personalità alla rana. Puoi optare per un'espressione determinata o leggermente sorridente.

Per una texture più realistica, puoi applicare un leggero effetto di rumore al corpo e alla testa. Seleziona questi livelli uno alla volta e vai su Filtri → Rumore → RGB Rumore con valori molto bassi (0.05-0.1) per simulare la texture della pelle di rana.

#### 5. Creazione dei frame di animazione

Per animare la rana, dovrai creare diverse varianti che rappresentino i diversi stati del movimento:

**Rana ferma**: Questa è la versione base che hai appena creato. Salvala come "rana_ferma.xcf".

**Rana che salta**: Duplica l'intero documento andando su File → Crea → Duplica. Nel nuovo documento, seleziona il livello "Zampe" e usa lo strumento Sposta (scorciatoia: M) per modificare la posizione delle zampe:
- Estendi le zampe posteriori verso il basso
- Piega le zampe anteriori verso l'alto e leggermente in avanti
- Modifica leggermente la forma del corpo per dargli un aspetto più allungato durante il salto

Salva questa variante come "rana_salto.xcf".

**Varianti direzionali**: Per un'animazione completa, crea varianti della rana orientata nelle quattro direzioni (su, giù, sinistra, destra). Puoi farlo duplicando il documento base e ruotando tutti i livelli:
- Per la rana rivolta verso l'alto: usa la versione base
- Per la rana rivolta verso il basso: duplica e vai su Immagine → Trasforma → Rifletti verticalmente
- Per la rana rivolta a sinistra: duplica e vai su Immagine → Trasforma → Ruota 90° in senso antiorario
- Per la rana rivolta a destra: duplica e vai su Immagine → Trasforma → Ruota 90° in senso orario

Per ciascuna direzione, crea anche la variante "salto" modificando la posizione delle zampe come descritto sopra.

#### 6. Esportazione dei file finali

Una volta completate tutte le varianti della rana, esporta ciascuna in formato PNG per l'uso nel gioco:

1. Apri ciascun file XCF separatamente
2. Vai su File → Esporta come
3. Seleziona il formato PNG
4. Salva nella cartella /Frogger/Personaggio/ con nomi descrittivi come:
   - "rana_ferma_su.png"
   - "rana_salto_su.png"
   - "rana_ferma_giu.png"
   - "rana_salto_giu.png"
   - "rana_ferma_sinistra.png"
   - "rana_salto_sinistra.png"
   - "rana_ferma_destra.png"
   - "rana_salto_destra.png"

Nella finestra di dialogo delle opzioni PNG, assicurati che l'opzione "Salva il canale alfa" sia attivata per preservare la trasparenza.

### Criteri di valutazione

Per valutare la qualità del tuo personaggio, considera i seguenti aspetti:

**Riconoscibilità del personaggio**: La rana dovrebbe essere immediatamente riconoscibile come tale, con proporzioni e caratteristiche anatomiche appropriate. Il design dovrebbe essere semplice ma distintivo.

**Coerenza tra i diversi frame di animazione**: Tutte le varianti della rana dovrebbero mantenere lo stesso stile, colori e proporzioni. Le differenze dovrebbero essere limitate alla posizione delle zampe e all'orientamento.

**Uso efficace del colore e dei dettagli**: I colori dovrebbero essere vivaci e coerenti. I dettagli dovrebbero arricchire il design senza sovraccaricarlo, mantenendo la leggibilità anche a dimensioni ridotte.

**Trasparenza correttamente impostata**: L'area intorno alla rana dovrebbe essere completamente trasparente, senza pixel residui o aloni che potrebbero compromettere l'integrazione con lo sfondo.

### Suggerimenti avanzati

**Utilizzo di riferimenti visivi**: Prima di iniziare a disegnare, cerca immagini di rane reali e di personaggi stilizzati di rane in altri giochi o media. Questi riferimenti possono ispirarti e aiutarti a catturare le caratteristiche essenziali di una rana in modo convincente.

**Creazione di una silhouette distintiva**: Una buona regola del design di personaggi è che dovrebbero essere riconoscibili dalla sola silhouette. Verifica questo aspetto riempiendo temporaneamente tutti i livelli visibili con nero e controllando se la forma è ancora chiaramente identificabile come una rana.

**Utilizzo di livelli di regolazione**: Per sperimentare rapidamente con diverse combinazioni di colori, puoi aggiungere livelli di regolazione (Livello → Nuovo livello di regolazione) come Tonalità-Saturazione o Curve. Questi livelli modificano l'aspetto dei livelli sottostanti senza alterarli permanentemente.

**Animazione avanzata con fotogrammi intermedi**: Per un'animazione più fluida, considera la creazione di fotogrammi intermedi tra la posizione "ferma" e "salto". Questi fotogrammi di transizione renderanno il movimento più naturale quando implementato nel gioco.

**Test su sfondo**: Prima di finalizzare il design, testa come appare la rana sullo sfondo del gioco che hai creato nell'Esercizio 1. Puoi farlo temporaneamente aprendo lo sfondo e incollando la rana come nuovo livello. Questo ti permetterà di verificare la visibilità e il contrasto in condizioni reali di gioco.