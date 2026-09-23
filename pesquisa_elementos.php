<style>

    .pesquisa_output {
        width: min(1100px, calc(100% - 40px));
        margin: 40px auto;
        padding: 30px;
        background: linear-gradient(310deg, #211D21 20%, #211D21 45%, #511c48 100%);
        border-radius: 24px;
        color: #fff;
        box-sizing: border-box;
    }


    /* =========================
       TOPO
       ========================= */

    .pesquisa-topo {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 20px;
        margin-bottom: 25px;
    }

    .pesquisa-topo h1 {
        margin: 0;
        font-size: 1.8rem;
    }

    .pesquisa-topo p {
        margin: 5px 0 0;
        opacity: 0.85;
    }


    /* =========================
       BOTÃO VOLTAR
       ========================= */

    .voltar {
        display: inline-flex;
        align-items: center;
        justify-content: center;

        padding: 10px 18px;

        border: none;
        border-radius: 10px;

        background: #8B2F7A;
        color: #fff;

        font-size: 0.9rem;
        font-weight: 600;

        cursor: pointer;

        transition: 0.2s ease;
    }

    .voltar:hover {
        background: #3925ad;
        transform: translateY(-1px);
    }

    .voltar:active {
        transform: translateY(0);
    }


    /* =========================
       CARD PRINCIPAL
       ========================= */

    .pesquisa_output_elemento {
        background: #fff;
        color: #222;

        padding: 80px;

        border-radius: 20px;

        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.12);

        box-sizing: border-box;
        margin-bottom: 50px;
    }


    /* =========================
       CABEÇALHO DO ELEMENTO
       ========================= */

    .pesquisa-cabecalho {
        display: flex;
        align-items: center;
        gap: 25px;

        padding-bottom: 30px;
        margin-bottom: 30px;

        border-bottom: 2px solid #eee;
    }

    .simbolo-pesquisa {
        width: 90px;
        height: 90px;

        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;

        flex-shrink: 0;

        background: #8B2F7A;
        color: #fff;

        border-radius: 16px;
    }

    .simbolo-pesquisa strong {
        font-size: 2rem;
        line-height: 1;
    }

    .simbolo-pesquisa span {
        margin-top: 7px;
        font-size: 0.8rem;
        opacity: 0.9;
    }

    .nome-pesquisa h2 {
        margin: 0 0 7px;

        font-size: 2rem;
        color: #222;
    }

    .nome-pesquisa p {
        margin: 0;

        color: #6A5ACD;
        font-weight: 600;
    }


    /* =========================
       SEÇÕES
       ========================= */

    .secao-pesquisa {
        margin-bottom: 30px;
    }

    .secao-pesquisa:last-child {
        margin-bottom: 0;
    }

    .secao-pesquisa h3 {
        margin: 0 0 15px;

        color: #6A5ACD;

        font-size: 1.2rem;
        font-weight: 700;
    }


    /* =========================
       GRID DAS INFORMAÇÕES
       ========================= */

    .grid-pesquisa {
        display: grid;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 12px;
    }

    .informacao-pesquisa {
        display: flex;
        flex-direction: column;
        gap: 6px;

        padding: 15px 17px;

        background: #f7f7fb;

        border: 1px solid #e8e6f5;
        border-radius: 12px;

        box-sizing: border-box;
    }

    .informacao-pesquisa span {
        font-size: 0.82rem;
        color: #777;
    }

    .informacao-pesquisa strong {
        font-size: 1rem;
        color: #222;
        word-break: break-word;
    }

    /* =========================
           MENSAGEM DE ERRO
           ========================= */
    .mensagem-erro {
        width: 90%;
        max-width: 700px;
        margin: 80px auto;
        padding: 40px;
        text-align: center;
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
    }

    .mensagem-erro h1 {
        color: #8B2F7A;
        margin-bottom: 15px;
    }

    .mensagem-erro p {
        color: #555;
        margin-bottom: 25px;
    }

    .mensagem-erro a {
        display: inline-block;
        padding: 10px 20px;
        background: #8B2F7A;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        transition: 0.3s;
    }

    .mensagem-erro a:hover{
        transform: translateY(-1px);
        box-shadow: 0px 0px 10px #6A5ACD;
        transition: 0.3s;
    }

    /* =========================
       RESPONSIVIDADE
       ========================= */

    @media (max-width: 768px) {
        .pesquisa_output_elemento {
            padding: 30px;
            border-radius: 16px;
        }
    }

    @media (max-width: 700px) {

        .pesquisa_output {
            width: calc(100% - 24px);
            margin: 20px auto;
            padding: 18px;
            border-radius: 18px;
        }

        .pesquisa-topo {
            flex-direction: column;
            align-items: stretch;
        }

        .pesquisa-topo h1 {
            font-size: 1.4rem;
        }

        .voltar {
            width: 100%;
        }

        .pesquisa_output_elemento {
            padding: 20px;
            border-radius: 16px;
        }

        .pesquisa-cabecalho {
            gap: 15px;
            padding-bottom: 20px;
            margin-bottom: 20px;
        }

        .simbolo-pesquisa {
            width: 70px;
            height: 70px;
            border-radius: 12px;
        }

        .simbolo-pesquisa strong {
            font-size: 1.5rem;
        }

        .nome-pesquisa h2 {
            font-size: 1.5rem;
        }

        .grid-pesquisa {
            grid-template-columns: 1fr;
        }

    }


    @media (max-width: 400px) {

        .pesquisa_output {
            width: calc(100% - 16px);
            padding: 12px;
        }

        .pesquisa_output_elemento {
            padding: 15px;
        }

        .pesquisa-cabecalho {
            align-items: flex-start;
        }

        .simbolo-pesquisa {
            width: 60px;
            height: 60px;
        }

        .simbolo-pesquisa strong {
            font-size: 1.3rem;
        }

        .nome-pesquisa h2 {
            font-size: 1.3rem;
        }

    }
