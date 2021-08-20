$(function () {
    $("#get_role").click(function () {
        var type = type;
        $.ajax({
            type: "get",
            contentType: "application/json",
            url: "http://localhost:8080/geoserver/dy/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=dy%3A53fu_desj&maxFeatures=50&outputFormat=application%2Fjson",
            async: false,
            success: function (data,) {
                console.log(data);
                var item = data.features;
                console.log(item)

                var geometry = item[0].geometry;
                var coordinates = geometry.coordinates;


                var html_role = "";
                console.log(coordinates)
                for (var x = 0; x < coordinates.length; x++) {
                    for (var y = 0; y < coordinates[x].length; y++) {
                        var feature_fh = coordinates[x][y];
                        console.log(feature_fh)
                    }
                }
                for (var i = 0; i < item.length; i++) {

                    html_role += "<ul>" +
                        "<li>" + item[i].properties.户主 + "</li>"

                        +
                        "</ul>"
                    ;
                    console.log(html_role)

                }

                $("#contentRole").html(html_role);
            }
        })
    })
})
