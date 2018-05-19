// When user clicks add-btn
$("#login").on("click", function(event) {
  event.preventDefault();

  // User Object
  var user = {
    userName: $("#username").val().trim(),
    password: $("#password").val().trim()
  };

  // Send an AJAX POST-request with jQuery
  $.post("login", user)
    // On success, run the following code
    .then(function(data) {
      console.log(data);
			window.location.href = "index";
    });

});