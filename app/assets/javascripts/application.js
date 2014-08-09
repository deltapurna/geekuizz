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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(function(){
  $('#submit-answer').on('ajax:complete', function(event, xhr, status) {
    result_node = $('#result');
    result = xhr.responseText;
    result_node.html(result);
    if(result == 'Correct!') {
      result_node.removeClass('wrong');
      result_node.addClass('correct');
    } else {
      result_node.removeClass('correct');
      result_node.addClass('wrong');
    }
  });
})
