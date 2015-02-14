// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function() {

	// use AJAX to submit the "request invitation" form
  $('#sign_in_user').submit(function() {

  	

    var email = $('form #user_email').val();

    $.ajax({
      type: "POST",
      url: "/users",
      //Allow for gmail style aliases (e.g. user+foo@example.com)
      data: {"user[email]": email},
      success: function(html, response) {
        $('#request-invite').html('<p>Your were subscribed</p>');
        //Not using the social media share modal, so yank that out
        //loadSocial();
      },
      error: function(xhr, textStatus, errorThrown, html) {
                $('#request-invite').html('<p>There is an error. Pls try again</p>');

            }
    });
    return false;
  });

});