<?php
	$redirect = "../presenca.php";
	////Faz a conexão com o banco
	$conecta = mysql_connect("mysql.weblink.com.br", "u348797896_fdias", "130392") or print (mysql_error()); 
	mysql_select_db("u348797896_casam", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$nome = $_POST["nomeConvidado"];
	$confirmacao = $_POST["tResposta"];
	$qnt = $_POST["tQnt"];
	$email = $_POST["email"];
	$telefone = $_POST["telefone"];
	$acompanhantes = $_POST["tAcompanhantes"];
	
	////escreve a query
	$query = "INSERT INTO `presenca` VALUES('$nome','$confirmacao','$qnt','$email','$telefone', '$acompanhantes');";
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	///fecha a conexão
	mysql_close($conecta); 
	
	header("location:$redirect");
?>