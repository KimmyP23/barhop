$(document).on("turbolinks:load", function(){
  clickAddBarListener();
});

var clickAddBarListener = function(){
  $('#add-bar-link').on("ajax:success", function(event, response){
    $('#form-holder').append(response);
  });
};
