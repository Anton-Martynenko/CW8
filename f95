function encode(str,key) {
    var output = '';
    var keyDict = {};
    for (var i = 0; i < key.length; i += 2) {
        keyDict[key[i].toUpperCase()] = key[i+1].toUpperCase();
        keyDict[key[i+1].toUpperCase()] = key[i].toUpperCase();
        keyDict[key[i]] = key[i+1];
        keyDict[key[i+1]] = key[i];
    }

    for (i = 0; i < str.length; i++) {
        if (str[i] === ' ') { output += ' ';
        } else if (!(keyDict[str[i]])) {
            output += str[i];
        }
        else {
            output += keyDict[str[i]];
        }
    }
    return output;
}

function decode(str,key) {
     var output = '';
    var keyDict = {};
    for (var i = 0; i < key.length; i += 2) {
        keyDict[key[i].toUpperCase()] = key[i+1].toUpperCase();
        keyDict[key[i+1].toUpperCase()] = key[i].toUpperCase();
        keyDict[key[i]] = key[i+1];
        keyDict[key[i+1]] = key[i];
    }

    for (i = 0; i < str.length; i++) {
        if (str[i] === ' ') { output += ' ';
        } else if (!(keyDict[str[i]])) {
            output += str[i];
        }
        else {
            output += keyDict[str[i]];
        }
    }
    return output;
}
