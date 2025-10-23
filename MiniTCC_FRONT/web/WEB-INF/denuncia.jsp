<%@ page import="java.io.*, java.net.*, javax.servlet.*, javax.servlet.http.*, java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // === CHAVE SECRETA DO reCAPTCHA ===
    String secretKey = "6LejlewrAAAAIkNyDdMwl7ZFr7sylhdboORhtB8"; // mantenha essa chave segura (não publique)

    // Obtendo a resposta do reCAPTCHA do formulário
    String gRecaptchaResponse = request.getParameter("g-recaptcha-response");

    // Verifica se o usuário respondeu ao reCAPTCHA
    if (gRecaptchaResponse != null && !gRecaptchaResponse.isEmpty()) {
        try {
            // Faz a conexão com a API do Google reCAPTCHA
            URL url = new URL("https://www.google.com/recaptcha/api/siteverify");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("POST");
            con.setDoOutput(true);

            // Monta os parâmetros a serem enviados
            String postParams = "secret=" + secretKey + "&response=" + gRecaptchaResponse;

            try (OutputStreamWriter writer = new OutputStreamWriter(con.getOutputStream())) {
                writer.write(postParams);
                writer.flush();
            }

            // Lê a resposta JSON do Google
            StringBuilder response = new StringBuilder();
            try (BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()))) {
                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }
            }

            // Verifica se o reCAPTCHA foi validado com sucesso
            if (response.toString().contains("\"success\": true")) {

                // === COLETA OS DADOS DO FORMULÁRIO ===
                String descricao = request.getParameter("descricao");
                String foto = request.getParameter("foto");
                String localizacao = request.getParameter("localizacao");
                String categoria = request.getParameter("categoria");
                String nome = request.getParameter("nome");

                // === CONEXÃO COM O BANCO ===
                String dbUrl = "jdbc:mysql://localhost:3306/proteja_animais"; // coloque o nome do seu banco
                String dbUser = "root"; // seu usuário MySQL
                String dbPass = "";     // sua senha (se tiver)

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver"); // garante que o driver JDBC do MySQL está carregado
                    Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

                    String sql = "INSERT INTO denuncias (descricao, foto, localizacao, categoria, nome) VALUES (?, ?, ?, ?, ?)";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setString(1, descricao);
                    stmt.setString(2, foto);
                    stmt.setString(3, localizacao);
                    stmt.setString(4, categoria);
                    stmt.setString(5, nome);

                    int linhas = stmt.executeUpdate();

                    if (linhas > 0) {
                        out.println("<h3>✅ Denúncia registrada com sucesso!</h3>");
                    } else {
                        out.println("<h3>⚠️ Não foi possível registrar a denúncia. Tente novamente.</h3>");
                    }

                    stmt.close();
                    conn.close();
                } catch (Exception e) {
                    out.println("<h3>Erro ao salvar a denúncia: " + e.getMessage() + "</h3>");
                }

            } else {
                out.println("<h3>❌ Falha na verificação reCAPTCHA. Tente novamente.</h3>");
            }

        } catch (Exception e) {
            out.println("<h3>Erro: " + e.getMessage() + "</h3>");
            e.printStackTrace();
        }
    } else {
        out.println("<h3>⚠️ Por favor, complete a verificação reCAPTCHA.</h3>");
    }
%>
