function Accetta(codice) {
    
    xhttp = new XMLHttpRequest;
    richiesta = 'GestoreDocenti.ashx?codice=' + codice;
    xhttp.open("GET", richiesta, true);
    xhttp.send();

    alert('Accettazione effettuata, la pagina si aggiornerà automaticamente');
    window.location.reload();
}

