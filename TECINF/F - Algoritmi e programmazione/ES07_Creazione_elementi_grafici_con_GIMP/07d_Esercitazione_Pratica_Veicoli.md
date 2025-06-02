# Esercitazione Pratica - Creazione dei Veicoli

## Esercizio 3: Disegno dei Veicoli

### Obiettivo
In questo esercizio, creerai i diversi tipi di veicoli che si muoveranno sulla strada e rappresenteranno gli ostacoli che la rana dovrà evitare. Realizzerai almeno tre tipi diversi di veicoli (auto, camion e moto) con stili e dimensioni differenti per aggiungere varietà al gameplay.

### Procedura dettagliata

#### 1. Creazione dei documenti per i veicoli

Per ciascun tipo di veicolo, crea un nuovo documento con le seguenti impostazioni:

- **Dimensioni**: 
  - Auto: 96×48 pixel
  - Camion: 128×48 pixel
  - Moto: 64×32 pixel
- **Risoluzione**: 72 pixel/pollice
- **Spazio colore**: RGB
- **Trasparenza**: Attiva

Salva immediatamente ciascun file nella cartella /Frogger/Veicoli/ con nomi descrittivi come "auto.xcf", "camion.xcf" e "moto.xcf".

#### 2. Organizzazione dei livelli

Per ciascun veicolo, crea una struttura a livelli simile a questa:

- **Livello "Effetti"**: Per luci, ombre e dettagli decorativi
- **Livello "Finestrini"**: Per i vetri e le superfici trasparenti
- **Livello "Carrozzeria"**: Per la struttura principale del veicolo
- **Livello "Ruote"**: Per le ruote e gli pneumatici

Questa organizzazione ti permetterà di lavorare su ciascun componente separatamente e di apportare modifiche facilmente.

#### 3. Disegno dell'auto

L'auto sarà il veicolo più comune nel gioco. Ecco come crearla:

