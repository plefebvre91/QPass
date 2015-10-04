// ****************************
// Controller for the main view
// ****************************

// Update the size label after changing slider value
function updateSizeLabel(size) {
    textSize.text = sliderSize.value.toString() + " caractères";
}

// Generate a new password after clicking
function updatePassword(size) {

    // Available characters
    var dictionnary = new Array("0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z");

    // Generated password
    var psswd = "";

    // Builds a password
    var i = 0;
    for(i=0; i<size; i++) {
      psswd = psswd.concat(dictionnary[Math.floor(Math.random()*dictionnary.length)]);
    }

    // Updates view
    textPassword.text = psswd.toString();
}
