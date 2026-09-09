<?php

try {
    $conexao = mysqli_connect("localhost", "root", "Seemg@1222017", "tabela_periodica");
} catch (mysqli_sql_exception $e) {
    echo "Erro: " . $e->getMessage();
}
