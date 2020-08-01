# Sistema Operacional

- [Ubuntu Desktop LTS Verssion](https://ubuntu.com/download/desktop)

# Softwares

- ## [Gnome Freon Sensors](https://extensions.gnome.org/extension/841/freon/)

- ## [OH-MY-ZH](https://ohmyz.sh/)

```
sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

- ## [NVM](https://github.com/nvm-sh/nvm)

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

```

Abra o arquivo .zshrc na raiz do do HD e copie:

```
export NVM_DIR="/home/rafael/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
```

- ## [Yarn](https://yarnpkg.com/en/docs/install)

- ## [Visual Studio Code](https://code.visualstudio.com/docs/setup/linux)

- ## [Insominia Design](https://support.insomnia.rest/article/23-installation#ubuntu)

- ## [Android Studio](https://developer.android.com/studio)

- ## [Figma-linux - snap](https://snapcraft.io/figma-linux)

- ## [Draw.io](https://snapcraft.io/drawio)

- ## [DevDocs](https://github.com/freeCodeCamp/devdocs)

- ## [Spotfy](https://www.spotify.com/br/)

- ## [Slack](https://slack.com/intl/pt-br/)

- ## [Microfst Teams](https://snapcraft.io/teams-for-linux)

- ## [DBeaver](https://dbeaver.io/)

- ## [Redis Desktop Manager](https://snapcraft.io/redis-desktop-manager)

- ## [Git Kraken](https://snapcraft.io/gitkraken)

- ## [Tex Live](https://linuxconfig.org/how-to-install-latex-on-ubuntu-18-04-bionic-beaver-linux)

- ## [Text Studio]()

# Visual Studio Code Extensions

- Auto Complete Tag
- Auto Rename Tag
- Babel JavaScript
- Bracket Pair Colorizer
- C/C++
- Code Spell Checker
- Color Highligth
- Color Picker
- Debbuger for Chrome
- Docker
- DotENV
- Dracula Official
- EditorConfig for Vs Code
- ES7 React/Redux/GraphQL
- ESLint
- FLow Language Suprote
- Git Blame
- Handlebars
- Import Cost
- markdownlint
- Material Icon Theme
- npm
- npm intelisense
- Path Intellisense
- Prettier - Code formatter
- React Native Tools
- Rocketseat React Native
- Rocketseat ReactJS
- Search node_modules
- Settings Sync
- Visual Studio IntelliCode
- vscode-styled-components

# Environment

- ## [React Native](https://react-native.rocketseat.dev/)

# Visual Studio Code - Settings.json

```json
{
  "workbench.colorTheme": "Dracula",
  "workbench.iconTheme": "material-icon-theme",
  "editor.fontSize": 18,
  "editor.lineHeight": 24,
  "editor.formatOnSave": false, //Formata antes de salvar
  "[typescript]": {
    "editor.formatOnSave": false
  },
  "[typescriptreact]": {
    "editor.formatOnSave": false
  },
  "eslint.validate": [
    "javascript",
    "javascriptreact",
    {
      "language": "typescript",
      "autoFix": true
    },
    {
      "language": "typescriptreact",
      "autoFix": true
    }
  ],
  "editor.rulers": [80, 120], // Margin right to limeted code
  "editor.tabSize": 2,
  "editor.renderLineHighlight": "gutter",
  "terminal.integrated.fontSize": 14,
  "emmet.syntaxProfiles": {
    "javascript": "jsx"
  },
  "emmet.includeLanguages": {
    "javascript": "javascriptreact"
  },
  "javascript.updateImportsOnFileMove.enabled": "never",
  "breadcrumbs.enabled": true,
  "editor.parameterHints.enabled": false,
  "explorer.confirmDelete": false,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },
  "editor.suggestSelection": "first",
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
  "cSpell.userWords": [
    "Rbac",
    "crossorigin"
  ],
  "explorer.compactFolders": false,
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "editor.multiCursorModifier": "ctrlCmd",
  "typescript.updateImportsOnFileMove.enabled": "always"
}
```
