$(document).ready(function () {
    $.ajax({
        url : "FilterController",
        data:{op:"load"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data);
        }
    });
    
    $('#charger').click(function(){
         $.ajax({
            url : "FilterController",
            data:{op:"load"},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplir(data);
            }
        });
    });
     
    $('#marque').change(function(){
        var marque = $('#marque').val();
        $.ajax({
            url : "FilterController",
            data:{op:"mPm", marque:marque},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplir(data);
            }
        });
    });
    
    $('#chercher').click(function(){
        var date1 = $('#dateAchat1').val();
        var date2 = $('#dateAchat2').val();
        $.ajax({
            url : "FilterController",
            data:{op:"mbtd", dateAchat1:date1,dateAchat2:date2},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplir(data);
            }
        });
    });

    function remplir(data) {
        var ligne = "";
        for (var i = 0; i < data.length; i++) {
            ligne += "<tr><td>" + data[i].id + "</td><td>" + data[i].reference + "</td><td>" + data[i].dateAchat + "</td><td>" + data[i].prix + "</td></tr>";
        }
        $("#content").html(ligne);
    }
});


