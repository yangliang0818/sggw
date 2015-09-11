function gup(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(window.location.href);
    if (results == null) {
        return "";
    }
    else {
        //DS: escape / unescape is not UTF-8 compliant.
        //return unescape(results[1]);
        return decodeURIComponent(results[1]);
    }
}