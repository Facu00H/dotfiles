#!/bin/bash

# Asegurarse de que el script se ejecuta con privilegios adecuados
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script debe ejecutarse como root o con permisos adecuados."
    exit 1
fi

# Clonar los submódulos si los tienes
echo "Clonando submódulos..."
git submodule update --init --recursive

# Crear enlaces simbólicos para las configuraciones
echo "Creando enlaces simbólicos..."

# Configuración de Zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh

# Configuración de NvChad
ln -sf ~/dotfiles/nvim ~/.config/nvim

# Configuración de Polybar
ln -sf ~/dotfiles/polybar ~/.config/polybar

# Configuración de Picom
ln -sf ~/dotfiles/picom ~/.config/picom

# Configuración de Kitty
ln -sf ~/dotfiles/kitty ~/.config/kitty

# Configuración de Rofi
ln -sf ~/dotfiles/rofi ~/.config/rofi

# Plugins de Zsh
ln -sf ~/dotfiles/zsh-plugins ~/.dotfiles/zsh-plugins

echo "Enlaces simbólicos creados."

# Reinstalar los plugins de Zsh si es necesario
echo "Instalando plugins de Zsh..."

# Zsh-Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions

# Zsh-Syntax-Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/plugins/zsh-syntax-highlighting

# Zsh-Autocomplete
git clone https://github.com/marlonrichert/zsh-autocomplete ~/.zsh/plugins/zsh-autocomplete

# Hacer la instalación de NvChad
echo "Instalando NvChad..."
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

echo "Todo está listo. ¡Reinicia tu terminal y Neovim!"

#!/bin/bash

# Instalar Nerd Fonts
if [ ! -d "$HOME/.dotfiles/fonts" ]; then
  echo "Descargando e instalando Nerd Fonts..."
  git clone https://github.com/ryanoasis/nerd-fonts.git $HOME/.dotfiles/fonts
  cd $HOME/.dotfiles/fonts
  ./install.sh
  cd ..
else
  echo "Nerd Fonts ya está instalado."
fi

# Otros pasos de configuración...

