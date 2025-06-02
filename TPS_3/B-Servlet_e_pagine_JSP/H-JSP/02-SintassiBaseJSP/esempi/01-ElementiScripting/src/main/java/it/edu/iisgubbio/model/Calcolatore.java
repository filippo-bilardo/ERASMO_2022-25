package it.edu.iisgubbio.model;

public class Calcolatore {
    private int numero1;
    private int numero2;
    
    public Calcolatore() {
        this.numero1 = 0;
        this.numero2 = 0;
    }
    
    public void setNumero1(int numero1) {
        this.numero1 = numero1;
    }
    
    public void setNumero2(int numero2) {
        this.numero2 = numero2;
    }
    
    public int somma() {
        return numero1 + numero2;
    }
    
    public int sottrazione() {
        return numero1 - numero2;
    }
    
    public int moltiplicazione() {
        return numero1 * numero2;
    }
    
    public double divisione() {
        if(numero2 == 0) {
            throw new ArithmeticException("Divisione per zero non consentita");
        }
        return (double) numero1 / numero2;
    }
}