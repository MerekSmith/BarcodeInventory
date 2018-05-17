$(document).ready(function () {

	$("#itemForm").on("submit", function (event) {
		event.preventDefault();
	})

	$("body")
		.on('click', "#saveItem", function (event) {
			event.preventDefault();
			console.log("test 1");
			var itemData = {
				upc: $("#upc").val().trim(),
				model: $("#model").val().trim(),
				title: $("#title").val().trim(),
				category: $("#category").val().trim(),
				description: $("#exampleFormControlTextarea1").val().trim(),
				imageUpload: $("#imageUpload").val(),
			};
			$.ajax({
				method: "POST",
				url: "/api/item",
				data: itemData
			})
				.then(function (res) {

					console.log("test 2");
				});

		});
})