# Eventi e messaggi

## Introduzione
Gli eventi e i messaggi sono elementi fondamentali nella programmazione con Scratch, in quanto permettono di creare interazioni tra gli sprite e di rispondere alle azioni dell'utente. In questa guida, esploreremo in dettaglio come funzionano gli eventi in Scratch e come utilizzare i messaggi per la comunicazione tra gli elementi del progetto.

## Eventi in Scratch

### Cosa sono gli eventi
Gli eventi in Scratch sono "trigger" o "attivatori" che fanno partire l'esecuzione di un blocco di codice quando si verifica una determinata condizione. Sono il punto di partenza di quasi tutti gli script e rappresentano il concetto di programmazione guidata dagli eventi (event-driven programming).

### Tipi di eventi principali

#### Eventi di avvio
1. **Quando si clicca sulla bandiera verde**: Avvia lo script quando l'utente clicca sulla bandiera verde nell'interfaccia di Scratch
2. **Quando si clicca sullo sprite**: Esegue il codice quando l'utente clicca direttamente sullo sprite
3. **Quando si preme il tasto...**: Attiva lo script quando viene premuto un tasto specifico della tastiera

#### Eventi di interazione
1. **Quando lo sprite viene cliccato**: Simile all'evento di avvio, ma può essere utilizzato in contesti diversi
2. **Quando ricevo il messaggio...**: Esegue il codice quando viene ricevuto un messaggio specifico
3. **Quando lo sfondo passa a...**: Attiva lo script quando lo sfondo cambia

#### Eventi di sensori
1. **Quando la distanza è...**: Attiva lo script in base alla distanza rilevata dal sensore (nella versione fisica di Scratch)
2. **Quando il volume è...**: Esegue il codice quando il volume del microfono raggiunge un certo livello
3. **Quando il video rileva movimento**: Attiva lo script quando la webcam rileva un movimento

## Messaggi in Scratch

### Cosa sono i messaggi
I messaggi in Scratch sono un meccanismo di comunicazione che permette agli sprite di "parlare" tra loro. Un sprite può inviare un messaggio che altri sprite possono ricevere e utilizzare come evento per avviare le proprie azioni.

### Come utilizzare i messaggi

#### Inviare messaggi
1. Utilizza il blocco "invia messaggio" dalla categoria Eventi
2. Puoi scegliere un messaggio esistente o crearne uno nuovo
3. Quando questo blocco viene eseguito, tutti gli sprite con il blocco "quando ricevo messaggio" corrispondente inizieranno ad eseguire il loro codice

#### Ricevere messaggi
1. Utilizza il blocco "quando ricevo messaggio" come evento iniziale di uno script
2. Seleziona il messaggio che vuoi ricevere dal menu a tendina
3. Il codice sotto questo blocco verrà eseguito quando il messaggio viene inviato da qualsiasi sprite

#### Inviare messaggi e attendere
1. Il blocco "invia messaggio e attendi" invia un messaggio e poi aspetta che tutti gli script attivati da quel messaggio siano completati
2. Questo è utile per sincronizzare azioni tra diversi sprite

## Esempi pratici

### Esempio 1: Dialogo tra personaggi
```
Sprite 1 (Personaggio A):
Quando si clicca sulla bandiera verde
Dici "Ciao!" per 2 secondi
Invia messaggio "risposta"

Sprite 2 (Personaggio B):
Quando ricevo messaggio "risposta"
Dici "Ciao anche a te!" per 2 secondi
```

### Esempio 2: Controllo di un gioco
```
Sprite 1 (Pulsante Start):
Quando si clicca sullo sprite
Invia messaggio "inizia gioco"

Sprite 2 (Personaggio giocabile):
Quando ricevo messaggio "inizia gioco"
Vai a x:0 y:0
Ripeti fino a quando <tocca bordo?>
  Se <tasto freccia destra premuto?> allora
    Cambia x di 10
  Fine
  Se <tasto freccia sinistra premuto?> allora
    Cambia x di -10
  Fine
Fine
Invia messaggio "game over"
```

## Best Practices

1. **Nomi descrittivi**: Assegna nomi chiari e descrittivi ai tuoi messaggi per rendere il codice più leggibile
2. **Organizzazione**: Usa i messaggi per organizzare il tuo progetto in sezioni logiche
3. **Evita cicli infiniti**: Fai attenzione a non creare cicli infiniti di messaggi dove due sprite continuano a inviarsi messaggi a vicenda
4. **Debugging**: Usa i messaggi per il debugging, ad esempio inviando un messaggio quando una certa condizione viene raggiunta

## Esercizi pratici

1. **Crea un semplice quiz**: Utilizza i messaggi per passare da una domanda all'altra
2. **Animazione sincronizzata**: Crea un'animazione con più sprite che si muovono in sequenza utilizzando i messaggi
3. **Sistema di livelli**: Implementa un semplice gioco con più livelli, usando i messaggi per passare da un livello all'altro

## Domande di autovalutazione

1. Qual è la differenza tra "invia messaggio" e "invia messaggio e attendi"?
2. Come puoi far comunicare due sprite in Scratch?
3. Elenca tre tipi diversi di eventi in Scratch e spiega quando si attivano.
4. Perché i messaggi sono utili nei progetti Scratch con molti sprite?
5. Come potresti utilizzare gli eventi e i messaggi per creare un semplice gioco interattivo?