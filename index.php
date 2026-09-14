<!DOCTYPE html>
<html lang="pt-br">
<?php include ('includes/head.html'); ?>

<body>

<?php include ('includes/header.html'); ?>

<div class="search-container">

    <span class="search-icon">⌕</span>

    <input
            type="text"
            id="search"
            autocomplete="off"
            placeholder="Pesquisar elemento..."
    >

    <button id="limparPesquisa" type="button">&times;</button>

</div>

<p id="resultadoPesquisa"></p>

<main>
    <section id="main">

        <div class="table-periodic">


            <!-- HIDROGÊNIO -->
            <div data-imagem="img/hidrogenio.jpg" data-id="1" data-nome="Nome do elemento: Hidrogênio" data-simbolo="Símbolo químico: H" class="elemento nao_metais_diatomicos" style="grid-column:1; grid-row:1; background: #5F9EA0;">
                <span class="numero">1</span>
                <a href="#" class="simbolo">H</a>
                <span class="nome">Hidrogênio</span>
            </div>

            <!-- HÉLIO -->
            <div data-id="2" class="elemento gases_nobres" data-nome="Nome do elemento: Hélio" style="grid-column:18; grid-row:1;">
                <span class="numero">2</span>
                <a href="#" class="simbolo">He</a>
                <span class="nome">Hélio</span>
            </div>

            <!-- LÍTIO -->
            <div data-id="3" class="elemento metais_alcalinos" data-nome="Nome do elemento: Lítio" style="grid-column:1; grid-row:2;">
                <span class="numero">3</span>
                <a href="#" class="simbolo">Li</a>
                <span class="nome">Lítio</span>
            </div>

            <!-- BERÍLIO -->
            <div data-id="4" class="elemento metais_alcalinos_terrosos" data-nome="Nome do elemento: Berílio" style="grid-column:2; grid-row:2;">
                <span class="numero">4</span>
                <a href="#" class="simbolo">Be</a>
                <span class="nome">Berílio</span>
            </div>

            <!-- BORO -->
            <div data-id="5" class="elemento semi_metais familia_do_boro" data-nome="Nome do elemento: Boro" style="grid-column:13; grid-row:2;">
                <span class="numero">5</span>
                <a href="#" class="simbolo">B</a>
                <span class="nome">Boro</span>
            </div>

            <!-- CARBONO -->
            <div data-id="6" class="elemento nao_metais_poliatomicos familia_do_carbono" data-nome="Nome do elemento: Carbono" style="grid-column:14; grid-row:2;">
                <span class="numero">6</span>
                <a href="#" class="simbolo">C</a>
                <span class="nome">Carbono</span>
            </div>

            <!-- NITROGÊNIO -->
            <div data-id="7" class="elemento nao_metais_diatomicos familia_do_nitrogenio" data-nome="Nome do elemento: Nitrogênio" style="grid-column:15; grid-row:2;">
                <span class="numero">7</span>
                <a href="#" class="simbolo">N</a>
                <span class="nome">Nitrogênio</span>
            </div>

            <!-- OXIGÊNIO -->
            <div data-id="8" class="elemento nao_metais_diatomicos calcogenios" data-nome="Nome do elemento: Oxigênio" style="grid-column:16; grid-row:2;">
                <span class="numero">8</span>
                <a href="#" class="simbolo">O</a>
                <span class="nome">Oxigênio</span>
            </div>

            <!-- FLÚOR -->
            <div data-id="9" class="elemento halogênios nao_metais_diatomicos" data-nome="Nome do elemento: Flúor" style="grid-column:17; grid-row:2;">
                <span class="numero">9</span>
                <a href="#" class="simbolo">F</a>
                <span class="nome">Flúor</span>
            </div>

            <!-- NEÔNIO -->
            <div data-id="10" class="elemento gases_nobres" data-nome="Nome do elemento: Neônio" data-desc="" style="grid-column:18; grid-row:2;">
                <span class="numero">10</span>
                <a href="#" class="simbolo">Ne</a>
                <span class="nome">Neônio</span>
            </div>

            <!-- SÓDIO -->
            <div data-id="11" class="elemento metais_alcalinos" data-nome="Nome do elemento: Sódio" style="grid-column:1;">
                <span class="numero">11</span>
                <a href="#" class="simbolo">Na</a>
                <span class="nome">Sódio</span>
            </div>

            <!-- MAGNÉSIO -->
            <div data-id="12" class="elemento metais_alcalinos_terrosos" data-nome="Nome do elemento: Magnésio" style="grid-column:2;">
                <span class="numero">12</span>
                <a href="#" class="simbolo">Mg</a>
                <span class="nome">Magnésio</span>
            </div>

            <!-- ALUMÍNIO -->
            <div data-id="13" class="elemento metais_pos_transicao familia_do_boro" data-nome="Nome do elemento: Alumínio" style="grid-column:13; grid-row:3;">
                <span class="numero">13</span>
                <a href="#" class="simbolo">Al</a>
                <span class="nome">Alumínio</span>
            </div>

            <!-- SILÍCIO -->
            <div data-id="14" class="elemento semi_metais familia_do_carbono" data-nome="Nome do elemento: Silício" style="grid-column:14; grid-row:3;">
                <span class="numero">14</span>
                <a href="#" class="simbolo">Si</a>
                <span class="nome">Silício</span>
            </div>

            <!-- FÓSFORO -->
            <div data-id="15" class="elemento nao_metais_poliatomicos familia_do_nitrogenio" style="grid-column:15; grid-row:3;">
                <span class="numero">15</span>
                <a href="#" class="simbolo">P</a>
                <span class="nome">Fósforo</span>
            </div>

            <!-- ENXOFRE -->
            <div data-id="16" class="elemento nao_metais_poliatomicos calcogenios" style="grid-column:16; grid-row:3;">
                <span class="numero">16</span>
                <a href="#" class="simbolo">S</a>
                <span class="nome">Enxofre</span>
            </div>

            <!-- CLORO -->
            <div data-id="17" class="elemento nao_metais_diatomicos halogênios" style="grid-column:17; grid-row:3;">
                <span class="numero">17</span>
                <a href="#" class="simbolo">Cl</a>
                <span class="nome">Cloro</span>
            </div>

            <!-- ARGÔNIO -->
            <div data-id="18" class="elemento gases_nobres" data-nome="" data-desc="" style="grid-column:18; grid-row:3;">
                <span class="numero">18</span>
                <a href="#" class="simbolo">Ar</a>
                <span class="nome">Argônio</span>
            </div>

            <!-- PERÍODO 4 -->

            <!-- POTÁSSIO -->
            <div data-id="19" class="elemento metais_alcalinos" style="grid-column:1; grid-row:4;">
                <span class="numero">19</span>
                <a href="#" class="simbolo">K</a>
                <span class="nome">Potássio</span>
            </div>

            <!-- CÁLCIO -->
            <div data-id="20" class="elemento metais_alcalinos_terrosos" style="grid-column:2; grid-row:4;">
                <span class="numero">20</span>
                <a href="#" class="simbolo">Ca</a>
                <span class="nome">Cálcio</span>
            </div>

            <!-- ESCÂNDIO -->
            <div data-id="21" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:3; grid-row:4;">
                <span class="numero">21</span>
                <a href="#" class="simbolo">Sc</a>
                <span class="nome">Escândio</span>
            </div>

            <!-- TITÂNIO -->
            <div data-id="22" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:4; grid-row:4;">
                <span class="numero">22</span>
                <a href="#" class="simbolo">Ti</a>
                <span class="nome">Titânio</span>
            </div>

            <!-- VANÁDIO -->
            <div data-id="23" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:5; grid-row:4;">
                <span class="numero">23</span>
                <a href="#" class="simbolo">V</a>
                <span class="nome">Vanádio</span>
            </div>

            <!-- CROMO -->
            <div data-id="24" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:6; grid-row:4;">
                <span class="numero">24</span>
                <a href="#" class="simbolo">Cr</a>
                <span class="nome">Cromo</span>
            </div>

            <!-- MANGANÊS -->
            <div data-id="25" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:7; grid-row:4;">
                <span class="numero">25</span>
                <a href="#" class="simbolo">Mn</a>
                <span class="nome">Manganês</span>
            </div>

            <!-- FERRO -->
            <div data-id="26" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:8; grid-row:4;">
                <span class="numero">26</span>
                <a href="#" class="simbolo">Fe</a>
                <span class="nome">Ferro</span>
            </div>

            <!-- COBALTO -->
            <div data-id="27" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:9; grid-row:4;">
                <span class="numero">27</span>
                <a href="#" class="simbolo">Co</a>
                <span class="nome">Cobalto</span>
            </div>

            <!-- NÍQUEL -->
            <div data-id="28" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:10; grid-row:4;">
                <span class="numero">28</span>
                <a href="#" class="simbolo">Ni</a>
                <span class="nome">Níquel</span>
            </div>

            <!-- COBRE -->
            <div data-id="29" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:11; grid-row:4;">
                <span class="numero">29</span>
                <a href="#" class="simbolo">Cu</a>
                <span class="nome">Cobre</span>
            </div>

            <!-- ZINCO -->
            <div data-id="30" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:12; grid-row:4;">
                <span class="numero">30</span>
                <a href="#" class="simbolo">Zn</a>
                <span class="nome">Zinco</span>
            </div>

            <!-- GÁLIO -->
            <div data-id="31" class="elemento metais_pos_transicao familia_do_boro" style="grid-column:13; grid-row:4;">
                <span class="numero">31</span>
                <a href="#" class="simbolo">Ga</a>
                <span class="nome">Gálio</span>
            </div>

            <!-- GERMÂNIO -->
            <div data-id="32" class="elemento semi_metais familia_do_carbono" style="grid-column:14; grid-row:4;">
                <span class="numero">32</span>
                <a href="#" class="simbolo">Ge</a>
                <span class="nome">Germanio</span>
            </div>

            <!-- ARSÊNIO -->
            <div data-id="33" class="elemento semi_metais familia_do_nitrogenio" style="grid-column:15; grid-row:4;">
                <span class="numero">33</span>
                <a href="#" class="simbolo">As</a>
                <span class="nome">Arsênio</span>
            </div>

            <!-- SELÊNIO -->
            <div data-id="34" class="elemento nao_metais_poliatomicos calcogenios" style="grid-column:16; grid-row:4;">
                <span class="numero">34</span>
                <a href="#" class="simbolo">Se</a>
                <span class="nome">Selênio</span>
            </div>

            <!-- BROMO -->
            <div data-id="35" class="elemento nao_metais_diatomicos halogênios" style="grid-column:17; grid-row:4;">
                <span class="numero">35</span>
                <a href="#" class="simbolo">Br</a>
                <span class="nome">Bromo</span>
            </div>

            <!-- CRIPTÔNIO -->
            <div data-id="36" class="elemento gases_nobres" data-nome="" data-desc="" style="grid-column:18; grid-row:4;">
                <span class="numero">36</span>
                <a href="#" class="simbolo">Kr</a>
                <span class="nome">Criptônio</span>
            </div>
            <!-- PERÍODO 5 -->

            <!-- RUBÍDIO -->
            <div data-id="37" class="elemento metais_alcalinos" style="grid-column:1; grid-row:5;">
                <span class="numero">37</span>
                <a href="#" class="simbolo">Rb</a>
                <span class="nome">Rubídio</span>
            </div>

            <!-- ESTRÔNCIO -->
            <div data-id="38" class="elemento metais_alcalinos_terrosos" style="grid-column:2; grid-row:5;">
                <span class="numero">38</span>
                <a href="#" class="simbolo">Sr</a>
                <span class="nome">Estrôncio</span>
            </div>

            <!-- ÍTRIO -->
            <div data-id="39" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:3; grid-row:5;">
                <span class="numero">39</span>
                <a href="#" class="simbolo">Y</a>
                <span class="nome">Ítrio</span>
            </div>

            <!-- ZIRCÔNIO -->
            <div data-id="40" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:4; grid-row:5;">
                <span class="numero">40</span>
                <a href="#" class="simbolo">Zr</a>
                <span class="nome">Zircônio</span>
            </div>

            <!-- NIÓBIO -->
            <div data-id="41" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:5; grid-row:5;">
                <span class="numero">41</span>
                <a href="#" class="simbolo">Nb</a>
                <span class="nome">Nióbio</span>
            </div>

            <!-- MOLIBDÊNIO -->
            <div data-id="42" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:6; grid-row:5;">
                <span class="numero">42</span>
                <a href="#" class="simbolo">Mo</a>
                <span class="nome">Molibdênio</span>
            </div>

            <!-- TECNÉCIO -->
            <div data-id="43" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:7; grid-row:5;">
                <span class="numero">43</span>
                <a href="#" class="simbolo">Tc</a>
                <span class="nome">Tecnécio</span>
            </div>

            <!-- RUTÊNIO -->
            <div data-id="44" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:8; grid-row:5;">
                <span class="numero">44</span>
                <a href="#" class="simbolo">Ru</a>
                <span class="nome">Rutênio</span>
            </div>

            <!-- RÓDIO -->
            <div data-id="45" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:9; grid-row:5;">
                <span class="numero">45</span>
                <a href="#" class="simbolo">Rh</a>
                <span class="nome">Ródio</span>
            </div>

            <!-- PALÁDIO -->
            <div data-id="46" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:10; grid-row:5;">
                <span class="numero">46</span>
                <a href="#" class="simbolo">Pd</a>
                <span class="nome">Paládio</span>
            </div>

            <!-- PRATA -->
            <div data-id="47" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:11; grid-row:5;">
                <span class="numero">47</span>
                <a href="#" class="simbolo">Ag</a>
                <span class="nome">Prata</span>
            </div>

            <!-- CÁDMIO -->
            <div data-id="48" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:12; grid-row:5;">
                <span class="numero">48</span>
                <a href="#" class="simbolo">Cd</a>
                <span class="nome">Cádmio</span>
            </div>

            <!-- ÍNDIO -->
            <div data-id="49" class="elemento metais_pos_transicao familia_do_boro" style="grid-column:13; grid-row:5;">
                <span class="numero">49</span>
                <a href="#" class="simbolo">In</a>
                <span class="nome">Índio</span>
            </div>

            <!-- ESTANHO -->
            <div data-id="50" class="elemento metais_pos_transicao familia_do_carbono" style="grid-column:14; grid-row:5;">
                <span class="numero">50</span>
                <a href="#" class="simbolo">Sn</a>
                <span class="nome">Estanho</span>
            </div>

            <!-- ANTIMÔNIO -->
            <div data-id="51" class="elemento semi_metais familia_do_nitrogenio" style="grid-column:15; grid-row:5;">
                <span class="numero">51</span>
                <a href="#" class="simbolo">Sb</a>
                <span class="nome">Antimônio</span>
            </div>

            <!-- TELÚRIO -->
            <div data-id="52" class="elemento semi_metais calcogenios" style="grid-column:16; grid-row:5;">
                <span class="numero">52</span>
                <a href="#" class="simbolo">Te</a>
                <span class="nome">Telúrio</span>
            </div>

            <!-- IODO -->
            <div data-id="53" class="elemento nao_metais_diatomicos halogênios" style="grid-column:17; grid-row:5;">
                <span class="numero">53</span>
                <a href="#" class="simbolo">I</a>
                <span class="nome">Iodo</span>
            </div>

            <!-- XENÔNIO -->
            <div data-id="54" class="elemento gases_nobres" data-nome="" data-desc="" style="grid-column:18; grid-row:5;">
                <span class="numero">54</span>
                <a href="#" class="simbolo">Xe</a>
                <span class="nome">Xenônio</span>
            </div>
            <!-- PERÍODO 6 -->

            <!-- CÉSIO -->
            <div data-id="55" class="elemento metais_alcalinos" style="grid-column:1; grid-row:6;">
                <span class="numero">55</span>
                <a href="#" class="simbolo">Cs</a>
                <span class="nome">Césio</span>
            </div>

            <!-- BÁRIO -->
            <div data-id="56" class="elemento metais_alcalinos_terrosos" style="grid-column:2; grid-row:6;">
                <span class="numero">56</span>
                <a href="#" class="simbolo">Ba</a>
                <span class="nome">Bário</span>
            </div>

            <!-- HÁFNIO -->
            <div data-id="72" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:4; grid-row:6;">
                <span class="numero">72</span>
                <a href="#" class="simbolo">Hf</a>
                <span class="nome">Háfnio</span>
            </div>

            <!-- TÂNTALO -->
            <div data-id="73" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:5; grid-row:6;">
                <span class="numero">73</span>
                <a href="#" class="simbolo">Ta</a>
                <span class="nome">Tântalo</span>
            </div>

            <!-- TUNGSTÊNIO -->
            <div data-id="74" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:6; grid-row:6;">
                <span class="numero">74</span>
                <a href="#" class="simbolo">W</a>
                <span class="nome">Tungstênio</span>
            </div>

            <!-- RÊNIO -->
            <div data-id="75" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:7; grid-row:6;">
                <span class="numero">75</span>
                <a href="#" class="simbolo">Re</a>
                <span class="nome">Rênio</span>
            </div>

            <!-- ÓSMIO -->
            <div data-id="76" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:8; grid-row:6;">
                <span class="numero">76</span>
                <a href="#" class="simbolo">Os</a>
                <span class="nome">Ósmio</span>
            </div>

            <!-- IRÍDIO -->
            <div data-id="77" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:9; grid-row:6;">
                <span class="numero">77</span>
                <a href="#" class="simbolo">Ir</a>
                <span class="nome">Irídio</span>
            </div>

            <!-- PLATINA -->
            <div data-id="78" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:10; grid-row:6;">
                <span class="numero">78</span>
                <a href="#" class="simbolo">Pt</a>
                <span class="nome">Platina</span>
            </div>

            <!-- OURO -->
            <div data-id="79" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:11; grid-row:6;">
                <span class="numero">79</span>
                <a href="#" class="simbolo">Au</a>
                <span class="nome">Ouro</span>
            </div>

            <!-- MERCÚRIO -->
            <div data-id="80" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:12; grid-row:6;">
                <span class="numero">80</span>
                <a href="#" class="simbolo">Hg</a>
                <span class="nome">Mercúrio</span>
            </div>

            <!-- TÁLIO -->
            <div data-id="81" class="elemento metais_pos_transicao familia_do_boro" style="grid-column:13; grid-row:6;">
                <span class="numero">81</span>
                <a href="#" class="simbolo">Tl</a>
                <span class="nome">Tálio</span>
            </div>

            <!-- CHUMBO -->
            <div data-id="82" class="elemento metais_pos_transicao familia_do_carbono" style="grid-column:14; grid-row:6;">
                <span class="numero">82</span>
                <a href="#" class="simbolo">Pb</a>
                <span class="nome">Chumbo</span>
            </div>

            <!-- BISMUTO -->
            <div data-id="83" class="elemento metais_pos_transicao familia_do_nitrogenio" style="grid-column:15; grid-row:6;">
                <span class="numero">83</span>
                <a href="#" class="simbolo">Bi</a>
                <span class="nome">Bismuto</span>
            </div>

            <!-- POLÔNIO -->
            <div data-id="84" class="elemento metais_pos_transicao calcogenios" style="grid-column:16; grid-row:6;">
                <span class="numero">84</span>
                <a href="#" class="simbolo">Po</a>
                <span class="nome">Polônio</span>
            </div>

            <!-- ASTATO -->
            <div data-id="85" class="elemento semi_metais metais_pos_transicao halogênios" style="grid-column:17; grid-row:6;">
                <span class="numero">85</span>
                <a href="#" class="simbolo">At</a>
                <span class="nome">Astato</span>
            </div>

            <!-- RADÔNIO -->
            <div data-id="86" class="elemento gases_nobres" data-nome="" data-desc="" style="grid-column:18; grid-row:6;">
                <span class="numero">86</span>
                <a href="#" class="simbolo">Rn</a>
                <span class="nome">Radônio</span>
            </div>

            <!-- PERÍODO 7 -->

            <!-- FRÂNCIO -->
            <div data-id="87" class="elemento metais_alcalinos" style="grid-column:1; grid-row:7;">
                <span class="numero">87</span>
                <a href="#" class="simbolo">Fr</a>
                <span class="nome">Frâncio</span>
            </div>

            <!-- RÁDIO -->
            <div data-id="88" class="elemento metais_alcalinos_terrosos" style="grid-column:2; grid-row:7;">
                <span class="numero">88</span>
                <a href="#" class="simbolo">Ra</a>
                <span class="nome">Rádio</span>
            </div>

            <!-- RUTHERFÓRDIO -->
            <div data-id="104" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:4; grid-row:7;">
                <span class="numero">104</span>
                <a href="#" class="simbolo">Rf</a>
                <span class="nome">Rutherfórdio</span>
            </div>

            <!-- DÚBNIO -->
            <div data-id="105" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:5; grid-row:7;">
                <span class="numero">105</span>
                <a href="#" class="simbolo">Db</a>
                <span class="nome">Dúbnio</span>
            </div>

            <!-- SEABÓRGIO -->
            <div data-id="106" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:6; grid-row:7;">
                <span class="numero">106</span>
                <a href="#" class="simbolo">Sg</a>
                <span class="nome">Seabórgio</span>
            </div>

            <!-- BÓHRIO -->
            <div data-id="107" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:7; grid-row:7;">
                <span class="numero">107</span>
                <a href="#" class="simbolo">Bh</a>
                <span class="nome">Bóhrio</span>
            </div>

            <!-- HÁSSIO -->
            <div data-id="108" class="elemento metais_de_transicao" data-nome="" data-desc="" style="grid-column:8; grid-row:7;">
                <span class="numero">108</span>
                <a href="#" class="simbolo">Hs</a>
                <span class="nome">Hássio</span>
            </div>

            <!-- MEITNÉRIO -->
            <div data-id="109" class="elemento desconhecidos" style="grid-column:9; grid-row:7;">
                <span class="numero">109</span>
                <a href="#" class="simbolo">Mt</a>
                <span class="nome">Meitnério</span>
            </div>

            <!-- DARMSTÁDTIO -->
            <div data-id="110" class="elemento desconhecidos" style="grid-column:10; grid-row:7;">
                <span class="numero">110</span>
                <a href="#" class="simbolo">Ds</a>
                <span class="nome">Darmstádtio</span>
            </div>

            <!-- ROENTGÊNIO -->
            <div data-id="111" class="elemento desconhecidos" style="grid-column:11; grid-row:7;">
                <span class="numero">111</span>
                <a href="#" class="simbolo">Rg</a>
                <span class="nome">Roentgênio</span>
            </div>

            <!-- COPERNÍCIO -->
            <div data-id="112" class="elemento desconhecidos metais_de_transicao" style="grid-column:12; grid-row:7; background-color: #66CDAA;">
                <span class="numero">112</span>
                <a href="#" class="simbolo">Cn</a>
                <span class="nome">Copernício</span>
            </div>

            <!-- NIHÔNIO -->
            <div data-id="113" class="elemento desconhecidos familia_do_boro" style="grid-column:13; grid-row:7;">
                <span class="numero">113</span>
                <a href="#" class="simbolo">Nh</a>
                <span class="nome">Nihônio</span>
            </div>

            <!-- FLERÓVIO -->
            <div data-id="114" class="elemento desconhecidos familia_do_carbono" style="grid-column:14; grid-row:7;">
                <span class="numero">114</span>
                <a href="#" class="simbolo">Fl</a>
                <span class="nome">Fleróvio</span>
            </div>

            <!-- MOSCÓVIO -->
            <div data-id="115" class="elemento desconhecidos familia_do_nitrogenio" style="grid-column:15; grid-row:7;">
                <span class="numero">115</span>
                <a href="#" class="simbolo">Mc</a>
                <span class="nome">Moscóvio</span>
            </div>

            <!-- LIVERMÓRIO -->
            <div data-id="116" class="elemento desconhecidos calcogenios" style="grid-column:16; grid-row:7;">
                <span class="numero">116</span>
                <a href="#" class="simbolo">Lv</a>
                <span class="nome">Livermório</span>
            </div>

            <!-- TENESSO -->
            <div data-id="117" class="elemento desconhecidos" style="grid-column:17; grid-row:7; background: #4B0082;">
                <span class="numero">117</span>
                <a href="#" class="simbolo">Ts</a>
                <span class="nome">Tenesso</span>
            </div>

            <!-- OGANESSON -->
            <div data-id="118" class="elemento gases_nobres" style="grid-column:18; grid-row:7; background: #4B0082;">
                <span class="numero">118</span>
                <a href="#" class="simbolo">Og</a>
                <span class="nome">Oganesson</span>
            </div>

            <!-- CÉRIO -->
            <div data-id="58" class="elemento lantanideos" style="grid-column:4; grid-row:10;">
                <span class="numero">58</span>
                <a href="#" class="simbolo">Ce</a>
                <span class="nome">Cério</span>
            </div>

            <!-- PRASEODÍMIO -->
            <div data-id="59" class="elemento lantanideos" style="grid-column:5; grid-row:10;">
                <span class="numero">59</span>
                <a href="#" class="simbolo">Pr</a>
                <span class="nome">Praseodímio</span>
            </div>

            <!-- NEODÍMIO -->
            <div data-id="60" class="elemento lantanideos" style="grid-column:6; grid-row:10;">
                <span class="numero">60</span>
                <a href="#" class="simbolo">Nd</a>
                <span class="nome">Neodímio</span>
            </div>

            <!-- PROMÉCIO -->
            <div data-id="61" class="elemento lantanideos" style="grid-column:7; grid-row:10;">
                <span class="numero">61</span>
                <a href="#" class="simbolo">Pm</a>
                <span class="nome">Promécio</span>
            </div>

            <!-- SAMÁRIO -->
            <div data-id="62" class="elemento lantanideos" style="grid-column:8; grid-row:10;">
                <span class="numero">62</span>
                <a href="#" class="simbolo">Sm</a>
                <span class="nome">Samário</span>
            </div>

            <!-- EURÓPIO -->
            <div data-id="63" class="elemento lantanideos" style="grid-column:9; grid-row:10;">
                <span class="numero">63</span>
                <a href="#" class="simbolo">Eu</a>
                <span class="nome">Európio</span>
            </div>

            <!-- GADOLÍNIO -->
            <div data-id="64" class="elemento lantanideos" style="grid-column:10; grid-row:10;">
                <span class="numero">64</span>
                <a href="#" class="simbolo">Gd</a>
                <span class="nome">Gadolínio</span>
            </div>

            <!-- TÉRBIO -->
            <div data-id="65" class="elemento lantanideos" style="grid-column:11; grid-row:10;">
                <span class="numero">65</span>
                <a href="#" class="simbolo">Tb</a>
                <span class="nome">Térbio</span>
            </div>

            <!-- DISPRÓSIO -->
            <div data-id="66" class="elemento lantanideos" style="grid-column:12; grid-row:10;">
                <span class="numero">66</span>
                <a href="#" class="simbolo">Dy</a>
                <span class="nome">Disprósio</span>
            </div>

            <!-- HÓLMIO -->
            <div data-id="67" class="elemento lantanideos" style="grid-column:13; grid-row:10;">
                <span class="numero">67</span>
                <a href="#" class="simbolo">Ho</a>
                <span class="nome">Hólmio</span>
            </div>

            <!-- ÉRBIO -->
            <div data-id="68" class="elemento lantanideos" style="grid-column:14; grid-row:10;">
                <span class="numero">68</span>
                <a href="#" class="simbolo">Er</a>
                <span class="nome">Érbio</span>
            </div>

            <!-- TÚLIO -->
            <div data-id="69" class="elemento lantanideos" style="grid-column:15; grid-row:10;">
                <span class="numero">69</span>
                <a href="#" class="simbolo">Tm</a>
                <span class="nome">Túlio</span>
            </div>

            <!-- ITÉRBIO -->
            <div data-id="70" class="elemento lantanideos" style="grid-column:16; grid-row:10;">
                <span class="numero">70</span>
                <a href="#" class="simbolo">Yb</a>
                <span class="nome">Itérbio</span>
            </div>

            <!-- LUTÉCIO -->
            <div data-id="71" class="elemento lantanideos" style="grid-column:17; grid-row:10;">
                <span class="numero">71</span>
                <a href="#" class="simbolo">Lu</a>
                <span class="nome">Lutécio</span>
            </div>

            <!-- ACTINÍDEOS -->

            <!-- TÓRIO -->
            <div data-id="90" class="elemento actinideos" style="grid-column:4; grid-row:11;">
                <span class="numero">90</span>
                <a href="#" class="simbolo">Th</a>
                <span class="nome">Tório</span>
            </div>

            <!-- PROTACTÍNIO -->
            <div data-id="91" class="elemento actinideos" style="grid-column:5; grid-row:11;">
                <span class="numero">91</span>
                <a href="#" class="simbolo">Pa</a>
                <span class="nome">Protactínio</span>
            </div>

            <!-- URÂNIO -->
            <div data-id="92" class="elemento actinideos" style="grid-column:6; grid-row:11;">
                <span class="numero">92</span>
                <a href="#" class="simbolo">U</a>
                <span class="nome">Urânio</span>
            </div>

            <!-- NETÚNIO -->
            <div data-id="93" class="elemento actinideos" style="grid-column:7; grid-row:11;">
                <span class="numero">93</span>
                <a href="#" class="simbolo">Np</a>
                <span class="nome">Netúnio</span>
            </div>

            <!-- PLUTÔNIO -->
            <div data-id="94" class="elemento actinideos" style="grid-column:8; grid-row:11;">
                <span class="numero">94</span>
                <a href="#" class="simbolo">Pu</a>
                <span class="nome">Plutônio</span>
            </div>

            <!-- AMERÍCIO -->
            <div data-id="95" class="elemento actinideos" style="grid-column:9; grid-row:11;">
                <span class="numero">95</span>
                <a href="#" class="simbolo">Am</a>
                <span class="nome">Amerício</span>
            </div>

            <!-- CÚRIO -->
            <div data-id="96" class="elemento actinideos" style="grid-column:10; grid-row:11;">
                <span class="numero">96</span>
                <a href="#" class="simbolo">Cm</a>
                <span class="nome">Cúrio</span>
            </div>

            <!-- BERQUÉLIO -->
            <div data-id="97" class="elemento actinideos" style="grid-column:11; grid-row:11;">
                <span class="numero">97</span>
                <a href="#" class="simbolo">Bk</a>
                <span class="nome">Berquélio</span>
            </div>

            <!-- CALIFÓRNIO -->
            <div data-id="98" class="elemento actinideos" style="grid-column:12; grid-row:11;">
                <span class="numero">98</span>
                <a href="#" class="simbolo">Cf</a>
                <span class="nome">Califórnio</span>
            </div>

            <!-- EINSTÊNIO -->
            <div data-id="99" class="elemento actinideos" style="grid-column:13; grid-row:11;">
                <span class="numero">99</span>
                <a href="#" class="simbolo">Es</a>
                <span class="nome">Einstênio</span>
            </div>

            <!-- FÉRMIO -->
            <div data-id="100" class="elemento actinideos" style="grid-column:14; grid-row:11;">
                <span class="numero">100</span>
                <a href="#" class="simbolo">Fm</a>
                <span class="nome">Férmio</span>
            </div>

            <!-- MENDELÉVIO -->
            <div data-id="101" class="elemento actinideos" style="grid-column:15; grid-row:11;">
                <span class="numero">101</span>
                <a href="#" class="simbolo">Md</a>
                <span class="nome">Mendelévio</span>
            </div>

            <!-- NOBÉLIO -->
            <div data-id="102" class="elemento actinideos" style="grid-column:16; grid-row:11;">
                <span class="numero">102</span>
                <a href="#" class="simbolo">No</a>
                <span class="nome">Nobélio</span>
            </div>

            <!-- LAURÊNCIO -->
            <div data-id="103" class="elemento actinideos" style="grid-column:17; grid-row:11;">
                <span class="numero">103</span>
                <a href="#" class="simbolo">Lr</a>
                <span class="nome">Laurêncio</span>
            </div>


        </div>

    </section>
