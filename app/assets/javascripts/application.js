// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
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