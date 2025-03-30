# Dotfiles

Este repositorio contiene mi configuración personal para mi entorno de desarrollo. Incluye archivos de configuración para herramientas como `zsh`, `neovim`, `tmux`, `git`, y otros programas que uso a diario.

## Requisitos

- **Linux** (mi entorno principal es Parrot con BSPWM)
- **zsh** como shell
- **Neovim** (con configuración de NvChad)
- **Git** para gestión de versiones
- **Tmux** para manejo de sesiones
- Otros programas según se detalla abajo

## Instalación

### Clonación del repositorio

Clona este repositorio en tu máquina:

```bash
git clone https://github.com/Facu00H/dotfiles.git ~/.dotfiles
```

### Configuración

Una vez que hayas clonado el repositorio, puedes crear enlaces simbólicos (`symlinks`) a tus archivos de configuración para que sean utilizados por el sistema. Ejemplo:

```bash
cd ~/.dotfiles
stow zsh
stow nvim
stow tmux
```

Este comando crea enlaces simbólicos a los archivos de configuración en las ubicaciones correspondientes en tu sistema. Asegúrate de tener instalado [stow](https://www.gnu.org/software/stow/) para facilitar este proceso.

### Instalación de Dependencias

Dependiendo de tus herramientas y programas, es posible que necesites instalar algunas dependencias adicionales. Puedes usar tu gestor de paquetes para instalarlas. Algunas de las más comunes son:

```bash
sudo pacman -S zsh neovim tmux git stow
```

### Personalización

Si deseas personalizar alguno de los archivos de configuración, puedes editar los archivos correspondientes dentro de este repositorio y luego hacer `stow` nuevamente.

## Herramientas y Configuraciones Incluidas

- **Zsh**: Configuración de `zsh` con temas y plugins (utilizando [Zsh Powerlevel10k](https://github.com/romkatv/powerlevel10k)).
- **Neovim**: Configuración con [NvChad](https://github.com/NvChad/NvChad).
- **Tmux**: Configuración básica para sesiones de terminal.
- **Git**: Configuración personalizada para el flujo de trabajo con Git.

## Notas

Si alguna vez necesitas restablecer las configuraciones, puedes eliminar los enlaces simbólicos y volver a crear los nuevos con el comando `stow`.

```bash
rm ~/.zshrc
rm ~/.vimrc
```

¡Ya está listo! Solo tendrás que pegarlo en tu archivo `README.md` y hacer cualquier personalización que desees.


