#!/bin/bash

# Script para instalar Homebrew, Git, SDKMAN y Java 17 en macOS

# Colores para resaltado
GREEN='\033[0;32m'
NC='\033[0m' # Sin color

# Paso 1: Instalar Homebrew
echo -e "${GREEN}Instalando Homebrew...${NC}"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Añadir Homebrew al PATH
echo -e "${GREEN}Añadiendo Homebrew al PATH...${NC}"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Verificar la instalación de Homebrew
echo -e "${GREEN}Verificando instalación de Homebrew...${NC}"
brew --version

# Paso 2: Instalar Git usando Homebrew
echo -e "${GREEN}Instalando Git...${NC}"
brew install git

# Verificar la instalación de Git
echo -e "${GREEN}Verificando instalación de Git...${NC}"
git --version

# Paso 3: Instalar SDKMAN
echo -e "${GREEN}Instalando SDKMAN...${NC}"
curl -s "https://get.sdkman.io" | bash

# Recargar el archivo de configuración del shell
echo -e "${GREEN}Recargando configuración del shell para SDKMAN...${NC}"
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Verificar la instalación de SDKMAN
echo -e "${GREEN}Verificando instalación de SDKMAN...${NC}"
sdk version

# Paso 4: Instalar Java 17 usando SDKMAN
echo -e "${GREEN}Instalando Java 17...${NC}"
sdk install java 17.0.8-tem

# Verificar la instalación de Java 17
echo -e "${GREEN}Verificando instalación de Java 17...${NC}"
java -version

echo -e "${GREEN}Instalación completada.${NC}"
