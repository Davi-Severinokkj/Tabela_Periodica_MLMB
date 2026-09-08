<?php

// Inclui o arquivo de conexão com o banco
include 'conexao.php';


// Pega o ID enviado pela URL
// Exemplo:
// buscar_elemento.php?id=1
$id = $_GET['id'];


// Cria o comando SQL
// Busca o elemento que possui esse ID
$sql = "SELECT * FROM elementos WHERE id = '$id'";


// Executa o comando SQL no banco
$resultado = $con->query($sql);


// Verifica se encontrou algum elemento
if ($resultado->num_rows > 0) {

    // Pega os dados da linha encontrada
    $linha = $resultado->fetch_assoc();

    // Converte os dados para JSON
    // e envia para o JavaScript
    echo json_encode($linha);

} else {

    // Caso não encontre nenhum elemento,
    // retorna um JSON de erro
    echo json_encode([
        "erro" => "Elemento não encontrado."
    ]);

}

?>