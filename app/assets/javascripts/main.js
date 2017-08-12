
$(document).ready(function (){
    $('#program .up').click(function(){
        if($('#program .up').text()=='Скрыть программу на каждый день'){
            $('#program .up').text('Отобразить  программу на каждый день');
            //$('#program .detail').animate( { height:"0px" },500);
            $('#program .detail').toggle();
            $('#program .block').toggle();

        }else{
            $('#program .up').text('Скрыть программу на каждый день')
            //$('#program .detail').animate( { height:"2512px" },500);
            $('#program .detail').toggle();
            $('#program .block').toggle();
        };



    });

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

    $('.fade').slick({
        infinite: true,
        speed: 2000,
        fade: true,
        cssEase: 'linear',
        adaptiveHeight: false,
        autoplay: true,
        autoplaySpeed: 7000,
        pauseOnHover: false,
        pauseOnFocus: false,
        arrows: false
    });
    $('.slaid').slick({

        infinite: true,
        speed: 2000,

        cssEase: 'linear',
        adaptiveHeight: false,
        autoplay: true,
        autoplaySpeed: 5000,
        pauseOnHover: true,
        pauseOnFocus: true,
        arrows: false,
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    adaptiveHeight: false
                }
            }

        ]


    });

    $("#light_gallery").lightGallery({
        selector:'.image',
        selectWithin: '.thumbs:not(.slick-cloned)',
        thumbnail: false,
        controls: false,
        getCaptionFromTitleOrAlt: false
    });


    $('.text').hover(function () {
        $(this).parent('.box').css('z-index','22');
        $(this).find('p').css('color','white');
        $(this).find('.text_all p').css('color','black');
        $(this).find('.text_all').fadeIn();
    }, function () {
        $(this).parent('.box').css('z-index','1');
        $(this).find('.text_all').fadeOut(0);
        $(this).find('p').css('color','black')
    })

    $(document).ready(function(){
        $("#gallery").unitegallery({
            tile_enable_textpanel: false,
            gallery_width:"100%",
            tile_border_color:"#7a7a7a",
            tile_outline_color:"#8B8B8B",

            tile_overlay_opacity:0.3,

            tile_image_effect_type:"sepia",
            tile_image_effect_reverse:true,

            lightbox_textpanel_title_color:"e5e5e5",
            tiles_col_width:230,
            tiles_space_between_cols:15
        });
    });

    if ($(window).width() > 1920) {
        $('header .slick-slide img').width('100%');
    } else {
        $('header .slick-slide img').width('auto');
    }

    AOS.init({
        easing: 'ease-in-out-sine',
        duration: 500
    });
});
$(window).resize(function() {
    if ($(window).width() > 1920) {
        $('.slick-slide img').width('100%');
    } else {
        $('.slick-slide img').width('auto');
    }
});
$(window).on("load",function(){
    $('header .line').fadeIn();
    $('header .fade').animate({opacity: 1},500);
});