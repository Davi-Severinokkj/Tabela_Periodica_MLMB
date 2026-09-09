<?php

require("../includes/conexao.php");

$id = $_GET['id'] || null;

if (!$id) {
    echo json_encode([
        "erro" => "ID não informado"
    ]);
    exit;
}

$sql = "SELECT * FROM Elementos WHERE numero_atomico = ?";

$stmt = $conexao->prepare($sql);
$stmt->bind_param("i", $id);

$stmt->execute();

$result = $stmt->get_result();

if ($result->num_rows > 0) {

    $elemento = $result->fetch_assoc();

    echo json_encode($elemento);

} else {

    echo json_encode([
        "erro" => "Elemento não encontrado"
    ]);

}

?>