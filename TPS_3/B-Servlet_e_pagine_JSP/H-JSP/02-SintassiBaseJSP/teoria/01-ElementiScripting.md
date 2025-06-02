# Elementi di Scripting JSP

## Introduzione
Gli elementi di scripting sono componenti fondamentali di JSP che permettono di incorporare codice Java direttamente nelle pagine web. Ci sono tre tipi principali di elementi di scripting:

## 1. Scriptlet `<% %>`
Gli scriptlet permettono di inserire qualsiasi codice Java valido all'interno della pagina JSP.

### Sintassi
```jsp
<% 
    // Codice Java
    String nome = request.getParameter("nome");
    if(nome != null) {
        out.println("Benvenuto " + nome);
    }
%>
```

### Caratteristiche
- Può contenere qualsiasi codice Java valido
- Ha accesso agli oggetti impliciti JSP
- Il codice viene eseguito durante la fase di richiesta
- Non produce output diretto (usa out.println())

## 2. Espressioni `<%= %>`
Le espressioni JSP sono utilizzate per visualizzare valori direttamente nella pagina.

### Sintassi
```jsp
Benvenuto <%= nome %>
```

### Caratteristiche
- Valuta un'espressione Java
- Converte automaticamente il risultato in String
- Equivale a out.print()
- Non può contenere punti e virgola

## 3. Dichiarazioni `<%! %>`
Le dichiarazioni permettono di definire variabili e metodi a livello di classe.

### Sintassi
```jsp
<%! 
    private int contatore = 0;
    public String saluta(String nome) {
        return "Ciao " + nome;
    }
%>
```

### Caratteristiche
- Definisce membri della classe servlet
- Le variabili sono condivise tra tutte le richieste
- I metodi sono accessibili da tutta la pagina
- Utile per variabili di stato e utility methods

## Best Practices
1. **Minimizzare l'uso degli scriptlet**
   - Preferire JSTL e Expression Language
   - Separare la logica di business dal markup

2. **Usare le espressioni per output semplici**
   - Più leggibili e manutenibili
   - Evitare logica complessa nelle espressioni

3. **Limitare l'uso delle dichiarazioni**
   - Possono causare problemi di thread-safety
   - Preferire JavaBeans per la logica di business

## Esempi Pratici

### Combinazione di Elementi
```jsp
<%! private int visitatori = 0; %>

<% 
    visitatori++;
    String utente = request.getParameter("utente");
%>

Benvenuto <%= utente %>!
<br>
Sei il visitatore numero <%= visitatori %>
```

### Gestione Condizionale
```jsp
<% 
    String ruolo = session.getAttribute("ruolo");
    if(ruolo != null && ruolo.equals("admin")) {
%>
        <h2>Pannello Amministratore</h2>
<% 
    } else {
%>
        <h2>Accesso Negato</h2>
<% 
    }
%>
```

## Esercizi
1. Crea una pagina che utilizza tutti e tre i tipi di elementi di scripting
2. Implementa un contatore di visite usando una dichiarazione
3. Crea un form che processa input usando scriptlet

## Quiz
1. Quale elemento di scripting useresti per:
   - Definire un metodo utility?
   - Mostrare il valore di una variabile?
   - Implementare un ciclo for?

2. Quali sono le principali differenze tra scriptlet ed espressioni?

3. Quando è appropriato usare le dichiarazioni JSP?