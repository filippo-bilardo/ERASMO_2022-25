# Connection Pooling in JSP

## Cos'è il Connection Pooling?
Il connection pooling è una tecnica che mantiene un pool di connessioni al database riutilizzabili, migliorando significativamente le performance dell'applicazione.

## Vantaggi del Connection Pooling
1. **Migliori Performance**
   - Elimina l'overhead di creazione di nuove connessioni
   - Riutilizzo efficiente delle connessioni esistenti
   - Riduce il carico sul database

2. **Gestione Efficiente delle Risorse**
   - Limita il numero massimo di connessioni
   - Gestisce automaticamente le connessioni inattive
   - Ottimizza l'utilizzo della memoria

## Implementazione con Apache DBCP

### 1. Configurazione Maven/Gradle
```xml
<dependency>
    <groupId>org.apache.commons</groupId>
    <artifactId>commons-dbcp2</artifactId>
    <version>2.9.0</version>
</dependency>
```

### 2. Creazione del DataSource
```java
public class ConnectionPool {
    private static BasicDataSource dataSource;
    
    static {
        dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/database_name");
        dataSource.setUsername("user");
        dataSource.setPassword("password");
        
        // Configurazione del pool
        dataSource.setInitialSize(5);           // connessioni iniziali
        dataSource.setMaxTotal(20);             // massimo numero di connessioni
        dataSource.setMaxIdle(10);              // massimo numero di connessioni inattive
        dataSource.setMinIdle(5);               // minimo numero di connessioni inattive
        dataSource.setMaxWaitMillis(10000);     // tempo massimo di attesa
    }
    
    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }
}
```

### 3. Utilizzo nel Codice
```java
public class StudenteDAO {
    public List<Studente> getStudenti() throws SQLException {
        List<Studente> studenti = new ArrayList<>();
        String query = "SELECT * FROM studenti";
        
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Studente s = new Studente(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("cognome")
                );
                studenti.add(s);
            }
        }
        return studenti;
    }
}
```

## Configurazione in web.xml
```xml
<resource-ref>
    <description>DB Connection Pool</description>
    <res-ref-name>jdbc/MyDB</res-ref-name>
    <res-type>javax.sql.DataSource</res-type>
    <res-auth>Container</res-auth>
</resource-ref>
```

## Monitoraggio del Pool

### 1. Metriche Importanti
- Numero di connessioni attive
- Numero di connessioni inattive
- Tempo di attesa per una connessione
- Connessioni massime raggiunte

### 2. Logging delle Statistiche
```java
public class PoolStats {
    public static void printStats() {
        BasicDataSource bds = (BasicDataSource) dataSource;
        System.out.println("Active connections: " + bds.getNumActive());
        System.out.println("Idle connections: " + bds.getNumIdle());
    }
}
```

## Best Practices

1. **Dimensionamento del Pool**
   - Basare la dimensione sul carico previsto
   - Considerare le risorse del server
   - Monitorare e aggiustare secondo necessità

2. **Gestione delle Connessioni**
   - Sempre chiudere le connessioni in un blocco try-with-resources
   - Implementare timeout appropriati
   - Gestire correttamente le eccezioni

3. **Manutenzione**
   - Implementare test di validazione delle connessioni
   - Configurare il tempo massimo di vita di una connessione
   - Pianificare la manutenzione del pool

## Esercizi
1. Configurare un connection pool con DBCP
2. Implementare un sistema di monitoraggio
3. Ottimizzare i parametri del pool
4. Gestire scenari di carico elevato
5. Implementare il failover