<?php
	$redirect = "../home.php";
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("casamento", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$nome = $_POST["tNome"];
	$email = $_POST["tEmail"];
	$mensagem = $_POST["tMensagem"];
	
	echo "nome: $nome</br>email: $email</br>Mensagem: $mensagem</br>";
	
	////escreve a query
	$query = "INSERT INTO `mensagens2` VALUES('$nome','$email','$mensagem', CURRENT_DATE);"; 
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	///fecha a conexão
	mysql_close($conecta); 
	
	header("location:$redirect");
?>