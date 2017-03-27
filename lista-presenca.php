<!DOCTYPE html>
<html>
	<head>
		<title>Lista de presença</title>
	</head>
	<body>
		<?php
			////Faz a conexão com o banco
			$conecta = mysql_connect("mysql.weblink.com.br", "u348797896_fdias", "130392") or print (mysql_error()); 
			mysql_select_db("u348797896_casam", $conecta) or print(mysql_error()); 
			///////////////////////////////
			
			////escreve a query
			$query = "SELECT `nome`, `confirmacao`, `adultos` FROM `presenca`;";
			////executa a query no banco
			$result = mysql_query($query, $conecta);

			/* Escreve resultados até que não haja mais linhas na tabela */ 
			echo "<table>
					<thead>
						<th>Nome</th>
						<th>Confirmacao</th>
						<th>Adultos</th>
					</thead>";
				
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr>
							<td>$consulta[nome]</td>
							<td>$consulta[confirmacao]</td>
							<td>$consulta[adultos]</td>
						</tr>";
				} 
				echo "</table>";
				////////////////////////////			
			///fecha a conexão
			mysql_close($conecta); 
			
		?>
	</body>
</html>