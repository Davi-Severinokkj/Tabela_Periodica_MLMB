// ===== MENU =====

let botao = document.querySelector("#buttonMenu");
let menu = document.querySelector("#menuDropdown");

botao.addEventListener("click", () => {

    menu.classList.toggle("ativo");

    if (menu.classList.contains("ativo")) {

        document.body.style.overflow = "hidden";
        menu.style.zIndex = "9999";

    } else {

        document.body.style.overflow = "auto";

    }

});


// ===== ELEMENTOS =====

let elementos = document.querySelectorAll(".elemento");


// ===== TROCAR FORMATO DA TABELA =====

let tabelaPeriodica = document.querySelector(".table-periodic");
let botaoTabela = document.querySelector("#buttonTableP");
let wrappers = document.querySelectorAll(".wrappers");

let ordemOriginal = [...elementos];

botaoTabela.addEventListener("click", () => {

    const modoFormulario =
        tabelaPeriodica.classList.toggle("form");

    if (modoFormulario) {

        wrappers.forEach(wrapper => {
            wrapper.classList.add("hidden");
        });

        [...elementos]
            .sort((a, b) => {
                return Number(a.dataset.id) - Number(b.dataset.id);
            })
            .forEach(elemento => {
                tabelaPeriodica.appendChild(elemento);
            });

    } else {

        ordemOriginal.forEach(elemento => {
            tabelaPeriodica.appendChild(elemento);
        });

        wrappers.forEach(wrapper => {
            wrapper.classList.remove("hidden");
        });

    }

});


// ===== MODAL =====

const modal = document.getElementById("modal");
const fechar = document.getElementById("fechar");

elementos.forEach(elemento => {

    elemento.addEventListener("click", () => {

        document.body.style.overflow = "hidden";

        const numeroAtomico = elemento.dataset.id;


        console.log("===== CLIQUE =====");
        console.log(
            "Nome clicado:",
            elemento.querySelector(".nome").textContent
        );

        console.log(
            "Símbolo clicado:",
            elemento.querySelector(".simbolo").textContent
        );

        console.log(
            "ID enviado:",
            numeroAtomico
        );


        fetch(`api/buscar_elemento.php?id=${numeroAtomico}`)

            .then(response => response.json())

            .then(dados => {

                console.log(
                    "ID recebido do PHP:",
                    dados.numero_atomico
                );

                console.log(
                    "Nome recebido do PHP:",
                    dados.nome
                );


                // ===== CABEÇALHO =====

                document.getElementById("nome").textContent =
                    dados.nome;

                document.getElementById("simbolo").textContent =
                    dados.simbolo;

                document.getElementById("numero").textContent =
                    dados.numero_atomico;

                document.getElementById("classificacao").textContent =
                    dados.classificacao;


                // ===== INFORMAÇÕES GERAIS =====

                document.getElementById("nome-info").textContent =
                    dados.nome;

                document.getElementById("simbolo-info").textContent =
                    dados.simbolo;

                document.getElementById("numero-info").textContent =
                    dados.numero_atomico;

                document.getElementById("massa").textContent =
                    dados.massa_atomica;

                document.getElementById("grupo").textContent =
                    dados.grupo;

                document.getElementById("periodo").textContent =
                    dados.periodo;

                document.getElementById("classificacao-info").textContent =
                    dados.classificacao;

                document.getElementById("estado-fisico").textContent =
                    dados.estado_fisico;


                // ===== PROPRIEDADES ATÔMICAS =====

                document.getElementById("configuracao").textContent =
                    dados.configuracao_eletronica;

                document.getElementById("eletronegatividade").textContent =
                    dados.eletronegatividade;

                document.getElementById("raio-atomico").textContent =
                    dados.raio_atomico;

                document.getElementById("energia-ionizacao").textContent =
                    dados.energia_ionizacao;

                document.getElementById("estado-oxidacao").textContent =
                    dados.estado_oxidacao;


                // ===== PROPRIEDADES FÍSICAS =====

                document.getElementById("densidade").textContent =
                    dados.densidade;

                document.getElementById("ponto-fusao").textContent =
                    dados.ponto_de_fusao;

                document.getElementById("ponto-ebulicao").textContent =
                    dados.ponto_de_ebulicao;

                document.getElementById("condutividade").textContent =
                    dados.condutividade;


                // ===== VALÊNCIA =====

                document.getElementById("camada_valencia").textContent =
                    dados.camada_valencia;

                document.getElementById("eletrons_valencia").textContent =
                    dados.eletrons_valencia;


                // ===== ABRIR MODAL =====

                modal.classList.add("ativo");

                document.body.style.overflow = "hidden";

            })

            .catch(erro => {

                console.error("Erro:", erro);

            });

    });

});


