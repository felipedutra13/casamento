var imagemVisible = 1;
var delay = 6000;
var intervalo = setInterval(trocaFoto, delay);

$(function () {
	$("#slideshow img").hide();
	$("#slideshow img:first-child").show();
	$("#pagination li:first a").addClass("active");
});

////troca foto automaticamente
function trocaFoto () {
	$("#slideshow img:nth-child("+imagemVisible+")").fadeOut(300, function() {
		$("#pagination li:nth-child("+imagemVisible+") a").removeClass("active");
		imagemVisible++;
		if(imagemVisible == 24)
			imagemVisible = 1;
		$("#slideshow img:nth-child("+imagemVisible+")").fadeIn(300);
		$("#pagination li:nth-child("+imagemVisible+") a").addClass("active");
		
	});	
}

$(function () {
	$("#pagination li a").click(function () {
		clearInterval(intervalo);
		var indexImagem = $(this).parent().index()+1;
		$("#slideshow img:nth-child("+imagemVisible+")").fadeOut(300, function() {
			$("#pagination li:nth-child("+imagemVisible+") a").removeClass("active");
			imagemVisible = indexImagem;
			$("#slideshow img:nth-child("+imagemVisible+")").fadeIn(300);
			$("#pagination li:nth-child("+imagemVisible+") a").addClass("active");
		});	
		intervalo = setInterval(trocaFoto, delay);
	});
});



