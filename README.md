<h1 align="center">
  Catppuccin Powerlevel10k Themes
</h1>
<p align="center">
  <img src="./.github/assets/logo.png"/>
</p>

[**Powerlevel10k**](https://github.com/romkatv/powerlevel10k) themes inspired by
the [**Catppuccin**](https://catppuccin.com/) color palettes. These themes are
available in multiple styles and support all four Catppuccin palettes: **🌻
Latte**, **🪴 Frappé**, **🌺 Macchiato**, and **🌿 Mocha**.

## Available Themes

Below is a list of available themes, which can be found in the
[themes folder](./themes).

---

### Lean

A compact and focused theme for those who prefer a cleaner and distraction-free
interface.

![Lean Theme Screenshot](./.github/assets/lean.png)

---

### Classic

A balanced and minimalistic design with clean lines, perfect for users seeking
simplicity.

![Classic Theme Screenshot](./.github/assets/classic.png)

---

### Rainbow

A vibrant and colorful theme for users who love a playful and expressive look.

![Rainbow Theme Screenshot](./.github/assets/rainbow.png)

---

### Pure

A sleek and elegant design with minimal decorations, inspired by the
[Pure prompt](https://github.com/sindresorhus/pure). Ideal for a modern and
refined look.

![Pure Theme Screenshot](./.github/assets/pure.png)

---

### RobbyRussell

The classic Powerlevel10k RobbyRussell layout reimagined with Catppuccin
palettes. Inspired by the original
[Oh My Zsh RobbyRussell theme](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/robbyrussell.zsh-theme).

![RobbyRussell Theme Screenshot](./.github/assets/robbyrussell.png)

## Installation

To use Catppuccin Powerlevel10k themes, first install
[Powerlevel10k](https://github.com/romkatv/powerlevel10k).

> [!TIP]
>
> For the `lean`, `classic`, and `rainbow` themes, it is highly recommended to
> use the **Meslo Nerd Font**, which comes bundled with Powerlevel10k. You can
> find installation instructions in the
> [Powerlevel10k documentation](https://github.com/romkatv/powerlevel10k#fonts).

---

### Installation Methods

#### Manual Installation

1. Download the desired theme file from the [themes folder](./themes) of this
   repository.
2. Place the theme file in the directory `${ZDOTDIR:-$HOME}/.p10k.zsh`.
3. Add the following line to your `.zshrc` file to load the theme:
   ```zsh
   [[ ! -f ${ZDOTDIR:-$HOME}/.p10k.zsh ]] || source ${ZDOTDIR:-$HOME}/.p10k.zsh
   ```
4. Restart your terminal or run `source ~/.zshrc` to apply changes.

---

#### Plugin Manager Installation

This repository supports installation via popular Zsh plugin managers. Add the
following to your plugin manager configuration to install both Powerlevel10k and
Catppuccin themes:

##### Antidote

Add the following lines to your `.zshrc` file:

```zsh
antidote bundle romkatv/powerlevel10k
antidote bundle tolkonepiu/catppuccin-powerlevel10k-themes
```

> [!IMPORTANT]
>
> Place `tolkonepiu/catppuccin-powerlevel10k-themes` **after** >
> `romkatv/powerlevel10k` to ensure proper theme loading.

---

##### Zinit

Add the following to your `.zshrc`:

```zsh
zinit light romkatv/powerlevel10k
zinit light tolkonepiu/catppuccin-powerlevel10k-themes
```

---

##### Znap

Add the following to your `.zshrc`:

```zsh
znap source romkatv/powerlevel10k
znap source tolkonepiu/catppuccin-powerlevel10k-themes
```

---

##### Zplug

Add the following to your `.zshrc`:

```zsh
zplug "romkatv/powerlevel10k"
zplug "tolkonepiu/catppuccin-powerlevel10k-themes"
```

Then, run the following command to install:

```zsh
zplug install
```

---

### Theme Initialization and Customization

After installation, initialize your theme and make custom modifications in your
`.p10k.zsh` file.

Example:

```zsh
# Initialize the theme
apply_catppuccin lean mocha

# Customize the prompt character color
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=$P10K_COLOR_PEACH
```

Make sure to reload your configuration to apply changes:

```zsh
source ~/.p10k.zsh
```

---

## Contributing

Contributions are welcome! If you’d like to add more templates, themes, or
improve the documentation, feel free to open a pull request.

All changes to themes or additions of new themes should be made in the
[templates directory](./templates). These templates are written using **Jinja**
syntax and are the source for generating the final themes.

To generate themes, the [Whiskers](https://github.com/catppuccin/whiskers) tool
by Catppuccin is used. Below is an example of how to generate a theme:

```sh
whiskers templates/robbyrussell.tera
```

After making changes, be sure to regenerate the themes and verify that the
changes work as expected.

---

## License

This repository is licensed under the [MIT License](LICENSE).