// ===== FECHAR NO X =====

fechar.addEventListener("click", () => {

    modal.classList.remove("ativo");

    document.body.style.overflow = "auto";

});


// ===== FECHAR MENU AO CLICAR FORA =====

document.addEventListener("click", (e) => {

    if (
        !menu.contains(e.target) &&
        !botao.contains(e.target)
    ) {

        menu.classList.remove("ativo");

        document.body.style.overflow = "auto";

    }

});


// ===== MENU HAMBÚRGUER =====

let links = document.querySelectorAll("#menuDropdown a");

let ativo = null;

links.forEach(link => {

    link.addEventListener("click", (e) => {

        e.preventDefault();

        let classe = link.getAttribute("data-classe");


        // remove filtros anteriores

        document.querySelectorAll(".elemento").forEach(el => {

            el.classList.remove("apagado");

        });


        // apaga os elementos que NÃO pertencem ao grupo

        document.querySelectorAll(".elemento").forEach(el => {

            if (!el.classList.contains(classe)) {

                el.classList.add("apagado");

            }

        });


        // remove filtro

        if (ativo === classe) {

            document.querySelectorAll(".elemento").forEach(el => {

                el.classList.remove("apagado");

            });

            ativo = null;

            document.body.style.overflow = "auto";

            return;

        }


        ativo = classe;


        // remove destaque antigo

        document.querySelectorAll(".elemento").forEach(el => {

            el.classList.remove("aaaa");

        });


        // adiciona destaque novo

        document.querySelectorAll("." + classe).forEach(el => {

            el.classList.add("aaaa");

        });


        document.body.style.overflow = "auto";

        menu.classList.remove("ativo");

    });

});


// ===== PESQUISA =====

const search = document.getElementById("search");
const limparPesquisa = document.getElementById("limparPesquisa");
const resultadoPesquisa = document.getElementById("resultadoPesquisa");


// Remove acentos e transforma em minúsculo

function normalizarTexto(texto) {

    return texto
        .normalize("NFD")
        .replace(/[\u0300-\u036f]/g, "")
        .toLowerCase()
        .trim();

}


// Função que realiza a pesquisa

function realizarPesquisa() {

    const texto = normalizarTexto(search.value);

    let encontrados = 0;

    elementos.forEach(el => {

        const nome =
            el.querySelector(".nome")?.textContent || "";

        const simbolo =
            el.querySelector(".simbolo")?.textContent || "";

        const numero =
            el.dataset.id || "";

        const conteudo = normalizarTexto(
            `${nome} ${simbolo} ${numero}`
        );


        if (texto === "") {

            el.classList.remove("oculto-pesquisa");

            encontrados++;

        } else if (conteudo.includes(texto)) {

            el.classList.remove("oculto-pesquisa");

            encontrados++;

        } else {

            el.classList.add("oculto-pesquisa");

        }

    });


    // Mostra/esconde o botão X

    if (texto.length > 0) {

        limparPesquisa.style.display = "flex";

    } else {

        limparPesquisa.style.display = "none";

    }


    // Mensagem

    if (texto === "") {

        resultadoPesquisa.textContent = "";

    } else if (encontrados === 0) {

        resultadoPesquisa.textContent =
            "Nenhum elemento encontrado.";

    } else if (encontrados === 1) {

        resultadoPesquisa.textContent =
            "1 elemento encontrado.";

    } else {

        resultadoPesquisa.textContent =
            `${encontrados} elementos encontrados.`;

    }

}


// Detecta quando o usuário digita

search.addEventListener("input", realizarPesquisa);


// ===== BOTÃO LIMPAR =====

limparPesquisa.addEventListener("click", () => {

    search.value = "";

    realizarPesquisa();

    search.focus();

});