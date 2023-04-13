function remove (string) {
  var arr = string.split(" ");
    for (var i=arr.length-1; i>=0; i--) {
        let num = 0;
        var pos = -1;
        while ((pos = arr[i].indexOf('!', pos + 1)) != -1) {
            num++;
        }
        if (num == 1) {
            arr.splice(i, 1);
        }
    }
    let answer = arr.join(' ')
    return answer;
}
