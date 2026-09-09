// ===== MENU =====

let botao = document.querySelector("#buttonMenu");
let menu = document.querySelector("#menuDropdown");

botao.addEventListener("click", () => {

    menu.classList.toggle("ativo");

    if (menu.classList.contains("ativo")) {

        document.body.style.overflow = "hidden";
        document.body.style.position = "relative";
        document.body.style.zIndex = "9999";


    } else {

        document.body.style.overflow = "auto";

    }

});


// ===== TROCAR FORMATO DA TABELA =====

let tabelaPeriodica = document.querySelector(".table-periodic");

let botaoTabela = document.querySelector("#buttonTableP");

botaoTabela.addEventListener("click", () => {

    tabelaPeriodica.classList.toggle("form");

});

// ===== MODAL =====

const elementos = document.querySelectorAll(".elemento");

const modal = document.getElementById("modal");
const fechar = document.getElementById("fechar");

elementos.forEach(elemento => {

    elemento.addEventListener("click", () => {

        const numeroAtomico = elemento.dataset.id;

        console.log("===== CLIQUE =====");
        console.log("Nome clicado:", elemento.querySelector(".nome").textContent);
        console.log("Símbolo clicado:", elemento.querySelector(".simbolo").textContent);
        console.log("ID enviado:", numeroAtomico);

        fetch(`api/buscar_elemento.php?id=${numeroAtomico}`)

            .then(response => response.json())

            .then(dados => {

                console.log("ID recebido do PHP:", dados.numero_atomico);
                console.log("Nome recebido do PHP:", dados.nome);

                document.getElementById("nome").textContent = dados.nome;
                document.getElementById("simbolo").textContent = dados.simbolo;
                document.getElementById("numero").textContent = dados.numero_atomico;

                modal.classList.add("ativo");

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


// ===== FECHAR CLICANDO FORA =====

window.addEventListener("click", (e) => {

    if (e.target === modal) {

        modal.classList.remove("ativo");

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

let search = document.getElementById("search");

search.addEventListener("input", () => {

    let texto = search.value.toLowerCase();

    elementos.forEach(el => {

        let nome = "";

        // evita erro se não tiver data-nome
        if (el.dataset.nome) {

            nome = el.dataset.nome.toLowerCase();

        }

        if (nome.includes(texto)) {

            el.style.opacity = "1";

        } else {

            el.style.opacity = "0.2";

        }

    });

});