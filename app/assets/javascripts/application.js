//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require jQuery-Shadow/jquery.shadow/jquery.shadow.js
//= require ckeditor/init
//= require nprogress
//= require nprogress-turbolinks
//= require masonry/masonry.min
//= require masonry/jquery.event-drag
//= require masonry/jquery.imagesloaded.min
//= require masonry/jquery.infinitescroll.min
//= require masonry/modernizr-transitions
//= require masonry/box-maker
//= require masonry/jquery.loremimages.min
//= require isotope/jquery.isotope
//= require covervid/covervid.min.js
//= require videojs/dist/video-js/video.js
//= require GrindPlayer/index
//= require select2
//= require select2_locale_zh-CN
//= require jquery-ui
//= require_tree .


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
    $('.mini-block').shadow();
    $("select").select2();
    $("input.datepicker").each(function(input) {
        $(this).datepicker({
            dateFormat: "yy-mm-dd",
            altField: $(this).next()
        })

        // If you use i18n-js you can set the locale like that
        $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);
    })
});



//
//$(document).on("page:fetch", startSpinner);
//$(document).on("page:receive", stopSpinner);
//
//var startSpinner = function(){
//    console.log('startSpinner');
//}
//
//var stopSpinner = function(){
//    console.log('stopSpinner');
//}