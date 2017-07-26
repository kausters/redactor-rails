var init_redactor = function(){
	var csrf_token = document.querySelector('meta[name=csrf-token]').getAttribute('content');
	var csrf_param = document.querySelector('meta[name=csrf-param]').getAttribute('content');

	var params;
	if (csrf_param !== undefined && csrf_token !== undefined) {
		params = csrf_param + "=" + encodeURIComponent(csrf_token);
	}

	$('.redactor').redactor({
		imageUpload: "/redactor_rails/pictures?" + params,
		imageGetJson: "/redactor_rails/pictures",
		fileUpload: "/redactor_rails/documents?" + params,
		fileGetJson: "/redactor_rails/documents",
		path: "/assets/redactor-rails",
		pastePlainText: true,
		buttons: ['formatting', '|', 'bold', 'italic', 'unorderedlist', 'orderedlist', 'horizontalrule', '|', 'link', 'image', 'video', 'file', '|', 'html']
	});
};

document.addEventListener("turbolinks:load", init_redactor);
