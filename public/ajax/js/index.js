$(function () {

    reload = function (data) {
        var liste = $("#liste");
        var ul = $("<ul>");
        data.forEach(function (produit) {
            $("<li>", { text: produit.nom }).appendTo(ul);
            $("<li>", { text: produit.marque }).appendTo(ul);
            $("<li>", { text: produit.prix }).appendTo(ul);
        });
        liste.empty();
        liste.append(ul);
    };

    $.ajax({
        dataType: "json",
        url: "liste.php"
    }).done(function (data) {
        // setTimeout(function () { reload(data); }, 2000);
        reload(data);
    })

    $("form").on("submit", function (e) {
        e.preventDefault();
        var nom = $("input[name='nom']");
        var marque = $("input[name='marque']");
        var prix = $("input[name='prix']");
        var data = $(this).serialize();
        var form = $("form");
        $.ajax({
            dataType: "json",
            type: "POST",
            url: "save.php",
            data: data
        }).done(function (data) {
            form.trigger("reset");
            // setTimeout(function () { reload(data); }, 2000);
            reload(data)
        })
    })



})