**Ruote**: Seleziona il livello "Ruote". Usa lo strumento Ellisse per creare quattro cerchi di circa 12-16 pixel di diametro, posizionati agli angoli inferiori del documento. Riempili di nero (#000000). Per aggiungere dettaglio, puoi creare cerchi più piccoli all'interno di ciascuna ruota e riempirli con un grigio chiaro (#CCCCCC) per rappresentare i cerchioni.

**Carrozzeria**: Passa al livello "Carrozzeria". Usa lo strumento Selezione rettangolare per creare la forma base dell'auto, lasciando spazio per le ruote. Puoi arrotondare gli angoli della selezione con Selezione → Arrotonda rettangolo, impostando un raggio di 8-10 pixel. Riempi la selezione con un colore vivace (ad esempio rosso #FF0000 o blu #0000FF).

Per dare volume alla carrozzeria, crea ombre e luci: mantieni la selezione attiva, riduci leggermente la selezione (Selezione → Restringi di 2-3 pixel), e riempi con una versione più chiara del colore base. Deseleziona con Ctrl+Shift+A.

**Finestrini**: Seleziona il livello "Finestrini". Usa lo strumento Selezione rettangolare o lo strumento Percorsi per creare le forme dei finestrini nella parte superiore della carrozzeria. Riempili con un azzurro chiaro (#99CCFF) per simulare il vetro. Per un effetto più realistico, puoi aggiungere riflessi usando un pennello bianco con opacità ridotta.

**Effetti**: Nel livello "Effetti", aggiungi dettagli come:
- Fari: piccoli rettangoli o cerchi bianchi o gialli nella parte anteriore
- Luci posteriori: piccoli rettangoli rossi nella parte posteriore
- Paraurti: linee sottili in grigio chiaro o cromato
- Dettagli decorativi: strisce o pattern sulla carrozzeria per renderla più interessante

#### 4. Disegno del camion

Il camion sarà più grande e più lento dell'auto, rappresentando un ostacolo più difficile da evitare:

**Ruote**: Crea sei ruote più grandi (16-20 pixel di diametro) disposte in tre coppie lungo la parte inferiore del documento.

**Carrozzeria**: Disegna una cabina nella parte anteriore (circa 1/3 della lunghezza totale) e un rimorchio rettangolare per il resto. Usa colori diversi per la cabina e il rimorchio (ad esempio, cabina verde #006600 e rimorchio grigio #666666).

**Finestrini**: Aggiungi finestrini più piccoli nella cabina, con lo stesso stile usato per l'auto.

**Effetti**: Aggiungi dettagli specifici per il camion, come:
- Luci sul tetto della cabina
- Dettagli del rimorchio (linee di giunzione, porte posteriori)
- Logo o scritte sul lato del rimorchio

#### 5. Disegno della moto

La moto sarà il veicolo più piccolo e veloce:

**Ruote**: Crea due ruote di medie dimensioni (14-18 pixel) alle estremità del documento.

**Carrozzeria**: Disegna una forma semplice e aerodinamica che colleghi le due ruote. Puoi usare lo strumento Percorsi per creare curve più precise. Usa un colore vivace come il giallo (#FFCC00) o il viola (#9900CC).

**Pilota**: Aggiungi una semplice silhouette del pilota sopra la moto, usando un colore scuro o nero.

**Effetti**: Aggiungi dettagli come:
- Manubrio
- Faro anteriore
- Scarico
- Eventuali elementi decorativi

#### 6. Creazione di varianti di colore

Per aggiungere varietà al gioco, crea diverse varianti di colore per ciascun tipo di veicolo:

1. Duplica il documento del veicolo (File → Crea → Duplica)
2. Nel nuovo documento, seleziona il livello "Carrozzeria"
3. Vai su Colori → Tonalità-Saturazione
4. Regola il cursore della tonalità per cambiare il colore della carrozzeria
5. Salva la nuova variante con un nome che indichi il colore (ad esempio "auto_blu.xcf")

Ripeti questo processo per creare 3-4 varianti di colore per ciascun tipo di veicolo.

#### 7. Esportazione dei file finali

Esporta tutti i veicoli e le loro varianti in formato PNG per l'uso nel gioco:

1. Per ciascun file XCF, vai su File → Esporta come
2. Seleziona il formato PNG
3. Salva nella cartella /Frogger/Veicoli/ con nomi descrittivi
4. Assicurati che l'opzione "Salva il canale alfa" sia attivata per preservare la trasparenza

### Criteri di valutazione

Per valutare la qualità dei tuoi veicoli, considera i seguenti aspetti:

**Riconoscibilità dei veicoli**: Ciascun tipo di veicolo dovrebbe essere immediatamente riconoscibile e distinguibile dagli altri, anche a dimensioni ridotte durante il gioco.

**Coerenza stilistica**: Tutti i veicoli dovrebbero condividere lo stesso stile grafico, pur mantenendo le loro caratteristiche distintive. Questo crea un'esperienza visiva coerente.

**Uso appropriato delle dimensioni**: Le dimensioni relative dei veicoli dovrebbero riflettere le loro controparti reali e adattarsi alle esigenze del gameplay (veicoli più grandi = ostacoli più difficili).

**Dettagli e rifinitura**: I dettagli come fari, ruote e finestrini dovrebbero essere ben definiti e contribuire alla caratterizzazione di ciascun veicolo senza risultare eccessivi o confusi.

### Suggerimenti avanzati

**Utilizzo di riferimenti**: Cerca immagini di veicoli reali o stilizzati come riferimento. Anche se stai creando versioni semplificate, avere un riferimento ti aiuterà a catturare le proporzioni e i dettagli essenziali.

**Creazione di silhouette riconoscibili**: Come per il personaggio della rana, assicurati che ciascun veicolo abbia una silhouette distintiva e immediatamente riconoscibile.

**Animazione semplice**: Per un tocco extra, puoi creare semplici animazioni per i veicoli, come ruote che girano o sospensioni che si muovono. Questo può essere fatto creando frame aggiuntivi con piccole variazioni.

**Effetti di movimento**: Aggiungi linee di movimento o scie dietro i veicoli più veloci (come la moto) per enfatizzare la loro velocità. Questi elementi possono essere creati su un livello separato e esportati insieme al veicolo o come sprite separati.

**Veicoli speciali**: Come sfida aggiuntiva, prova a creare un veicolo "boss" o speciale, come un'auto della polizia con luci lampeggianti o un veicolo futuristico con effetti particolari. Questi potrebbero essere utilizzati come ostacoli speciali in livelli avanzati del gioco.

**Test di visibilità**: Prima di finalizzare i veicoli, testali posizionandoli sullo sfondo della strada che hai creato nell'Esercizio 1. Assicurati che siano ben visibili e si integrino correttamente con l'ambiente di gioco.