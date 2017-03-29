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


////////////Nome  dos acompanhantes///////
var acompanhantesAparecem = false;
$(function () {
	$("#cQnt").on("change", function () {
		var acompanhantes = $("#cQnt").val();
		if(acompanhantes > 1 && !acompanhantesAparecem) {
			//$("#cAcompanhantes").prop('required',true);
			$("#bloco-confirmacao").append("<textarea cols=\"59\" rows=\"10\" id=\"cAcompanhantes\" name=\"tAcompanhantes\" placeholder=\"Nome dos Acompanhantes\" required></textarea>");
			acompanhantesAparecem = true;
		}
		else if (acompanhantes == 1){
			acompanhantesAparecem = false;
			//$("#cAcompanhantes").prop('required',false);
			$("#cAcompanhantes").remove();
		}
	});
});
/////////////////////////////////////////

