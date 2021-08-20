let bool = true
let bool_layer = false
$(function () {

    $("#btn").click(function () {
        bool = !bool;
        console.log(bool);
        if (bool_layer == true) {
            bool_layer = !bool_layer;
            $('.c1_layer').hide();
            $('.c2_layer').hide();
        }

        if (bool == true && bool_layer == false) {
            $('.c1').show();
            /*$(this).val('关闭')*/
        } else if (bool == false) {
            $('.c1').hide();
            $('.c2').hide();
            /*$(this).val('显示')*/
        }

    })
    $('.c1 .plateMenu>div').click(function () {
        $('.c2').show();
    })
    $('.c2 .closeBtn').click(function () {
        $('.c2').hide();
    })
    $('.c1 .closeBtn').click(function () {
        bool = !bool;
        console.log(bool);
        $('.c1').hide();

    })
})
$(function () {
    $('.c1_layer').hide();
    $("#btn_layer").click(function () {
        bool_layer = !bool_layer;
        console.log(bool_layer);
        if (bool === true) {
            bool = !bool;
            $('.c1').hide();
            $('.c2').hide();
        }

        if (bool_layer === true && bool === false) {
            $('.c1_layer').show();
            /*$(this).val('关闭')*/
        } else if (bool_layer === false) {
            $('.c1_layer').hide();
            /*$(this).val('显示')*/
        }
    })
    /* $('.c1_layer .plateMenu>div').click(function(){
         $('.c2_layer').show();
     })*/
    /*  $('.c2_layer .closeBtn').click(function(){
          $('.c2_layer').hide();
      })*/
    $('.c1_layer .closeBtn').click(function () {
        bool_layer = !bool_layer;
        console.log(bool_layer);
        $('.c1_layer').hide();
        $("#c1_fh").hide();

    })
})