</main>

<!-- Modal -->

<div id="modal" class="modal">

    <div class="modal-conteudo">

        <span id="fechar">&times;</span>

        <!-- Cabeçalho -->
        <div class="modal-cabecalho">

            <div class="simbolo-elemento">
                <span id="simbolo"></span>
                <span id="numero"></span>
            </div>

            <div class="informacoes-principais">
                <h1 id="nome"></h1>
                <p id="classificacao"></p>
            </div>

        </div>


        <!-- Informações gerais -->
        <div class="secao-modal">

            <h2>Informações gerais</h2>

            <div class="grid-informacoes">

                <div class="informacao">
                    <span>Nome</span>
                    <strong id="nome-info"></strong>
                </div>

                <div class="informacao">
                    <span>Símbolo</span>
                    <strong id="simbolo-info"></strong>
                </div>

                <div class="informacao">
                    <span>Número atômico</span>
                    <strong id="numero-info"></strong>
                </div>

                <div class="informacao">
                    <span>Massa atômica</span>
                    <strong id="massa"></strong>
                </div>

                <div class="informacao">
                    <span>Grupo</span>
                    <strong id="grupo"></strong>
                </div>

                <div class="informacao">
                    <span>Período</span>
                    <strong id="periodo"></strong>
                </div>

                <div class="informacao">
                    <span>Classificação</span>
                    <strong id="classificacao-info"></strong>
                </div>

                <div class="informacao">
                    <span>Estado físico</span>
                    <strong id="estado-fisico"></strong>
                </div>

            </div>

        </div>


        <!-- Propriedades atômicas -->
        <div class="secao-modal">

            <h2>Propriedades atômicas</h2>

            <div class="grid-informacoes">

                <div class="informacao">
                    <span>Configuração eletrônica</span>
                    <strong id="configuracao"></strong>
                </div>

                <div class="informacao">
                    <span>Eletronegatividade</span>
                    <strong id="eletronegatividade"></strong>
                </div>

                <div class="informacao">
                    <span>Raio atômico</span>
                    <strong id="raio-atomico"></strong>
                </div>

                <div class="informacao">
                    <span>Energia de ionização</span>
                    <strong id="energia-ionizacao"></strong>
                </div>

                <div class="informacao">
                    <span>Estados de oxidação</span>
                    <strong id="estado-oxidacao"></strong>
                </div>

                <div class="informacao">
                    <span>Camada de valência</span>
                    <strong id="camada_valencia"></strong>
                </div>

                <div class="informacao">
                    <span>Quantidade de Eletrons</span>
                    <strong id="eletrons_valencia"></strong>
                </div>       

            </div>

        </div>


        <!-- Propriedades físicas -->
        <div class="secao-modal">

            <h2>Propriedades físicas</h2>

            <div class="grid-informacoes">

                <div class="informacao">
                    <span>Densidade</span>
                    <strong id="densidade"></strong>
                </div>

                <div class="informacao">
                    <span>Ponto de fusão</span>
                    <strong id="ponto-fusao"></strong>
                </div>

                <div class="informacao">
                    <span>Ponto de ebulição</span>
                    <strong id="ponto-ebulicao"></strong>
                </div>

                <div class="informacao">
                    <span>Condutividade</span>
                    <strong id="condutividade"></strong>
                </div>

            </div>

        </div>

    </div>

</div>



<?php include ('includes/footer.html');?>


<script src="script.js"></script>

</body>
</html>