# Introduzione a JDBC e JSP

## Cos'è JDBC?
JDBC (Java Database Connectivity) è un'API Java che permette l'accesso a database relazionali. È il ponte tra le applicazioni Java/JSP e i database.

## Configurazione JDBC

### 1. Driver JDBC
```java
Class.forName("com.mysql.jdbc.Driver");
```

### 2. Stringa di Connessione
```java
String url = "jdbc:mysql://localhost:3306/database_name";
String username = "user";
String password = "password";
```

### 3. Stabilire una Connessione
```java
Connection conn = DriverManager.getConnection(url, username, password);
```

## Pattern DAO
Il Data Access Object (DAO) è un pattern che separa la logica di accesso ai dati dalla logica di business.

### Esempio di DAO
```java
public class StudenteDAO {
    private Connection conn;
    
    public StudenteDAO(Connection conn) {
        this.conn = conn;
    }
    
    public Studente getStudente(int id) throws SQLException {
        String query = "SELECT * FROM studenti WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Studente(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("cognome")
                );
            }
        }
        return null;
    }
}
```

## Best Practices per la Sicurezza

### 1. Prepared Statements
- Prevengono SQL Injection
- Migliorano le performance
- Facilitano la gestione dei parametri

```java
String query = "INSERT INTO studenti (nome, cognome) VALUES (?, ?)";
PreparedStatement stmt = conn.prepareStatement(query);
stmt.setString(1, nome);
stmt.setString(2, cognome);
```

### 2. Gestione delle Risorse
```java
try (Connection conn = getConnection();
     PreparedStatement stmt = conn.prepareStatement(query)) {
    // Operazioni sul database
} catch (SQLException e) {
    // Gestione errori
}
```

### 3. Connection Pooling
- Riutilizzo delle connessioni
- Migliori performance
- Gestione efficiente delle risorse

## Esempio Completo
```jsp
<%@ page import="java.sql.*" %>
<%
    String dbURL = "jdbc:mysql://localhost:3306/scuola";
    String username = "user";
    String password = "password";
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, username, password);
        
        String query = "SELECT * FROM studenti";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);
%>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Cognome</th>
            </tr>
<%
        while(rs.next()) {
%>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("nome") %></td>
                <td><%= rs.getString("cognome") %></td>
            </tr>
<%
        }
%>
        </table>
<%
        rs.close();
        stmt.close();
        conn.close();
    } catch(Exception e) {
        e.printStackTrace();
    }
%>
```

## Esercizi Pratici
1. Creare una connessione al database
2. Implementare un DAO per una tabella
3. Eseguire query con prepared statements
4. Gestire le transazioni
5. Implementare il connection pooling