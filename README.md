# MiniProjeto Banco de Dados - Plataforma de Gestão Educacional

Bem-vindo ao projeto-base para o estudo de fundamentos de banco de dados!  
Aqui, você e sua turma vão aprender, na prática, como modelar, criar e manipular um banco de dados relacional usando PostgreSQL, Docker e ferramentas modernas de modelagem.

---

## 🚀 Objetivo

Desenvolver o modelo lógico e físico de um banco de dados para uma **plataforma de gestão educacional**, abordando desde a modelagem (diagrama ER) até a implementação e manipulação via SQL.

---

## 🧩 Entidades e Relacionamentos

O projeto contempla as principais entidades de um sistema escolar:

- **Escola**: Dados como nome, CNPJ, endereço.
- **Turma**: Identificação, série, ano.
- **Disciplina**: Nome, carga horária.
- **Professor**: Nome, CPF, titulação.
- **Aluno**: Nome, matrícula, data de nascimento.
- **Matrícula**: Relaciona alunos às turmas.
- **Alocação**: Relaciona professores, disciplinas e turmas.

O diagrama entidade-relacionamento (ER) está disponível neste repositório:

- [`Diagrama ER.drawio`](./Diagrama%20ER.drawio) (editável)
- [`Diagrama ER.jpg`](./Diagrama%20ER.jpg) (visualização rápida)

---

## 🛠️ Tecnologias Utilizadas

- **PostgreSQL**: Sistema gerenciador de banco de dados relacional.
- **Docker & Docker Compose**: Para facilitar a configuração e execução do banco de dados.
- **SQL**: Linguagem para criação e manipulação das tabelas e dados.

---

## 🐳 Como rodar o projeto com Docker

1. **Pré-requisitos**
   - [Docker](https://www.docker.com/get-started) e [Docker Compose](https://docs.docker.com/compose/) instalados.

2. **Clone o repositório**
   ```sh
   git clone https://github.com/seu-usuario/MiniProjeto_Banco_Dados_Postgres.git
   cd MiniProjeto_Banco_Dados_Postgres
   ```

3. **Suba o banco de dados**
   ```sh
   docker-compose up -d
   ```

4. **Acesse o banco**
   - Host: `localhost`
   - Porta: `5432`
   - Usuário: `postgres`
   - Senha: `postgres`
   - Banco: `educacional`

5. **Crie as tabelas**
   - Execute o script SQL:
     ```sh
     docker exec -i postgres-db psql -U postgres -d educacional < create-tables.sql
     ```
   - Ou use um cliente gráfico (DBeaver, TablePlus, etc.) para rodar o `create-tables.sql`.

---

## 📂 Estrutura do Projeto

- `create-tables.sql` — Script SQL para criar as tabelas e relacionamentos.
- `docker-compose.yml` — Configuração do ambiente Docker/Postgres.
- `Diagrama ER.drawio` — Arquivo editável do diagrama ER.
- `Diagrama ER.jpg` — Imagem do diagrama ER.
- `README.md` — Este arquivo.

---

## 💡 Dicas para a Turma

- Explore o diagrama ER e entenda cada relacionamento.
- Modifique o script SQL para testar novos cenários.
- Use o Docker para não se preocupar com instalações locais.
- Experimente inserir, consultar e alterar dados usando SQL.

---

## 🤝 Contribua!

Sugestões, melhorias ou dúvidas? Fique à vontade para abrir uma issue ou um pull request.

---

**Bons estudos e mãos à obra!** 🚀

