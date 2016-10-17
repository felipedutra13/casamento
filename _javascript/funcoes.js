$(function () {
	var nav = $('#menu');   
	$(window).scroll(function () { 
	if ($(this).scrollTop() > 401) { 
		nav.addClass("menu-fixo"); 
	} else { 
		nav.removeClass("menu-fixo"); 
	} 
	}); 
});

$(function () {
	$('#menu li').click(function () {
		$(this).addClass("preencher-fundo");
	});
});