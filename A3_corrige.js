var _request = false;
var _fnCb = null;

// Attention : on ne peut faire qu'une seule requÃªte Ã  la fois

// TODO: offrir de l'aide en cas d'erreur
function ajax(oParams) {
    /*
    handler 'ajax' pour la fonction envoiRequete
    Il admettra un paramÃ¨tre sous forme de JSON
    Type & url seront facultatifs
    Les donnÃ©es seront passÃ©es par json Ã©galement, par exemple {''debutNom'':''T''} au lieu de Â«debutNom=TÂ».
    */

    var donnees = "";
    // donnee est maintenant un objet json
    // Ã  transformer en chaine de requete

    if (oParams.data != undefined) {
        for (nomPropriete in oParams.data) {
            donnees += "&" + nomPropriete
                + "=" + oParams.data[nomPropriete];
        }

        // chaine.substring(1) renvoie la chaine privÃ©e de son premier caractere
        donnees = donnees.substring(1);
        //alert(donnees);
    }

    if (oParams.type == undefined) oParams.type = "GET";
    if (oParams.callback == undefined) oParams.callback = function () {
    };

    envoiRequete(oParams.type, oParams.url, donnees, oParams.callback);
}

function envoiRequete(type, url, donnees, callback) {
    _request = new XMLHttpRequest();
    _fnCb = callback;

    if (type == 'GET') {
        _request.open("GET", url + "?" + donnees, true);
        donnees = null;
    } else {
        _request.open("POST", url, true);
        _request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        _request.setRequestHeader("Content-length", donnees.length);
        _request.setRequestHeader("Connection", "close");
    }

    _request.onreadystatechange = traiteReponse;
    _request.send(donnees);
}

function traiteReponse() {
    if (_request.readyState == 4) {
        if (_request.status == 200) {
            var donnee = _request.responseText;
            _fnCb(donnee);
        }
    }
}

console.log("Chargement librairie ajax ok");