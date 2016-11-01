<?php
	$redirect = "../home.php";
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("casamento", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$nome = $_POST["nomeConvidado"];
	$confirmacao = $_POST["tResposta"];
	$qnt = $_POST["tQnt"];
	$email = $_POST["email"];
	$ddd = $_POST["ddd"];
	$telefone = $_POST["telefone"];
	
	////escreve a query
	$query = "INSERT INTO `pessoas` VALUES('$nome','$confirmacao','$qnt','$email','$ddd','$telefone');"; 
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	///fecha a conexão
	mysql_close($conecta); 
	
	header("location:$redirect");
?>