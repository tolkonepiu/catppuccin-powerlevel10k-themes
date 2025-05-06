# Define the apply_catppuccin function
apply_catppuccin() {
    local theme="$1"
    local flavour="$2"

    # Check if both arguments are provided
    if [[ -z "$theme" || -z "$flavour" ]]; then
        echo "Error: Both theme and flavour must be provided."
        echo "Usage: apply_catppuccin <theme> <flavour>"
        return 1
    fi

    # List of valid Catppuccin flavours
    local valid_flavours=("latte" "frappe" "macchiato" "mocha")

    # Check if the provided flavour is valid
    if [[ ! " ${valid_flavours[@]} " =~ " ${flavour} " ]]; then
        echo "Error: Invalid flavour '${flavour}'."
        echo "Valid flavours are: ${valid_flavours[*]}."
        return 1
    fi

    # Construct the path to the theme file
    local theme_file="${${(%):-%x}:A:h}/themes/.p10k-${theme}-catppuccin-${flavour}.zsh"

    # Check if the theme file exists
    if [[ ! -f "$theme_file" ]]; then
        echo "Error: Theme '${theme}' not found."
        return 1
    fi

    # Source the theme file
    source "$theme_file"

    # Check if the p10k.zsh file exists
    if [[ -f "${ZDOTDIR:-$HOME}/.p10k.zsh" ]]; then
        # Explicitly set POWERLEVEL9K_CONFIG_FILE to the .p10k.zsh file
        typeset -g POWERLEVEL9K_CONFIG_FILE="${ZDOTDIR:-$HOME}/.p10k.zsh"
    else
        unset POWERLEVEL9K_CONFIG_FILE
    fi
}

autoload -Uz zstyle

local _theme _flavour
if zstyle -s ':catppuccin:p10k' theme _theme &&
   zstyle -s ':catppuccin:p10k' flavour _flavour; then
    apply_catppuccin "$_theme" "$_flavour"
fi
