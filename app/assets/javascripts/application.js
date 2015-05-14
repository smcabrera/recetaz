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
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(".ingredient-amount-field").change(function(){
  var ri_id = $(this).data('id')
  var recipe_id = $(this).data('recipe');

  console.log("I've just been interacted with!")
  data = {
    amount : $(this).val()
  }

  $.post("/recipes/" + recipe_id + "/recipe_ingredients/" + ri_id, data, function(data){
     // Plus create the route and controller action for creating a recipe
  });

});


