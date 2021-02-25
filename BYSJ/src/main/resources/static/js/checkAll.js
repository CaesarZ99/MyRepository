function checkStatus() {
    var box = document.getElementsByName("delids");
    for (var i = 0; i < box.length; i++) {
        if (box[0].checked) {
            box[i].checked = true;
        } else {
            box[i].checked = false;
        }
    }
}
function checkC() {
    var box = document.getElementsByName("delids");
    var result = false;
    for (var i = 1; i < box.length; i++) {
        if (box[i].checked != true) {
            result = true;
        }
    }
    if (result) {
        box[0].checked = false;
    } else {
        box[0].checked = true;
    }
}