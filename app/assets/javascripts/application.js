// Sprockets README for details about supported directives.
// (https://github.com/sstephenson/sprockets#sprockets-directives)
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require underscore
//= require backbone
//= require raphael
//= require_tree ./greensock
//= require toastr
//
//= require_tree ./models
//= require_tree ./collections
//= require_tree ./views
//= require_tree ./routers
//= require_tree ../templates

//= require hex
//= require map
//= require space_opera

$(function() {
    toastr.options = {
  	                  "closeButton": false,
  	                  "debug": false,
  	                  "positionClass": "toast-top-right",
  	                  "onclick": null,
  	                  "showDuration": "300",
  	                  "hideDuration": "600",
  	                  "timeOut": "5000",
  	                  "extendedTimeOut": "1000",
  	                  "showEasing": "swing",
  	                  "hideEasing": "linear",
  	                  "showMethod": "fadeIn",
  	                  "hideMethod": "fadeOut"
  	              }
});