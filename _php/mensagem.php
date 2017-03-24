<?php
	$redirect = "../mensagens.php";
	////Faz a conexão com o banco
	$conecta = mysql_connect("mysql.weblink.com.br", "u348797896_fdias", "130392") or print (mysql_error()); 
	mysql_select_db("u348797896_casam", $conecta) or print(mysql_error());
	///////////////////////////////
	
	////Pega os dados do formulário
	$nome = $_POST["tNome"];
	$email = $_POST["tEmail"];
	$mensagem = $_POST["tMensagem"];
	
	echo "nome: $nome</br>email: $email</br>Mensagem: $mensagem</br>";
	
	////escreve a query
	$query = "INSERT INTO `mensagens` VALUES('$nome','$email','$mensagem', CURRENT_DATE);"; 
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	///fecha a conexão
	mysql_close($conecta); 
	
	header("location:$redirect");
?>