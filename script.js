// ===== MENU =====

let botao = document.querySelector("#buttonMenu");
let menu = document.querySelector("#menuDropdown");

botao.addEventListener("click", () => {

    menu.classList.toggle("ativo");

    if(menu.classList.contains("ativo")){

        document.body.style.overflow = "hidden";

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

// fechar modal no X
fechar.addEventListener("click", () => {

    modal.style.display = "none";

    document.body.style.overflow = "auto";

});

// fechar clicando fora
window.addEventListener("click", (e) => {

    if(e.target === modal){

        modal.style.display = "none";

        document.body.style.overflow = "auto";

    }

});

// inicia fechado
window.onload = () => {

    modal.style.display = "none";

};

// ===== MENU HAMBÚRGUER =====

let links = document.querySelectorAll("#menuDropdown a");

let ativo = null;

links.forEach(link => {

    link.addEventListener("click", (e) => {

        e.preventDefault();

        let classe = link.getAttribute("data-classe");

        // remove filtro
        if(ativo === classe){

            document.querySelectorAll(".elemento").forEach(el => {

                el.classList.remove("aaaa");

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
        if(el.dataset.nome){

            nome = el.dataset.nome.toLowerCase();

        }

        if(nome.includes(texto)){

            el.style.opacity = "1";

        } else {

            el.style.opacity = "0.2";

        }

    });

});