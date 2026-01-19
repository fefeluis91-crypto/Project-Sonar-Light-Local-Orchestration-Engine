# 🚀 Projeto Go: Integração Contínua com GitHub Actions

Este projeto foi desenvolvido para estudar e aplicar conceitos modernos de **CI/CD (Continuous Integration / Continuous Deployment)**, garantindo que o código seja testado, padronizado e validado automaticamente a cada mudança.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Go (Golang)
* **Banco de Dados:** Postgres (via Docker)
* **Containerização:** Docker & Docker Compose
* **Padronização:** GolangCI-Lint
* **Automação de CI:** GitHub Actions
* **Produtividade:** Makefile

---

## 🤖 Esteira de Integração Contínua (CI)

O projeto conta com um workflow automatizado no **GitHub Actions** que é disparado em todo `push` ou `pull_request` para a branch `main`. A esteira executa os seguintes passos:

1.  **Ambiente:** Sobe containers Docker para a aplicação e o banco de dados.
2.  **Linting:** Analisa a qualidade e o estilo do código com `golangci-lint`.
3.  **Testes Unitários:** Executa a suite de testes em Go para garantir que nenhuma funcionalidade foi quebrada.



---

## ⚡ Atalhos de Produtividade (Makefile)

Para agilizar o desenvolvimento local, criei comandos personalizados que automatizam tarefas repetitivas:

| Comando | Descrição |
| :--- | :--- |
| `make lint` | Roda o linter no código localmente. |
| `make test` | Executa os testes unitários dentro do container. |
| `make push-seguro m="mensagem"` | **O comando mestre:** Roda o lint, os testes e, se tudo passar, faz o commit e o push automaticamente. |

---

## 🧠 Aprendizados Principais

* **Isolamento de Ambiente:** Uso de Docker para garantir que o teste rode igual na minha máquina e no servidor.
* **Fail-Fast:** A importância de detectar erros no Lint e nos Testes antes mesmo de abrir um Pull Request.
* **Infraestrutura como Código:** Configuração de workflows YAML para gerenciar servidores de CI.

---

## 💡 Como rodar localmente


1.  Clone o repositório.
2.  Certifique-se de ter o Docker instalado.
3.  Use o comando abaixo para subir suas alterações com segurança:
    ```bash
    make push-seguro m="seu commit"
    ```
