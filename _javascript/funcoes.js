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

/*contador de dias */
$(function () {
$('#dias').countdown('2017/06/17', function(event) {
  $(this).html(event.strftime('%D'));
});
});


/*faz troca de fotos da galeria */
var arrayImagens = [];
var arrayImagensIndex = 0;

////preenche o array de imagens
$(document).ready(function() {
  arrayImagens = ["foto01.jpg","foto02.jpg","foto03.jpg"];
});

//////troca a imagem automaticamente
function trocaImagem() {
  $("img#galeria").fadeOut(300, function() {
	arrayImagensIndex++;
    if(arrayImagensIndex == 3)
		arrayImagensIndex = 0;
	if(arrayImagensIndex == -1)
		arrayImagensIndex = 2;
    $("img#galeria").attr("src", "_imagens/"+arrayImagens[arrayImagensIndex]);
  });
  $("img#galeria").fadeIn(300);

}
//////troca imagem a cada 5 segundos
var intervalo = setInterval(trocaImagem, 5000);

////troca imagem quando clica nas setas///
$(function () {
  $("img#seta-esquerda").click(function () {
	arrayImagensIndex-=2;
	trocaImagem();
	clearInterval(intervalo);
    intervalo = setInterval(trocaImagem, 5000);
  });

  $("img#seta-direita").click(function () {
	trocaImagem();
	clearInterval(intervalo);
    intervalo = setInterval(trocaImagem, 5000);
  });
});
////////////////////////////////////////////
/*fim da galeria*/

//////Máscara do telefone
$(function() {
        $(".telefone").mask("(99) 9999-9999?9")
        .focusout(function (event) {
            var target, phone, element;  
            target = (event.currentTarget) ? event.currentTarget : event.srcElement;  
            phone = target.value.replace(/\D/g, '');
            element = $(target);  
            element.unmask();  
            if(phone.length > 10) {  
                element.mask("(99) 99999-999?9");  
            } else {  
                element.mask("(99) 9999-9999?9");  
            }  
})
});
////////////////////////////////

////confirmacao de presenca
function confirmarPresenca() {
	alert("Obrigado pela Confirmação!");
}
/////////////////

////confirmacao de presenca
function confirmarMensagem() {
	alert("Obrigado pela Mensagem!");
}
/////////////////