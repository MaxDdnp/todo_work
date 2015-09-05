// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery.validate
//= require jquery.validate.additional-methods
//= require turbolinks
//= require moment
//= require bootstrap-datetimepicker
//= require_tree .

$(document).ready(function () {
$("#new_task").validate({

rules: {
"task[name]": {required: true, minlength: 3}
}, 
messages: {
    "task[name]": "Please specify task name"},
    errorPlacement: function(error, element) {
    error.appendTo( $("label:first") );
}
});

$(".new_project").validate({

rules: {
"project[name]": {required: true, minlength: 3}
}, 
messages: {
    "project[name]": "Please specify project name"},
    errorPlacement: function(error, element) {
    error.appendTo( $("label:first") );
}
});

$(".edit_project").validate({

rules: {
"project[name]": {required: true, minlength: 3}
}, 
messages: {
    "project[name]": "Please specify project name"},
    errorPlacement: function(error, element) {
    error.appendTo( $("label:first") );
}
});

$(".edit_task").validate({

rules: {
"task[name]": {required: true, minlength: 3}
}, 
messages: {
    "task[name]": "Please specify task name"},
    errorPlacement: function(error, element) {
    error.appendTo( $("label:first") );
}
});


});
