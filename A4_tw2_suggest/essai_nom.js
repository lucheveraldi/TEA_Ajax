var request = false;
var refCle = document.getElementById("nom_famille");
var divResponse = document.getElementById("reponse");


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

    request.onreadystatechange = callback;
    request.send(donnees);
}

function traiteReponse() {
    //alert(request.readyState);	// à décommenter
    if (request.readyState == 4) {
        if (request.status == 200) {
            reponse = request.responseText;
            var tabPrenoms = reponse.split('<br>');
            console.log(tabPrenoms);

            if (refCle.value.length > 0) {

                for (let i = 0; i < tabPrenoms.length; i++) {
                    var prenom = document.createElement("span");
                    prenom.innerHTML = tabPrenoms[i];

                    prenom.addEventListener("click", function () {
                        refCle.value = this.innerHTML;
                        console.log("on a cliqué");
                    })
                    divResponse.appendChild(prenom);

                }
            }
        }
    }
}

function envoyer() {

    setTimeout(function () {
        envoiRequete("GET", "data.php", "debutNom=" + refCle.value, traiteReponse);
    }, 2000);

    divResponse.innerHTML = null;
    var gif = document.getElementById("gif");
    gif.style.visibility = "visible";
    setTimeout(function () {
        gif.style.visibility = "hidden";
    }, 2000)
}

