document.getElementById("denunciaForm").addEventListener("submit", function (e) {
    e.preventDefault();
  
    // Pega valores do formulário
    const descricao = this.descricao.value.trim();
    const foto = this.foto.value.trim();
    const localizacao = this.localizacao.value.trim();
    const categoria = this.categoria.value;
    const nome = this.nome.value.trim() || "Anônimo";
  
    // Validação simples
    if (!descricao || !localizacao || !categoria) {
      alert("Por favor, preencha os campos obrigatórios: Descrição, Localização e Categoria.");
      return;
    }
  
    const novaDenuncia = {
      descricao,
      foto,
      localizacao,
      categoria,
      nome,
      data: new Date().toLocaleDateString("pt-BR"),
      status: "Pendente"
    };
  
    // Recupera denúncias anteriores ou inicia array vazio
    const denuncias = JSON.parse(localStorage.getItem("denuncias")) || [];
    denuncias.push(novaDenuncia);
  
    // Salva no localStorage
    localStorage.setItem("denuncias", JSON.stringify(denuncias));
  
    // Mostra mensagem de sucesso
    const msg = document.getElementById("msg-sucesso");
    msg.textContent = "Denúncia enviada com sucesso! Obrigado por ajudar.";
    msg.style.color = "#0a7d28";
  
    // Limpa formulário
    this.reset();
  
    // Scroll suave para mensagem
    msg.scrollIntoView({ behavior: "smooth" });
  
    // Remove mensagem após 5 segundos
    setTimeout(() => {
      msg.textContent = "";
    }, 5000);

    document.getElementById("denunciaForm").addEventListener("submit", function (e) {
      e.preventDefault();
  
      const nome = document.getElementById("nome").value.trim() || "Anônimo";
      const descricao = document.getElementById("descricao").value.trim();
      const localizacao = document.getElementById("localizacao").value.trim();
      const categoria = document.getElementById("categoria").value;
      const foto = document.getElementById("foto").value.trim(); // URL da imagem
      const data = new Date().toLocaleString("pt-BR");
      const status = "Pendente";
  
      if (!descricao || !localizacao || !categoria) {
        alert("Por favor, preencha todos os campos obrigatórios.");
        return;
      }
  
      const novaDenuncia = { nome, descricao, localizacao, categoria, foto, data, status };
  
      // Recupera as denúncias antigas, adiciona a nova e salva de novo
      const denuncias = JSON.parse(localStorage.getItem("denuncias")) || [];
      denuncias.push(novaDenuncia);
      localStorage.setItem("denuncias", JSON.stringify(denuncias));
  
      alert("✅ Denúncia registrada com sucesso!");
      document.getElementById("denunciaForm").reset();
    });
  });

  // FAQ toggle
document.querySelectorAll('#faq .faq-item').forEach(item => {
  item.addEventListener('click', () => {
    const answer = item.querySelector('.faq-answer');
    if (answer.style.display === 'block') {
      answer.style.display = 'none';
    } else {
      answer.style.display = 'block';
    }
  });
});

const formDenuncia = document.getElementById('formDenuncia');
const modalSucesso = document.getElementById('modalSucesso');
const btnModalOk = document.getElementById('btnModalOk');

formDenuncia.addEventListener('submit', function(event) {
  event.preventDefault();

  // Aqui você pode adicionar envio real para backend (API, Firebase, etc)
  // Por enquanto, só abre modal

  modalSucesso.style.display = 'flex';

  // Limpa formulário após envio
  formDenuncia.reset();
});

btnModalOk.addEventListener('click', () => {
  modalSucesso.style.display = 'none';
});

  
