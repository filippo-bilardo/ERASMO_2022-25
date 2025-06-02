# Esercitazione 1: Introduzione a JSP e Configurazione dell'Ambiente

## Obiettivi
In questa prima esercitazione imparerai:
- Cos'è JSP e come si integra con Java EE
- Come configurare l'ambiente di sviluppo
- Come creare e eseguire la tua prima applicazione JSP

## Indice degli Argomenti Teorici
1. [Introduzione a JSP](teoria/01-IntroduzioneJSP.md)
   - Cos'è JSP
   - Vantaggi e svantaggi
   - Architettura JSP

2. [Ambiente di Sviluppo](teoria/02-AmbienteSviluppo.md)
   - Installazione JDK
   - Setup di Apache Tomcat
   - Configurazione IDE

3. [Prima Applicazione JSP](teoria/03-PrimaApplicazioneJSP.md)
   - Struttura di base
   - Ciclo di vita JSP
   - Deployment su Tomcat

## Esercitazione Pratica

### Obiettivo
Creare una semplice applicazione JSP che mostri un messaggio di benvenuto e la data corrente.

### Passaggi
1. Configurare l'ambiente di sviluppo
2. Creare un nuovo progetto web
3. Implementare la pagina JSP
4. Deployare e testare l'applicazione

### Codice di Esempio
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <title>Prima Applicazione JSP</title>
</head>
<body>
    <h1>Benvenuto in JSP!</h1>
    <p>Data e ora attuali: <%= new Date() %></p>
</body>
</html>
```

## Quiz di Autovalutazione

1. Qual è il principale vantaggio di JSP rispetto ai servlet?
   - a) Migliori performance
   - b) Separazione più chiara tra presentazione e logica
   - c) Minor consumo di memoria
   - d) Supporto multithread

2. Quale container è necessario per eseguire applicazioni JSP?
   - a) JVM
   - b) Apache HTTP Server
   - c) Tomcat
   - d) Node.js

3. Quale tag JSP viene utilizzato per includere codice Java?
   - a) <% %>
   - b) <?php ?>
   - c) {{ }}
   - d) [[ ]]

4. Qual è l'estensione corretta per i file JSP?
   - a) .jsp
   - b) .java
   - c) .html
   - d) .jsp.java

## Esercizi Proposti

1. **Base**: Modifica l'applicazione di esempio per mostrare anche il tuo nome e cognome.

2. **Intermedio**: Aggiungi un form HTML che chieda il nome all'utente e mostri un messaggio di benvenuto personalizzato.

3. **Avanzato**: Crea una pagina JSP che mostri diverse informazioni di sistema (versione Java, sistema operativo, ecc.).

## Soluzioni Quiz
1. b) Separazione più chiara tra presentazione e logica
2. c) Tomcat
3. a) <% %>
4. a) .jsp

## Best Practices
- Separare sempre il codice Java dalla presentazione HTML
- Utilizzare le direttive appropriate per l'encoding e il tipo di contenuto
- Commentare adeguatamente il codice
- Gestire correttamente le eccezioni

## Tips & Tricks
- Usa l'autocompletamento dell'IDE per velocizzare lo sviluppo
- Configura il server in modalità debug per facilitare il troubleshooting
- Utilizza il plugin browser appropriato per visualizzare il source JSP
- Mantieni un log degli errori per il debugging

---

### Navigazione
- [📑 Indice](<../README.md>)
- [➡️ Sintassi Base JSP](<../02-SintassiBaseJSP/README.md>)