package it.edu.iisgubbio.model;

public class Utente {
    private String nome;
    private String email;
    private String ruolo;
    
    public Utente() {
        this.nome = "";
        this.email = "";
        this.ruolo = "utente";
    }
    
    public String getNome() {
        return nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getRuolo() {
        return ruolo;
    }
    
    public void setRuolo(String ruolo) {
        this.ruolo = ruolo;
    }
    
    public boolean isAdmin() {
        return "admin".equals(ruolo);
    }
    
    public String getSaluto() {
        return "Benvenuto " + nome + "!";
    }
}