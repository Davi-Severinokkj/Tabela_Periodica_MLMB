<?php

require("../includes/conexao.php");

header("Content-Type: application/json; charset=UTF-8");

$id = $_GET['id'] ?? null;

if (!$id) {

    echo json_encode([
        "erro" => "ID não informado"
    ]);

    exit;
}

$sql = "SELECT * FROM elementos WHERE numero_atomico = ?";

$stmt = $conexao->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();

$result = $stmt->get_result();

if ($result->num_rows > 0) {

    echo json_encode($result->fetch_assoc());

} else {

    echo json_encode([
        "erro" => "Elemento não encontrado"
    ]);

}

$stmt->close();
$conexao->close();

?>