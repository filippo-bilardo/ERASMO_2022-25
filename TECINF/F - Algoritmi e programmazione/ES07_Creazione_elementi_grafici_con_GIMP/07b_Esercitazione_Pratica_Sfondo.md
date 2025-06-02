# Esercitazione Pratica - Creazione dello Sfondo

## Esercizio 1: Creazione dello Sfondo Base

### Obiettivo
In questo esercizio, creerai lo sfondo completo del gioco Frogger con tutte le aree necessarie: zone sicure, strada e fiume. Lo sfondo è l'elemento fondamentale che definisce l'ambiente di gioco e fornisce il contesto per tutti gli altri elementi che aggiungerai successivamente.

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

**Varianti tematiche dello sfondo**: Come sfida aggiuntiva, prova a creare varianti dello sfondo con temi diversi, come una versione notturna con luci artificiali o una versione invernale con neve e ghiaccio. Queste varianti possono essere utilizzate come livelli diversi nel gioco finale.