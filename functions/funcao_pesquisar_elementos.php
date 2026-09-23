<?php

$pesquisa = trim($_GET["search"]);

$pesquisar = "
    SELECT *
    FROM elementos
    WHERE nome LIKE ?
       OR simbolo = ?
       OR numero_atomico = ?
";

$stmt = $conexao->prepare($pesquisar);

$termo = "%" . $pesquisa . "%";

$stmt->bind_param("ssi", $termo, $pesquisa, $pesquisa);

$stmt->execute();

$result = $stmt->get_result();

$resultados = [];

while ($row = $result->fetch_assoc()) {
    $resultados[] = $row;
}