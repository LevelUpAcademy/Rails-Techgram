// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){

  $(".post").dblclick(function() {
    var post = {
      url: "/likes/create",
      method: "POST",
      data: {
        id_post: $(this).attr("idpost")
      }
    }
    $.ajax(post).then(function(data){
      $("div[idpost=" + data.id_post + "] .likes b").html((parseInt($("div[idpost=" + data.id_post + "] .likes b").html().split(" ")[0]) + 1) + " likes")
    })
  });






  $('#search_box').keyup(function(event){
    if (event.keyCode === 13) {
        window.location.href = '/pages/search_results/' + $(this).val()
    }
  })
})
