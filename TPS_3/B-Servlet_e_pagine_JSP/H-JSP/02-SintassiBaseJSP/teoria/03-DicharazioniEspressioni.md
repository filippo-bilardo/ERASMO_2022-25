# Dichiarazioni ed Espressioni in JSP

## Introduzione
Le dichiarazioni e le espressioni sono elementi fondamentali in JSP che permettono di definire variabili e metodi e di visualizzare valori dinamicamente nelle pagine web.

## Dichiarazioni JSP

### Sintassi e Utilizzo
Le dichiarazioni JSP utilizzano la sintassi `<%! ... %>` e permettono di definire variabili e metodi a livello di classe.

```jsp
<%! 
    // Variabili di istanza
    private int contatore = 0;
    private final String NOME_APP = "MyWebApp";
    
    // Metodi
    private String formattaData(Date data) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        return sdf.format(data);
    }
    
    // Getter e Setter
    public int getContatore() {
        return contatore;
    }
%>
```

### Caratteristiche delle Dichiarazioni
1. **Scope delle Variabili**
   - Le variabili dichiarate sono membri della classe servlet
   - Persistono tra le richieste
   - Condivise tra tutti gli utenti

2. **Metodi Dichiarati**
   - Accessibili da qualsiasi parte della pagina
   - Possono essere public, private o protected
   - Possono essere statici o di istanza

3. **Considerazioni sulla Thread-Safety**
   - Le variabili di istanza sono condivise
   - Necessario gestire la sincronizzazione
   - Evitare stato mutabile quando possibile

## Espressioni JSP

### Sintassi e Utilizzo
Le espressioni JSP utilizzano la sintassi `<%= ... %>` e servono per visualizzare valori.

```jsp
<h1>Benvenuto in <%= NOME_APP %></h1>
Visitatore numero: <%= ++contatore %>
Data attuale: <%= formattaData(new Date()) %>
```

### Caratteristiche delle Espressioni
1. **Valutazione**
   - Valutate ad ogni richiesta
   - Convertite automaticamente in String
   - Non possono contenere punti e virgola

2. **Tipi di Espressioni**
   - Variabili
   - Chiamate a metodi
   - Operazioni matematiche
   - Concatenazioni di stringhe

3. **Oggetti Impliciti**
   - Accesso a oggetti come request, session
   - Utilizzo di attributi di scope

## Esempi Pratici

### Contatore di Visite
```jsp
<%! 
    private int visite = 0;
    private synchronized int incrementaVisite() {
        return ++visite;
    }
%>

<p>Sei il visitatore numero: <%= incrementaVisite() %></p>
```

### Utility per Date
```jsp
<%! 
    private final SimpleDateFormat DATA_FORMATTER = 
        new SimpleDateFormat("dd MMMM yyyy");
    private final SimpleDateFormat ORA_FORMATTER = 
        new SimpleDateFormat("HH:mm:ss");
        
    private String getDataFormattata(Date data) {
        return DATA_FORMATTER.format(data);
    }
    
    private String getOraFormattata(Date data) {
        return ORA_FORMATTER.format(data);
    }
%>

<p>Data: <%= getDataFormattata(new Date()) %></p>
<p>Ora: <%= getOraFormattata(new Date()) %></p>
```

### Calcoli e Formattazione
```jsp
<%! 
    private double calcolaIVA(double importo) {
        return importo * 0.22;
    }
    
    private String formattaValuta(double importo) {
        return String.format("€ %.2f", importo);
    }
%>

<% double prezzo = 100.00; %>

<p>Prezzo: <%= formattaValuta(prezzo) %></p>
<p>IVA: <%= formattaValuta(calcolaIVA(prezzo)) %></p>
<p>Totale: <%= formattaValuta(prezzo + calcolaIVA(prezzo)) %></p>
```

## Best Practices

1. **Dichiarazioni**
   - Limitare l'uso di variabili di istanza
   - Preferire metodi utility statici
   - Documentare i metodi complessi

2. **Espressioni**
   - Mantenere le espressioni semplici
   - Evitare logica di business complessa
   - Usare metodi helper per la formattazione

3. **Thread-Safety**
   - Sincronizzare l'accesso ai dati condivisi
   - Evitare stato mutabile quando possibile
   - Utilizzare oggetti thread-safe

## Esercizi

1. Crea un contatore di visite thread-safe
2. Implementa utility per la formattazione di date e numeri
3. Sviluppa un calcolatore di prezzi con IVA

## Quiz

1. Qual è la differenza tra variabili dichiarate con <%! %> e <% %>?
2. Come si gestisce la thread-safety nelle dichiarazioni JSP?
3. Quando è appropriato usare espressioni invece di scriptlet?

## Conclusione
Le dichiarazioni e le espressioni JSP sono strumenti potenti per la creazione di pagine web dinamiche. Un uso appropriato di questi elementi, insieme alle best practices di programmazione, permette di sviluppare applicazioni web robuste e manutenibili.