<!DOCTYPE html>
<html lang="pt-br">

<head>
  <link rel="shortcut icon" type="image/png" href="../img/logo.png">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Denúncia de Maus-Tratos a Animais</title>
  <link rel="stylesheet" href="../estilo/index.css" />
  <script defer src="../estilo/script.js"></script>
</head>

<body>
  <header>
    <nav class="nav-container" role="navigation" aria-label="Menu principal">
      <div class="logo" aria-label="Logo ProtejaAnimais">🐾 ProtejaAnimais</div>
      <ul class="menu">
        <li><a href="#formulario">Denunciar</a></li>
        <li><a href="#sobre">Sobre</a></li>
        <a href="#como-funciona">Como Funciona</a>
        <a href="#estatisticas">Estatísticas</a>
        <a href="#faq">Dúvidas</a>

      </ul>
    </nav>
  </header>

  <section class="banner" role="banner">
    <div class="banner-texto">
      <h1>Proteja quem não tem voz</h1>
      <p>Ajude a combater os maus-tratos aos animais.
      Faça sua denúncia de forma segura e anônima.</p>
    </div>
    <div class="banner-imagem">
      <img src="../img/banner.png" alt="Imagem de um cachorro feliz representando proteção animal" />
    </div>
  </section>

  <section id="sobre">
    <div class="container titulo-central">
      <h2>Quem Somos</h2>
      <p>Nossa missão é ser a ponte entre a justiça e os que não podem se defender: os animais.</p>
    </div>
    <div class="container missao">
      <img src="../img/resgate.webp" alt="Animais felizes" />
      <div class="texto">
        <p>Somos um projeto social dedicado a receber, encaminhar e acompanhar denúncias de maus-tratos a animais domésticos e silvestres em todo o país. Acreditamos que todos os seres merecem respeito, proteção e uma vida digna.</p>
      </div>
    </div>
  </section>

  <!-- Como Funciona -->
  <section id="como-funciona">
    <div class="container titulo-central">
      <h2>Como Funciona</h2>
      <p>Entenda o processo de denúncia e como garantimos segurança e eficácia.</p>
    </div>
    <div class="container passos">
      <div class="passo">
        <div class="icon">📷</div>
        <h3>Registre Evidências</h3>
        <p>Tire fotos ou vídeos dos maus-tratos, se possível.</p>
      </div>
      <div class="passo">
        <div class="icon">📝</div>
        <h3>Preencha o Formulário</h3>
        <p>Descreva o ocorrido com o máximo de detalhes.</p>
      </div>
      <div class="passo">
        <div class="icon">📬</div>
        <h3>Envio Seguro</h3>
        <p>Seus dados são protegidos. A denúncia é anônima.</p>
      </div>
    </div>
  </section>

  <main>
    <section id="formulario" class="form-container" aria-labelledby="titulo-formulario">
      <h2 id="titulo-formulario">Registrar Denúncia</h2>
      <form id="denunciaForm" novalidate>
        <label for="descricao">Descrição:<span aria-hidden="true">*</span></label>
        <textarea id="descricao" name="descricao" rows="4" required aria-required="true"
          placeholder="Descreva o caso com o máximo de detalhes possíveis"></textarea>

          <div class="form-group">
            <label for="fotos">Anexar foto (opcional):</label>
            <input type="file" id="fotos" name="fotos" multiple accept="image/*" />
          </div>

        <label for="localizacao" id="localmimni">Localização:<span aria-hidden="true">*</span></label>
        <input type="text" id="localizacao" name="localizacao" placeholder="Endereço ou ponto de referência" required
          aria-required="true" />

        <label for="categoria">Categoria:<span aria-hidden="true">*</span></label>
        <select id="categoria" name="categoria" required aria-required="true">
          <option value="" disabled selected>Selecione</option>
          <option value="Abandono">Abandono</option>
          <option value="Maus-tratos">Maus-tratos</option>
          <option value="Negligência">Negligência</option>
          <option value="Violência física">Violência física</option>
          <option value="Violência psicológica">Violência psicológica</option>
          <option value="Acúmulo e insalubridade">Acúmulo e insalubridade</option>
          <option value="Exploração e uso indevido">Exploração e uso indevido</option>
          <option value="Tráfico e comércio ilegal">Tráfico e comércio ilegal</option>
          <option value="Outros">Outros</option>
        </select>

        <label for="localizacao">E-mail:<span aria-hidden="true">*</span></label>
        <input type="text" id="e-mail" name="localizacao" placeholder="E-mail" required
          aria-required="true" />

          <label for="localizacao">Telefone:<span aria-hidden="true">*</span></label>
        <input type="text" id="telefone" name="localizacao" placeholder="Telefone" required
          aria-required="true" />

        <label for="nome">Deseja se identificar? (Opcional)</label>
        <input type="text" id="nome" name="nome" placeholder="Seu nome" />

        <p class="aviso-privacidade">
          🔒 Suas informações são sigilosas e protegidas. Você pode denunciar de forma anônima.
        </p>

        <button type="submit" class="btn-primary" onclick="alertDenuncia()">Enviar Denúncia</button>
      </form>
      <div id="msg-sucesso" class="msg-sucesso" role="alert" aria-live="polite"></div>
    </section>

     <!-- Estatísticas -->
  <section id="estatisticas">
    <div class="container titulo-central">
      <h2>Estatísticas</h2>
      <p>Acompanhe o impacto do nosso trabalho.</p>
    </div>
    <div class="container cards">
      <div class="card">
        <h4>2.300+</h4>
        <p>Denúncias recebidas nos últimos 12 meses.</p>
      </div>
      <div class="card">
        <h4>1.800</h4>
        <p>Casos encaminhados para autoridades locais.</p>
      </div>
      <div class="card">
        <h4>850</h4>
        <p>Animais resgatados com sucesso.</p>
      </div>
    </div>
  </section>

 <!-- FAQ -->
<section id="faq">
  <div class="container titulo-central">
    <h2>Dúvidas Frequentes</h2>
    <p>Tire suas dúvidas antes de denunciar.</p>
  </div>

  <div class="container">
    <div class="faq-item">
      <div class="faq-question">A denúncia é anônima?</div>
      <div class="faq-answer">Sim. Nenhum dado pessoal é obrigatório. Você pode denunciar de forma completamente anônima.</div>
    </div>
    <div class="faq-item">
      <div class="faq-question">Para onde vai minha denúncia?</div>
      <div class="faq-answer">As denúncias são analisadas por nossa equipe e encaminhadas para autoridades competentes da sua região.</div>
    </div>
  </div>
</section>


  <!-- Modal -->
  <div class="modal" id="modalSucesso">
    <div class="modal-content">
      <h3>Denúncia enviada com sucesso</h3>
      <p>Obrigado por colaborar. Sua denúncia foi registrada e será analisada por nossa equipe.</p>
      <button id="btnModalOk">OK</button>
    </div>
  </div>


  <footer>
    <div class="footer-container">
      <p>© 2025 ProtejaAnimais. Todos os direitos reservados.</p>
      <p>
        Contato:
        <a href="mailto:contato@protejaanimais.org">contato@protejaanimais.org</a> |
        (11) 99999-9999
      </p>
      <p>
        Desenvolvido com <span aria-label="coração" role="img">❤️</span> por Você
      </p>
    </div>
  </footer>
</body>

</html>
