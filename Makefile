# Directorio de trabajo y configuración
.PHONY: install lint test help

# Ayuda por defecto
help:
	@echo "Comandos disponibles:"
	@echo "  make install  - Instala utilidades necesarias para desarrollo local"
	@echo "  make lint     - Ejecuta el linter de markdown"
	@echo "  make test     - Ejecuta test de validación (actualmente lint)"

# Instalar dependencias locales (Node/NPM)
install:
	@echo "Instalando dependencias locales con npm..."
	npm install

# Ejecutar markdownlint
lint:
	@echo "Corriendo Markdown Linter..."
	npm run lint

# Tests (en un repositorio de readme, esto es linting)
test: lint
	@echo "Tests pasados ✔"
