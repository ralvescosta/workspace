# Sistema Operacional

- [Ubuntu Desktop LTS Verssion](https://ubuntu.com/download/desktop)

# Softwares

- ## [Google Chrome](https://www.google.pt/intl/pt-PT/chrome/?brand=CHBD&gclid=CjwKCAjwmrn5BRB2EiwAZgL9ouuCrvB9uc8UqESZQ9TouoMSfvgUUcZCEvs8G9ysJynbshGDIaarhRoCQWoQAvD_BwE&gclsrc=aw.ds)

- ## [Gnome Vitals](https://extensions.gnome.org/extension/1460/vitals/)

- ## [OH-MY-ZH](https://ohmyz.sh/)

```
sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

- ## asdf(https://asdf-vm.com/#/core-manage-asdf)

```
. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
```
- ## [Visual Studio Code](https://code.visualstudio.com/docs/setup/linux)

- ## [Insominia Design](https://support.insomnia.rest/article/23-installation#ubuntu)

- ## [Ulauncher](https://ulauncher.io/)

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

- ## .zshrc

```
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
```

# Visual Studio Code Extensions

- Auto Complete Tag
- Babel JavaScript
- Bracket Pair Colorizer
- Code Spell Checker
- Color Highligth
- Debbuger for Chrome
- Docker
- DotENV
- Dracula Official
- EditorConfig for Vs Code
- ESLint
- Import Cost
- Material Icon Theme
- Prettier - Code formatter
- Visual Studio IntelliCode
- vscode-styled-components
- Better TOML
- Brazilian Portuguese
- codeLLBD
- Depency Cruiser Extension
- Go
- Go Nightly
- Go Test Explorer
- Jest Runner
- Rust Analyzer

# Environment

- ## [React Native](https://react-native.rocketseat.dev/)

# Visual Studio Code - settings.json

```json
{
    "workbench.colorTheme": "Dracula",
    "workbench.editor.enablePreview": false,
    "workbench.iconTheme": "material-icon-theme",
    "editor.fontSize": 18,
    "editor.lineHeight": 24,
    "[typescript]": {
      "editor.formatOnSave": false
    },
    "[typescriptreact]": {
      "editor.formatOnSave": false
    },
    "[rust]": {
      "editor.formatOnSave": true,
      "editor.defaultFormatter": "matklad.rust-analyzer",
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
    "editor.rulers": [140, 160], // Margin right to limeted code
    "prettier.printWidth": 200,
    "editor.tabSize": 2,
    "editor.renderLineHighlight": "gutter",
    "terminal.integrated.fontSize": 14,
    "emmet.syntaxProfiles": {
      "javascript": "mjs"
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
    "explorer.compactFolders": false,
    "[javascript]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "editor.multiCursorModifier": "ctrlCmd",
    "typescript.updateImportsOnFileMove.enabled": "always",
    "go.formatTool": "goimports",
    "gopls": {
      "buildFlags": ["-tags=wireinject"],
      "experimentalWorkspaceModule": true
    },
    "go.useLanguageServer": true,
    "editor.linkedEditing": true,
    "go.toolsManagement.autoUpdate": true,
    "rust-analyzer.cargo.noDefaultFeatures": true,
    "rust-analyzer.cargo.allFeatures": true,
    "[json]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "editor.inlineSuggest.enabled": true,
    "workbench.startupEditor": "none",
    "tabnine.experimentalAutoImports": true,
    "bracketPairColorizer.depreciation-notice": false,
    "powermode.enabled": true,
    "powermode.enableShake": false,
    "cSpell.language": ["en", "pt_BR"],
    "cSpell.userWords": [
      "actix",
      "amqp",
      "awilix",
      "datetime",
      "dotenv",
      "dtos",
      "ecomm",
      "fastify",
      "grpc",
      "hateoas",
      "idempotency",
      "middlewares",
      "opentelemetry",
      "rabbitmq",
      "traceparent",
      "usecases"
    ]
  }
```
# Visual Studio Code - keybindings.json

```json
[
  { "key": "ctrl+shift+f",          "command": "workbench.action.navigateForward" },
  { "key": "ctrl+shift+b",          "command": "workbench.action.navigateBack" },
]
```

