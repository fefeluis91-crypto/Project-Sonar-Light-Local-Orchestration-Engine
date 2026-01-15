l.PHONY: lint

lint:
	@echo "🔍 Iniciando a verificação de estilo (Lint)..."
	@docker run --rm -v $(CURDIR):/app -w /app golangci/golangci-lint golangci-lint run controllers/ database/ models/ routes/ > /dev/null 2>&1 || (echo "❌ ERRO: Seu código está bagunçado! Rode o lint localmente para ver os erros." && exit 1)
	@echo "✅ SUCESSO: Código limpo e padronizado! Deu tudo certo."
test:
	@docker compose exec app go test ./... > /dev/null 2>&1 || (echo "❌ ERRO: O teste falhou!" && exit 1)
	@echo "✅ SUCESSO: Deu tudo certo!"
start:
	docker compose up -d
clean:
	clear
aviso:
	@echo "--- O TESTE PASSOU! DEU TUDO CERTO! ---"
	@echo "Deu tudo certo!"

ci: start lint test clean aviso

push-seguro: ci
	@git add .
	@git commit -m "$(m)"
	@git push origin HEAD
	@echo "🚀 ✅ SUCESSO: Tudo enviado! Agora vá ao GitHub abrir o PR."