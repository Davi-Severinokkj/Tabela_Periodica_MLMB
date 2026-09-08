<?php

$con = new mysqli(
    "localhost",
    "root",
    "",
    "tabela_periodica"
);

if($con->connect_error){

    die("Erro de conexão");

}

?>