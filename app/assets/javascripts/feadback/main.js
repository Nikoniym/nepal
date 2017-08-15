
$(document).ready(function (){


    // $(".nav").on("click","a", function (event) {
    //     //отменяем стандартную обработку нажатия по ссылке
    //     event.preventDefault();
    //
    //     //забираем идентификатор бока с атрибута href
    //     var id  = $(this).attr('href'),
    //
    //         //узнаем высоту от начала страницы до блока на который ссылается якорь
    //         top = ($(id).offset().top)-50;
    //
    //     //анимируем переход на расстояние - top за 1500 мс
    //     $('body,html').animate({scrollTop: top}, 1000);
    // });









    AOS.init({
        easing: 'ease-in-out-sine',
        duration: 500
    });

    $(".up_window").on("click", function (event) {
        //отменяем стандартную обработку нажатия по ссылке
        event.preventDefault();

        //забираем идентификатор бока с атрибута href

        //узнаем высоту от начала страницы до блока на который ссылается якорь


        //анимируем переход на расстояние - top за 1500 мс
        $('body,html').animate({scrollTop: 0}, 1000);
    });

});


$(window).scroll(function(){
    var $menuUp = $(".up_window");

    if ( $(this).scrollTop() > 700 ){
        $menuUp.css("opacity","1");
        $menuUp.css("bottom","108px");

    } else  {
        $menuUp.css("bottom","-50px");
        $menuUp.css("opacity","0");
    }
});