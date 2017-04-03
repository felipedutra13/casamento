<!DOCTYPE html>
<html>
	<head lang="pt-br">
		<meta charset="utf-8"/>
		<title>Lista de presença</title>
	</head>
	<body>
		<?php
			////////Dados do login//////////
			$usuario = isset($_POST["cUsuario"])?$_POST["cUsuario"]:"vazio";
			$senha = isset($_POST["cSenha"])?$_POST["cSenha"]:"vazio";
			
			if($usuario == "leticia" && $senha == "180588")
			{
			///////////////////////////////
			////Faz a conexão com o banco
			$conecta = mysql_connect("mysql.weblink.com.br", "u348797896_fdias", "130392") or print (mysql_error()); 
			mysql_select_db("u348797896_casam", $conecta) or print(mysql_error()); 
			///////////////////////////////
			
			////escreve a query
			$query = "SELECT `nome`, `confirmacao`, `adultos`, `acompanhantes` FROM `presenca`;";
			////executa a query no banco
			$result = mysql_query($query, $conecta);

			/* Escreve resultados até que não haja mais linhas na tabela */ 
			echo "<table>
					<thead>
						<th>Nome</th>
						<th>Confirmacao</th>
						<th>Adultos</th>
						<th>Acompanhantes</th>
					</thead>";
				
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr>
							<td>$consulta[nome]</td>
							<td>$consulta[confirmacao]</td>
							<td>$consulta[adultos]</td>
							<td>$consulta[acompanhantes]</td>
						</tr>";
				} 
				echo "</table>";
				////////////////////////////			
			///fecha a conexão
			mysql_close($conecta); 
			}
			else {
				echo "Usuário e/ou senha inválidos!";
			}
			
		?>
	</body>
</html>