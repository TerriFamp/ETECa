// ======= FORM DE DENÚNCIA =======
const form = document.getElementById("denunciaForm");
const modal = document.getElementById("modalSucesso");
const btnOk = document.getElementById("btnModalOk");

if (form) {
  form.addEventListener("submit", function (e) {
    e.preventDefault();

    const descricao = document.getElementById("descricao").value.trim();
    const localizacao = document.getElementById("localizacao").value.trim();
    const categoria = document.getElementById("categoria").value;
    const email = document.getElementById("e-mail").value.trim();
    const telefone = document.getElementById("telefone").value.trim();
    const nome = document.getElementById("nome").value.trim() || "Anônimo";

    if (!descricao || !localizacao || !categoria || !email || !telefone) {
      alert("⚠️ Por favor, preencha todos os campos obrigatórios marcados com * antes de enviar.");
      return;
    }

    const denuncia = {
      descricao,
      localizacao,
      categoria,
      email,
      telefone,
      nome,
      data: new Date().toLocaleString("pt-BR"),
      status: "Pendente",
    };

    const denuncias = JSON.parse(localStorage.getItem("denuncias")) || [];
    denuncias.push(denuncia);
    localStorage.setItem("denuncias", JSON.stringify(denuncias));

    modal.style.display = "flex";
    form.reset();
  });

  btnOk.addEventListener("click", () => {
    modal.style.display = "none";
  });

  window.addEventListener("click", (event) => {
    if (event.target === modal) modal.style.display = "none";
  });
}

// ======= FAQ INTERATIVA =======
document.addEventListener("DOMContentLoaded", () => {
  const faqItems = document.querySelectorAll(".faq-item");

  faqItems.forEach((item) => {
    item.addEventListener("click", () => {
      faqItems.forEach((i) => {
        if (i !== item) i.classList.remove("active");
      });
      item.classList.toggle("active");
    });
  });
});