</style>


<?php

include("includes/conexao.php");
include("includes/head.php");
include("includes/header.html");

if (!isset($_GET["search"]) || trim($_GET["search"]) === "") {
    echo "<div class='mensagem-erro'>
            <h1>Nenhum elemento foi pesquisado.</h1>
            <p>Digite o nome, símbolo ou número atômico de um elemento.</p>
            <a href='index.php'>
            ← VOLTAR
            </a>
          </div>";

    exit;
}

include("functions/funcao_pesquisar_elementos.php");

if (empty($resultados)) {
    echo "<div class='mensagem-erro'>
            <h1>Nenhum resultado encontrado.</h1>
            <p>Não encontramos nenhum dado sobre esse elemento.</p>
            <a href='index.php'>
            ← VOLTAR
            </a>
          </div>";

    exit;
    die("");
}

?>


<div class="pesquisa_output">


    <div class="pesquisa-topo">

        <div>
            <h1>Resultado da pesquisa</h1>
            <p>Pesquisa realizada para: <strong><?= $pesquisa ?></strong></p>
        </div>

        <a href="index.php">
            <button class="voltar" type="button">
                ← VOLTAR
            </button>
        </a>

    </div>

    <?php foreach ($resultados as $row): ?>
        <div class="pesquisa_output_elemento">


            <!-- CABEÇALHO -->

            <div class="pesquisa-cabecalho">

                <div class="simbolo-pesquisa">

                    <strong>
                        <?= $row['simbolo'] ?>
                    </strong>

                    <span>
                    Nº <?= $row['numero_atomico'] ?>
                </span>

                </div>


                <div class="nome-pesquisa">

                    <h2>
                        <?= $row['nome'] ?>
                    </h2>

                    <p>
                        <?= $row['classificacao'] ?>
                    </p>

                </div>

            </div>


            <!-- INFORMAÇÕES GERAIS -->

            <div class="secao-pesquisa">

                <h3>Informações gerais</h3>

                <div class="grid-pesquisa">

                    <div class="informacao-pesquisa">
                        <span>Nome</span>
                        <strong><?= $row['nome'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Símbolo</span>
                        <strong><?= $row['simbolo'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Número atômico</span>
                        <strong><?= $row['numero_atomico'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Massa atômica</span>
                        <strong><?= $row['massa_atomica'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Grupo</span>
                        <strong><?= $row['grupo'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Período</span>
                        <strong><?= $row['periodo'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Classificação</span>
                        <strong><?= $row['classificacao'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Estado físico</span>
                        <strong><?= $row['estado_fisico'] ?></strong>
                    </div>

                </div>

            </div>


            <!-- PROPRIEDADES ATÔMICAS -->

            <div class="secao-pesquisa">

                <h3>Propriedades atômicas</h3>

                <div class="grid-pesquisa">

                    <div class="informacao-pesquisa">
                        <span>Configuração eletrônica</span>
                        <strong><?= $row['configuracao_eletronica'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Eletronegatividade</span>
                        <strong><?= $row['eletronegatividade'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Raio atômico</span>
                        <strong><?= $row['raio_atomico'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Energia de ionização</span>
                        <strong><?= $row['energia_ionizacao'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Estados de oxidação</span>
                        <strong><?= $row['estado_oxidacao'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Camada de valência</span>
                        <strong><?= $row['camada_valencia'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Quantidade de elétrons</span>
                        <strong><?= $row['eletrons_valencia'] ?></strong>
                    </div>

                </div>

            </div>


            <!-- PROPRIEDADES FÍSICAS -->

            <div class="secao-pesquisa">

                <h3>Propriedades físicas</h3>

                <div class="grid-pesquisa">

                    <div class="informacao-pesquisa">
                        <span>Densidade</span>
                        <strong><?= $row['densidade'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Ponto de fusão</span>
                        <strong><?= $row['ponto_de_fusao'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Ponto de ebulição</span>
                        <strong><?= $row['ponto_de_ebulicao'] ?></strong>
                    </div>

                    <div class="informacao-pesquisa">
                        <span>Condutividade</span>
                        <strong><?= $row['condutividade'] ?></strong>
                    </div>

                </div>

            </div>


        </div>

    <?php endforeach; ?>

</div>

<div class="logo">
    <h2>FIM DA PESQUISA!</h2>
    <i class="fa-solid fa-flask"></i>
</div>


<?php

include_once 'includes/footer.html';

?>
