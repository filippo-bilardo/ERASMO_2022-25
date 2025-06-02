# Operazioni CRUD in JSP

## Introduzione alle Operazioni CRUD
CRUD rappresenta le quattro operazioni fondamentali nella gestione dei dati:
- Create (Creazione)
- Read (Lettura)
- Update (Aggiornamento)
- Delete (Eliminazione)

## Implementazione delle Query

### 1. Create (INSERT)
```java
public class StudenteDAO {
    public void insertStudente(Studente studente) throws SQLException {
        String query = "INSERT INTO studenti (nome, cognome, email) VALUES (?, ?, ?)";
        
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            
            stmt.setString(1, studente.getNome());
            stmt.setString(2, studente.getCognome());
            stmt.setString(3, studente.getEmail());
            
            stmt.executeUpdate();
        }
    }
}
```

### 2. Read (SELECT)
```java
public Studente getStudente(int id) throws SQLException {
    String query = "SELECT * FROM studenti WHERE id = ?";
    
    try (Connection conn = ConnectionPool.getConnection();
         PreparedStatement stmt = conn.prepareStatement(query)) {
        
        stmt.setInt(1, id);
        
        try (ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                return new Studente(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("cognome"),
                    rs.getString("email")
                );
            }
        }
    }
    return null;
}
```

### 3. Update (UPDATE)
```java
public void updateStudente(Studente studente) throws SQLException {
    String query = "UPDATE studenti SET nome = ?, cognome = ?, email = ? WHERE id = ?";
    
    try (Connection conn = ConnectionPool.getConnection();
         PreparedStatement stmt = conn.prepareStatement(query)) {
        
        stmt.setString(1, studente.getNome());
        stmt.setString(2, studente.getCognome());
        stmt.setString(3, studente.getEmail());
        stmt.setInt(4, studente.getId());
        
        stmt.executeUpdate();
    }
}
```

### 4. Delete (DELETE)
```java
public void deleteStudente(int id) throws SQLException {
    String query = "DELETE FROM studenti WHERE id = ?";
    
    try (Connection conn = ConnectionPool.getConnection();
         PreparedStatement stmt = conn.prepareStatement(query)) {
        
        stmt.setInt(1, id);
        stmt.executeUpdate();
    }
}
```

## Gestione delle Transazioni

### Esempio di Transazione
```java
public void trasferisciCrediti(int studenteA, int studenteB, int crediti) throws SQLException {
    Connection conn = null;
    try {
        conn = ConnectionPool.getConnection();
        conn.setAutoCommit(false);
        
        // Sottrai crediti da studenteA
        String query1 = "UPDATE studenti SET crediti = crediti - ? WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query1)) {
            stmt.setInt(1, crediti);
            stmt.setInt(2, studenteA);
            stmt.executeUpdate();
        }
        
        // Aggiungi crediti a studenteB
        String query2 = "UPDATE studenti SET crediti = crediti + ? WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query2)) {
            stmt.setInt(1, crediti);
            stmt.setInt(2, studenteB);
            stmt.executeUpdate();
        }
        
        conn.commit();
    } catch (SQLException e) {
        if (conn != null) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                throw new SQLException("Errore durante il rollback", ex);
            }
        }
        throw e;
    } finally {
        if (conn != null) {
            try {
                conn.setAutoCommit(true);
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
```

## Best Practices

### 1. Gestione delle Query
- Utilizzare prepared statements
- Evitare concatenazione di stringhe
- Validare i parametri di input

### 2. Gestione delle Risorse
- Utilizzare try-with-resources
- Chiudere sempre le connessioni
- Gestire correttamente le eccezioni

### 3. Transazioni
- Usare transazioni per operazioni multiple
- Implementare il rollback
- Mantenere l'atomicità delle operazioni

## Esercizi
1. Implementare un CRUD completo
2. Gestire una transazione complessa
3. Ottimizzare le query
4. Implementare la paginazione
5. Gestire le relazioni tra tabelle