# Configurazione dell'Ambiente di Sviluppo per JSP

## Installazione del JDK (Java Development Kit)

### Requisiti di Sistema
- Spazio su disco: minimo 2GB
- RAM: minimo 4GB consigliati
- Sistema operativo: Windows, Linux o macOS

### Procedura di Installazione
1. **Download del JDK**
   - Visitare il sito Oracle o OpenJDK
   - Scaricare la versione LTS più recente
   - Scegliere la versione appropriata per il sistema operativo

2. **Installazione**
   - Eseguire il file di installazione
   - Seguire la procedura guidata
   - Annotare il percorso di installazione

3. **Configurazione Variabili d'Ambiente**
   - Impostare JAVA_HOME
   - Aggiungere Java al PATH
   - Verificare l'installazione con `java -version`

## Setup di Apache Tomcat

### Scelta della Versione
- Tomcat 9.x per Java 8+
- Tomcat 10.x per Jakarta EE 9+
- Verificare la compatibilità con il JDK

### Installazione di Tomcat
1. **Download**
   - Scaricare da tomcat.apache.org
   - Scegliere il formato appropriato (zip/installer)

2. **Installazione**
   - Estrarre o installare Tomcat
   - Configurare la porta (default: 8080)
   - Impostare utenti amministrativi

3. **Verifica**
   - Avviare Tomcat
   - Accedere a http://localhost:8080
   - Testare la console di amministrazione

## Configurazione IDE

### Eclipse IDE
1. **Installazione Eclipse**
   - Scaricare Eclipse IDE for Enterprise Java Developers
   - Installare l'IDE
   - Configurare il workspace

2. **Configurazione per JSP**
   - Installare plugin Web Tools Platform
   - Configurare il server Tomcat
   - Impostare la prospettiva Java EE

### IntelliJ IDEA
1. **Setup Iniziale**
   - Installare IntelliJ IDEA Ultimate
   - Configurare il JDK
   - Attivare i plugin necessari

2. **Configurazione JSP**
   - Aggiungere il framework Web
   - Configurare Tomcat
   - Impostare i template JSP

## Quiz di Autovalutazione

1. Quale versione di Java è richiesta per Tomcat 9.x?
   - a) Java 6
   - b) Java 7
   - c) Java 8 o superiore
   - d) Java 11 o superiore

2. Quale porta utilizza Tomcat di default?
   - a) 80
   - b) 8080
   - c) 8000
   - d) 3000

3. Quale variabile d'ambiente è necessaria per Java?
   - a) JAVA_PATH
   - b) JAVA_HOME
   - c) JDK_PATH
   - d) JAVA_ROOT

4. Quale IDE non richiede una licenza commerciale per lo sviluppo JSP?
   - a) Eclipse
   - b) IntelliJ IDEA Ultimate
   - c) NetBeans
   - d) Visual Studio

## Best Practices

1. **Gestione Versioni**
   - Utilizzare versioni LTS
   - Mantenere aggiornati i software
   - Documentare le versioni utilizzate

2. **Sicurezza**
   - Modificare le password default
   - Configurare HTTPS
   - Limitare l'accesso amministrativo

3. **Performance**
   - Ottimizzare la JVM
   - Configurare il garbage collector
   - Monitorare l'uso delle risorse

## Tips & Tricks

1. **Sviluppo**
   - Utilizzare hot deployment
   - Configurare auto-build
   - Usare shortcut da tastiera

2. **Debug**
   - Configurare log appropriati
   - Utilizzare breakpoint
   - Monitorare la memoria

## Soluzioni Quiz
1. c) Java 8 o superiore
2. b) 8080
3. b) JAVA_HOME
4. a) Eclipse

## Esercizi Proposti

1. **Base**
   - Installare JDK e verificare la versione
   - Configurare le variabili d'ambiente
   - Avviare Tomcat e verificare il funzionamento

2. **Intermedio**
   - Configurare un IDE con supporto JSP
   - Creare un progetto web di test
   - Deployare un'applicazione di esempio

3. **Avanzato**
   - Configurare più istanze di Tomcat
   - Implementare HTTPS
   - Ottimizzare le impostazioni del server

---

### Navigazione
- [📑 Indice](<../../README.md>)
- [⬅️ Introduzione a JSP](<01-IntroduzioneJSP.md>)
- [➡️ Prima Applicazione JSP](<03-PrimaApplicazioneJSP.md>)