# Concetti Fondamentali di GIMP

## 1. Livelli

I livelli sono uno dei concetti più importanti in GIMP. Funzionano come fogli trasparenti sovrapposti che permettono di lavorare su elementi diversi dell'immagine separatamente. Questa funzionalità è fondamentale per creare composizioni complesse e per mantenere la flessibilità durante l'editing.

### Gestione dei Livelli

**Creare un nuovo livello**: Per aggiungere un nuovo livello al tuo progetto, fai clic destro nel pannello dei livelli e seleziona "Nuovo livello". Si aprirà una finestra di dialogo dove potrai specificare:
- Nome del livello (scegli un nome descrittivo per identificarlo facilmente)
- Dimensioni (predefinite alle dimensioni dell'immagine)
- Tipo di riempimento (trasparente, bianco, colore di sfondo o colore di primo piano)
- Modalità di fusione iniziale

Puoi anche utilizzare la scorciatoia Shift+Ctrl+N per aprire rapidamente la finestra di creazione nuovo livello.

**Visibilità**: Per mostrare o nascondere temporaneamente un livello, fai clic sull'icona dell'occhio accanto al livello nel pannello dei livelli. Questa funzione è particolarmente utile quando stai lavorando su progetti complessi e hai bisogno di concentrarti su elementi specifici senza eliminare gli altri. Puoi anche tenere premuto Shift mentre clicchi sull'icona dell'occhio per nascondere tutti gli altri livelli, facilitando il confronto.

**Ordine**: L'ordine di sovrapposizione dei livelli determina quali elementi appaiono davanti o dietro agli altri. Per modificare questo ordine, seleziona un livello e trascinalo verso l'alto (per portarlo in primo piano) o verso il basso (per spostarlo sullo sfondo) nel pannello dei livelli. Puoi anche utilizzare le scorciatoie da tastiera:
- Ctrl+Page Up: sposta il livello verso l'alto
- Ctrl+Page Down: sposta il livello verso il basso
- Home: sposta il livello in cima alla pila
- End: sposta il livello in fondo alla pila

**Opacità**: Il cursore dell'opacità nel pannello dei livelli ti permette di regolare la trasparenza di un intero livello. Un'opacità del 100% rende il livello completamente opaco, mentre valori più bassi lo rendono progressivamente più trasparente, lasciando intravedere i livelli sottostanti. Questa funzione è essenziale per creare effetti di sovrapposizione, ombre, riflessi e per regolare l'intensità degli effetti applicati.

**Modalità di fusione**: Le modalità di fusione determinano come i pixel di un livello interagiscono con quelli dei livelli sottostanti. GIMP offre numerose modalità di fusione, ognuna con effetti diversi:
- Normale: nessuna interazione speciale, è la modalità predefinita
- Moltiplica: scurisce l'immagine, utile per ombre e texture
- Schermo: schiarisce l'immagine, ideale per luci e riflessi
- Sovrapponi: aumenta il contrasto mantenendo luci e ombre
- Differenza: crea effetti di inversione di colore
- Colore: mantiene la luminosità dei livelli sottostanti ma applica il colore del livello superiore

Sperimentare con le diverse modalità di fusione è un ottimo modo per creare effetti interessanti senza modificare permanentemente i pixel dell'immagine.

### Gruppi di Livelli

Per progetti complessi, puoi organizzare i livelli in gruppi. Seleziona più livelli tenendo premuto Ctrl mentre fai clic su di essi, quindi fai clic destro e scegli "Nuovo gruppo di livelli da livelli". I gruppi possono essere espansi o compressi per mantenere ordinato il pannello dei livelli.

## 2. Selezioni

Le selezioni permettono di isolare aree specifiche dell'immagine per modificarle. Sono fondamentali per l'editing preciso e per applicare effetti solo dove necessario.

### Strumenti di Selezione

**Strumenti di selezione rettangolare e ellittica**: Questi strumenti base ti permettono di creare selezioni con forme geometriche precise. Per utilizzarli:
1. Seleziona lo strumento dalla barra degli strumenti (rettangolo o ellisse)
2. Fai clic e trascina sull'immagine per creare la selezione
3. Tieni premuto Shift durante il trascinamento per creare un quadrato perfetto o un cerchio perfetto
4. Tieni premuto Ctrl per creare la selezione dal centro verso l'esterno
5. Dopo aver creato una selezione, puoi spostarla tenendo premuto Alt mentre trascini

Nelle opzioni dello strumento puoi anche impostare dimensioni precise, arrotondare gli angoli delle selezioni rettangolari o applicare la funzione di anti-aliasing per bordi più morbidi.

**Lazo**: Lo strumento lazo ti permette di creare selezioni a mano libera, ideali per forme irregolari o organiche. Esistono tre varianti:
- Lazo standard: disegna a mano libera tenendo premuto il pulsante del mouse
- Lazo poligonale: crea una selezione con linee rette facendo clic per definire i punti di ancoraggio
- Lazo intelligente: segue automaticamente i bordi rilevati nell'immagine mentre disegni

Per chiudere una selezione con il lazo, rilascia il pulsante del mouse (per il lazo standard) o fai clic sul punto iniziale (per il lazo poligonale). Puoi anche premere Invio per chiudere la selezione con una linea retta tra il punto corrente e quello iniziale.

**Bacchetta magica**: Questo strumento seleziona automaticamente aree di colore simile. È particolarmente utile per selezionare rapidamente oggetti con colori distinti dallo sfondo. Nelle opzioni dello strumento puoi regolare:
- Soglia: determina quanto simili devono essere i colori per essere inclusi nella selezione (valori più alti selezionano una gamma più ampia di colori)
- Seleziona per: colore composito, rosso, verde, blu, tonalità, saturazione o valore
- Anti-aliasing: per bordi più morbidi
- Campiona tutti i livelli: per considerare i colori di tutti i livelli visibili anziché solo del livello attivo

Per estendere una selezione esistente, tieni premuto Shift mentre usi la bacchetta magica su un'altra area.

**Selezione per colore**: Simile alla bacchetta magica, ma seleziona tutti i pixel di colore simile nell'intera immagine, non solo quelli contigui. Questo strumento è accessibile dal menu Seleziona → Per colore. È ideale per selezionare tutti gli elementi dello stesso colore in un'immagine, come tutti i pixel blu del cielo o tutti i pixel verdi dell'erba. Anche qui puoi regolare la soglia per controllare la precisione della selezione.

### Operazioni con le Selezioni

Dopo aver creato una selezione, puoi:
- Invertirla (Seleziona → Inverti o Ctrl+I)
- Espanderla o contrarla (Seleziona → Cresci/Riduci)
- Sfumarla per bordi più morbidi (Seleziona → Sfuma)
- Salvarla per uso futuro (Seleziona → Salva in canale)
- Trasformarla in un percorso per editing più preciso

Le selezioni attive vengono visualizzate con una linea tratteggiata animata ("formiche in marcia").

## 3. Strumenti di Disegno

GIMP offre una varietà di strumenti di disegno che ti permettono di creare e modificare immagini con precisione. Ogni strumento ha caratteristiche uniche e può essere personalizzato attraverso le sue opzioni.

**Pennello**: Lo strumento pennello è versatile e fondamentale per disegnare a mano libera. Caratteristiche principali:
- Dimensione regolabile: puoi modificare la dimensione del pennello dalle opzioni dello strumento o usando i tasti [ e ]
- Durezza variabile: pennelli morbidi hanno bordi sfumati, mentre quelli duri hanno bordi netti
- Opacità regolabile: per tratti più o meno trasparenti
- Dinamica: puoi collegare parametri come dimensione e opacità alla pressione della penna grafica
- Pennelli personalizzati: GIMP include numerose punte di pennello predefinite, e puoi crearne di nuove

Per utilizzare il pennello in modo efficace, seleziona prima il colore di primo piano desiderato, poi scegli la punta e le impostazioni appropriate, e infine disegna sull'immagine. Per linee dritte, fai clic su un punto, tieni premuto Shift e fai clic su un altro punto.

**Matita**: Lo strumento matita è simile al pennello ma crea sempre bordi netti, senza sfumature o anti-aliasing. È ideale per:
- Pixel art e grafica a bassa risoluzione
- Disegno tecnico dove sono necessari bordi precisi
- Ritocchi pixel per pixel

Come il pennello, puoi regolare dimensione, opacità e utilizzare diverse punte. La differenza principale è che anche con punte morbide, la matita creerà sempre bordi netti.

**Aerografo**: L'aerografo simula l'effetto di una pistola a spruzzo, creando tratti più morbidi e graduali rispetto al pennello standard. Caratteristiche distintive:
- Accumulo di colore: continuando a spruzzare sulla stessa area, il colore diventa progressivamente più intenso
- Pressione e flusso regolabili: controllano quanto colore viene applicato per unità di tempo
- Diffusione: determina quanto ampiamente si disperde il colore

L'aerografo è particolarmente utile per creare ombreggiature morbide, effetti di nebbia o fumo, e transizioni graduali tra colori. È anche eccellente per il fotoritocco delicato.

**Riempimento**: Lo strumento di riempimento (o secchiello) ti permette di riempire aree con un colore o un pattern uniforme. Funziona in due modi principali:
- Riempimento di area: riempie un'area contigua di colore simile (come la bacchetta magica)
- Riempimento dell'intera selezione: se è attiva una selezione, riempie solo quell'area

Nelle opzioni puoi regolare:
- Soglia: determina quanto simili devono essere i colori per essere riempiti
- Riempimento con: colore di primo piano, pattern o preservazione della trasparenza
- Anti-aliasing: per bordi più morbidi
- Riempi aree trasparenti: per includere o escludere pixel trasparenti

Per risultati più precisi, crea prima una selezione e poi usa il riempimento all'interno di essa.

### Altri Strumenti Utili

- **Gomma**: Cancella parti dell'immagine, rendendole trasparenti (su livelli con trasparenza) o sostituendole con il colore di sfondo
- **Clona**: Copia pixel da un'area all'altra, utile per riparare imperfezioni o duplicare elementi
- **Sfumino**: Sfuma i colori esistenti, creando transizioni morbide
- **Timbro prospettico**: Clona considerando la prospettiva, ideale per texture su superfici inclinate

## 4. Colori

La gestione del colore è fondamentale in GIMP per creare immagini visivamente accattivanti e coerenti. Il software offre strumenti completi per selezionare, modificare e applicare colori.

**Primo piano e sfondo**: Nel pannello degli strumenti, GIMP mostra due riquadri di colore sovrapposti:
- Il riquadro superiore rappresenta il colore di primo piano, utilizzato dalla maggior parte degli strumenti di disegno
- Il riquadro inferiore rappresenta il colore di sfondo, utilizzato in alcune operazioni come la cancellazione su livelli senza trasparenza

Puoi scambiare rapidamente questi colori facendo clic sulla freccia curva nell'angolo o premendo il tasto X. Per ripristinare i colori predefiniti (nero per il primo piano, bianco per lo sfondo), fai clic sul piccolo riquadro in basso a sinistra o premi il tasto D.

**Selettore colore**: Facendo clic su uno dei riquadri di colore si apre il selettore colore, che offre diverse modalità di selezione:
- Ruota dei colori: selezione visuale basata su tonalità e saturazione
- Triangolo: selezione basata su tonalità, saturazione e valore
- Scala di grigi: per selezionare toni di grigio
- Tavolozze: collezioni predefinite di colori
- HTML: inserimento diretto di codici colore esadecimali (es. #FF0000 per rosso)

Il selettore mostra anche il colore attuale e quello nuovo per confronto, e permette di salvare colori personalizzati nella tavolozza. Puoi anche regolare precisamente i valori RGB (Rosso, Verde, Blu), HSV (Tonalità, Saturazione, Valore) o CMYK per applicazioni di stampa.

**Campionatore**: Lo strumento contagocce ti permette di prelevare un colore esistente dall'immagine e impostarlo come colore di primo piano o sfondo. Per utilizzarlo:
1. Seleziona lo strumento contagocce dalla barra degli strumenti
2. Fai clic su un pixel dell'immagine per prelevarne il colore come primo piano
3. Tieni premuto Ctrl mentre fai clic per impostare il colore di sfondo

Nelle opzioni del contagocce puoi scegliere di campionare solo il livello attivo o tutti i livelli visibili, e selezionare la dimensione dell'area di campionamento (pixel singolo o media di un'area).

### Regolazioni Avanzate del Colore

GIMP offre potenti strumenti per modificare i colori dell'immagine:
- **Bilanciamento del colore**: Regola le proporzioni di rosso/ciano, verde/magenta e blu/giallo
- **Tonalità-Saturazione**: Modifica tonalità, saturazione e luminosità
- **Curve**: Controllo preciso su ombre, mezzitoni e luci per ogni canale di colore
- **Livelli**: Regola i livelli di input e output per migliorare contrasto e luminosità
- **Colorizza**: Applica una tonalità uniforme mantenendo la luminosità originale

Questi strumenti sono accessibili dal menu Colori e possono essere applicati all'intera immagine o solo a selezioni attive.

### Modalità Colore

GIMP supporta diverse modalità colore:
- **RGB**: Standard per grafica digitale e web
- **Scala di grigi**: Per immagini in bianco e nero con sfumature
- **Indicizzato**: Riduce l'immagine a un numero limitato di colori, utile per formati come GIF

Puoi convertire tra queste modalità dal menu Immagine → Modalità.