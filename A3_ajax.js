


var request = false;

function envoiRequete(type, url, donnees, callback) {
    request = new XMLHttpRequest();

    if (type == 'GET') {
        request.open("GET", url + "?" + donnees, true);
        donnees = null;
    } else {
        request.open("POST", url, true);
        request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        request.setRequestHeader("Content-length", donnees.length);
        request.setRequestHeader("Connection", "close");
    }

    request.onreadystatechange = traiteReponse(request.responseText);
    request.send(donnees);
}

function traiteReponse(responseFromServer) {
    //alert(request.readyState);	// à décommenter
    if (request.readyState == 4) {
        if (request.status == 200) {
            if (responseFromServer == null){
                alert("une erreur s'est produite");
            }
            else{
                alert("Voici la réponse : " + responseFromServer);
            }
        }
    }
}

envoiRequete("GET", "A1_data.txt", null, traiteReponse(request.responseText));
