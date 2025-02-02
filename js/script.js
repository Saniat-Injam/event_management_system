function checkUsername(val) {
    var check = /^[a-z_0-9]+$/g;

    // if(!check.test(val)) {
    //     document.getElementById("checktext").innerHTML = "Only lowercase letters, underscore and numbers are allowed";
    //     document.getElementById("checktext").style.color = "red";
    //     document.getElementById("user_name").value = "";
    //
    // } else {
    //     document.getElementById("checktext").innerHTML = "";
    // }
    if (!check.test(val)) {
        $("#checktext").html("Only lowercase letters, underscore and numbers are allowed");
        $("#checktext").css("color", "red");
        $("#checktext").val("");
    } else {
        $("#checktext").html("");

    }

}

function checkUser(val) {
    $.ajax({
        url: "duplicateUsers.php",
        method: "POST",
        data: {
            user_name: val,
        },
        async: false,
    }).done(function(result) {

    })
}