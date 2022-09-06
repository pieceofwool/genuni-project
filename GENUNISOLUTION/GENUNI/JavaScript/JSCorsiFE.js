//funzione per centrare il popup di chrome

const popupCenter = ({ url, title, w, h }) => {
    // Fixes dual-screen position                             Most browsers      Firefox
    const dualScreenLeft = window.screenLeft !== undefined ? window.screenLeft : window.screenX;
    const dualScreenTop = window.screenTop !== undefined ? window.screenTop : window.screenY;

    const width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
    const height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

    const systemZoom = width / window.screen.availWidth;
    const left = (width - w) / 2 / systemZoom + dualScreenLeft
    const top = (height - h) / 2 / systemZoom + dualScreenTop
    const newWindow = window.open(url, title,
        `
      scrollbars=yes,
      width=${w / systemZoom}, 
      height=${h / systemZoom}, 
      top=${top}, 
      left=${left}
      `
    )

    if (window.focus) newWindow.focus();
}

//funzione per reindirizzamento
function Iscrizione(session) {

    if (session === 'S') {
        location.assign('http://localhost:58243/BEStudenti/SituazioneCorsi.aspx');
    }
    else {
        location.assign('http://localhost:58243/Login.aspx');
    }

}   

//funzione per gestore

function Gestore(codice) {
    
    url = 'http://localhost:58243/GestoreCorsi.ashx';
    //if (window.XMLHttpRequest) {
    //    xmlhttp = new XMLHttpRequest();
    //} else {
    //    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    //}

    //xmlhttp.onreadystatechange = function () {
    //    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
    //        document.getElementById(elementid).innerHTML = xmlhttp.responseText;
    //    }
    //}
    //xmlhttp.open("GET", url + str, true);
    //xmlhttp.send();

    email = document.getElementById('txtEmail' + codice).value
    newsletter = document.getElementById('cbxNewsletter' + codice).checked
    richiesta = 'GestoreCorsi.ashx?codice=' + codice + '&email=' + email + '&bit=' + newsletter
    xhttp = new XMLHttpRequest;
    xhttp.open("GET", richiesta, true);
    xhttp.send();

    alert('Preiscrizione effettuata');

    document.getElementById('txtEmail' + codice).value = "";
    document.getElementById('cbxNewsletter' + codice).checked = false;

    //document.getElementById(elementid).innerHTML = xhttp.responseText;

}