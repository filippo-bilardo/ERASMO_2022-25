<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dichiarazioni ed Espressioni JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f0f0f0;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            max-width: 800px;
            margin: 0 auto;
        }
        .example {
            background-color: #f8f9fa;
            padding: 15px;
            margin: 10px 0;
            border-radius: 4px;
        }
        .result {
            color: #28a745;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Dichiarazioni ed Espressioni in JSP</h1>
        
        <%! 
            // Dichiarazioni di variabili di istanza
            private int visitatori = 0;
            private final String NOME_APP = "Demo JSP";
            
            // Dichiarazione di un metodo per il calcolo del fattoriale
            public long calcolaFattoriale(int n) {
                if (n <= 1) return 1;
                return n * calcolaFattoriale(n - 1);
            }
            
            // Dichiarazione di un metodo per verificare se un numero è primo
            public boolean isPrimo(int numero) {
                if (numero <= 1) return false;
                for (int i = 2; i <= Math.sqrt(numero); i++) {
                    if (numero % i == 0) return false;
                }
                return true;
            }
        %>
        
        <div class="example">
            <h2>1. Utilizzo di Variabili di Istanza</h2>
            <p>Nome dell'applicazione: <span class="result"><%= NOME_APP %></span></p>
            <p>Numero di visitatori: <span class="result"><%= ++visitatori %></span></p>
        </div>
        
        <div class="example">
            <h2>2. Calcolo del Fattoriale</h2>
            <%
                int numero = 5;
                long risultato = calcolaFattoriale(numero);
            %>
            <p>Il fattoriale di <%= numero %> è: <span class="result"><%= risultato %></span></p>
        </div>
        
        <div class="example">
            <h2>3. Verifica Numeri Primi</h2>
            <p>Numeri primi da 1 a 20:</p>
            <p class="result">
            <%
                for(int i = 1; i <= 20; i++) {
                    if(isPrimo(i)) {
                        out.print(i + " ");
                    }
                }
            %>
            </p>
        </div>
        
        <div class="example">
            <h2>4. Espressioni con Operazioni Matematiche</h2>
            <%
                double num1 = 10.5;
                double num2 = 5.2;
            %>
            <p>Addizione: <%= num1 %> + <%= num2 %> = <span class="result"><%= num1 + num2 %></span></p>
            <p>Sottrazione: <%= num1 %> - <%= num2 %> = <span class="result"><%= num1 - num2 %></span></p>
            <p>Moltiplicazione: <%= num1 %> * <%= num2 %> = <span class="result"><%= num1 * num2 %></span></p>
            <p>Divisione: <%= num1 %> / <%= num2 %> = <span class="result"><%= num1 / num2 %></span></p>
        </div>
    </div>
</body>
</html>