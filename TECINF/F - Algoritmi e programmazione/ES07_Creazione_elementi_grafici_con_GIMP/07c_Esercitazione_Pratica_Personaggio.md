# Esercitazione Pratica - Creazione del Personaggio

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

**Effetti speciali per eventi di gioco**: Considera la creazione di varianti speciali della rana per eventi particolari del gioco, come una rana che lampeggia quando viene colpita o una rana con effetti particolari quando raccoglie un power-up. Questi dettagli aggiuntivi possono arricchire notevolmente l'esperienza di gioco.