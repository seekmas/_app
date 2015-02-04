//= require jquery
//= require jquery.turbolinks
//= require turbolinks
//= require bootstrap-sprockets
//= require jQuery-Shadow/jquery.shadow/jquery.shadow.js
//= require ckeditor/init
//= require select2
//= require nprogress
//= require nprogress-turbolinks
//= require masonry/masonry.min
//= require masonry/jquery.infinitescroll.min
//= require isotope/jquery.isotope

//= require socket.io
//= require lazyload/index
//= require cover-flow/dist/coverflow.min



NProgress.configure({
    showSpinner: true,
    ease: 'ease',
    speed: 1000
});

$(function(){
    $('.navbar').shadow();
    $('.thumbnail').shadow();
    $('.panel').shadow();
    $('.thumbnail_cover').shadow();
    $('.coverflow').shadow();
    $('.mini-block').shadow();
    $("select").select2();

    //$("input.datepicker").each(function(input) {
    //    $(this).datepicker({
    //        dateFormat: "yy-mm-dd",
    //        altField: $(this).next()
    //    })
    //
    //    // If you use i18n-js you can set the locale like that
    //    $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);
    //})
    $("img").lazyload();
});

