# Sistema Operacional

- [ZorinOS](https://zorin.com/os/)
- [Ubuntu Desktop LTS Verssion](https://ubuntu.com/download/desktop)

# Softwares

- ## [Google Chrome](https://www.google.pt/intl/pt-PT/chrome/?brand=CHBD&gclid=CjwKCAjwmrn5BRB2EiwAZgL9ouuCrvB9uc8UqESZQ9TouoMSfvgUUcZCEvs8G9ysJynbshGDIaarhRoCQWoQAvD_BwE&gclsrc=aw.ds)

- ## [Gnome Vitals](https://extensions.gnome.org/extension/1460/vitals/)

- ## [OH-MY-ZSH](https://ohmyz.sh/)

```bash
sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

  -   ## ZSH Plugins
    
        - [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
        
        - [spaceship theme](https://spaceship-prompt.sh/getting-started/)
        
        - [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
        

- ## [asdf](https://asdf-vm.com/#/core-manage-asdf)

```
. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
```
- ## [Visual Studio Code](https://code.visualstudio.com/docs/setup/linux)

- ## [Vim]()

- ## [Postman](https://www.postman.com/)

- ## [Draw.io](https://snapcraft.io/drawio)

- ## [DevDocs](https://github.com/freeCodeCamp/devdocs)

- ## [Spotfy](https://www.spotify.com/br/)

- ## [DBeaver](https://dbeaver.io/)

- ## [Redis Desktop Manager](https://snapcraft.io/redis-desktop-manager)

- ## .zshrc

```
ZSH_THEME="spaceship"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
```

# Visual Studio Code Extensions

- Better TOML
- Brazilian Portuguese - CodeSpellChecker
- Code Spell Checker
- CodeLLBD
- CodeMetrics
- Color Highlight
- Docker
- DotENV
- Dracula Official
- EditorConfig for Vs Code
- Error Lens
- ESLint
- GitLens
- Import Cost
- JavaScript and TypeScript Nighly
- Jest Test Explorer
- Material Icon Theme
- Mocha Test Explorer
- Mono Debug
- Portugese (Brazil) Language Pack
- Power Mode
- Prettier - Code formatter
- Rust Test Explorer
- Rust Analyzer
- SOnarQube Project Status
- Test Explorer Status Bar
- Test Explorer UI
- TSLint
- Vim
- Visual Studio IntelliCode
- vscode-proto3
- YAML
- Depency Cruiser Extension
- Go
- Go Nightly
- Go Test Explorer

# Visual Studio Code - settings.json

```js
{
    //@Start Editor Configs 
      "editor.unicodeHighlight.allowedCharacters": {
        " ": true
      },
      "workbench.colorTheme": "Dracula",
      "workbench.editor.enablePreview": false,
      "workbench.iconTheme": "material-icon-theme",
      "editor.fontSize": 18,
      "editor.lineHeight": 24,
      "editor.rulers": [140, 160], // Margin right to limeted code
      "editor.tabSize": 2,
      "editor.renderLineHighlight": "gutter",
      "terminal.integrated.fontSize": 14,
      "breadcrumbs.enabled": true,
      "editor.parameterHints.enabled": false,
      "explorer.confirmDelete": false,
      "editor.codeActionsOnSave": {
        "source.fixAll.eslint": true
      },
      "editor.suggestSelection": "first",
      "editor.multiCursorModifier": "ctrlCmd",
      "javascript.updateImportsOnFileMove.enabled": "never",
      "explorer.compactFolders": false,
      "editor.inlineSuggest.enabled": true,
      "editor.linkedEditing": true,
    //@End Editor Config
      
    //@Start Typescript Configs
      "[typescript]": {
        "editor.formatOnSave": false
      },
      "[typescriptreact]": {
        "editor.formatOnSave": false
      },
      "typescript.updateImportsOnFileMove.enabled": "always",
      "typescript.inlayHints.variableTypes.enabled": true,
      "typescript.inlayHints.enumMemberValues.enabled": true,
      "typescript.inlayHints.functionLikeReturnTypes.enabled": true,
      "typescript.inlayHints.parameterNames.enabled": "all",
      "typescript.inlayHints.parameterNames.suppressWhenArgumentMatchesName": true,
      "typescript.inlayHints.parameterTypes.enabled": true,
      "typescript.inlayHints.propertyDeclarationTypes.enabled": true,
    //@End Typescript Configs
      
    //@Start Golang Configs
      "go.formatTool": "goimports",
      "gopls": {
        "buildFlags": ["-tags=wireinject bin",],
        "experimentalWorkspaceModule": true
      },
      "go.useLanguageServer": true,
      "go.toolsManagement.autoUpdate": true,
      // "go.buildTags": "bin",
    //@End Golang Configs
      
    //@Start Javascript Configs
      "[javascript]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
      },
      "javascript.inlayHints.variableTypes.enabled": true,
      "javascript.inlayHints.enumMemberValues.enabled": true,
      "javascript.inlayHints.functionLikeReturnTypes.enabled": true,
      "javascript.inlayHints.parameterNames.enabled": "all",
      "javascript.inlayHints.parameterNames.suppressWhenArgumentMatchesName": true,
      "javascript.inlayHints.parameterTypes.enabled": true,
      "javascript.inlayHints.propertyDeclarationTypes.enabled": true,
    //@End Javascript Configs
      
    //@Start Rust Configs
      "[rust]": {
        "editor.formatOnSave": true,
        "editor.defaultFormatter": "matklad.rust-analyzer",
      },

      "rust-analyzer.cargo.noDefaultFeatures": true,
      "rust-analyzer.cargo.allFeatures": true,
    //@End Rust Configs
    
    //@Start Vim Configs
    "vim.handleKeys": {
      "<C-d>": false,
      "<C-f>": false,
      "<C-w>": false,
      "<C-a>": false,
      "<C-x>": false,
    },
    //@End Vim Configs
    
    //@Start PowerMode Configs
      "powermode.enabled": true,
      "powermode.shake.enabled": false,
      "powermode.combo.counterEnabled": "hide",
      "powermode.combo.timerEnabled": "hide",
    //@End PowerMode Configs

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
    "prettier.printWidth": 200,
    "emmet.syntaxProfiles": {
      "javascript": "mjs"
    },
    "emmet.includeLanguages": {
      "javascript": "javascriptreact"
    },
    "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
    "[json]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "workbench.startupEditor": "none",
    "tabnine.experimentalAutoImports": true,
    "bracketPairColorizer.depreciation-notice": false,

    //@Start cSpell Configs
      "cSpell.language": "en,pt_BR",
      "cSpell.userWords": [
        "actix",
        "alphanum",
        "amqp",
        "atoi",
        "awilix",
        "bson",
        "cnpj",
        "Cnpj",
        "datetime",
        "dbname",
        "Dont",
        "dotenv",
        "dtos",
        "ecomm",
        "evals",
        "fastify",
        "gonic",
        "gorm",
        "grpc",
        "hateoas",
        "idempotency",
        "IHTTP",
        "jwemanager",
        "kubectl",
        "Kubelet",
        "Kubernetes",
        "middlewares",
        "mongodb",
        "MONGODB",
        "mtest",
        "opentelemetry",
        "postgres",
        "rabbitmq",
        "redismock",
        "statfull",
        "stretchr",
        "traceparent",
        "Tx's",
        "uber",
        "unitofwork",
        "usecases",
        "uuid",
        "uuidv"
      ],
      "redhat.telemetry.enabled": false,
    //@End cSpell Configs
}
```

# Linux Visual Studio Code - keybindings.json

```js
[
  { "key": "ctrl+shift+f",          
    "command": "workbench.action.navigateForward" 
  },
  {
    "key": "ctrl+shift+o",
    "command": "workbench.action.navigateBack"
  },
  {
    "key": "ctrl+shift+0",
    "command": "editor.action.showHover",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+k ctrl+i",
    "command": "-editor.action.showHover",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+shift+0",
    "command": "editor.debug.action.showDebugHover",
    "when": "editorTextFocus && inDebugMode"
  },
  {
    "key": "ctrl+k ctrl+i",
    "command": "-editor.debug.action.showDebugHover",
    "when": "editorTextFocus && inDebugMode"
  },
]
```

# Mac Visual Studio Code - keybindings.json

```js
[
  { "key": "ctrl+shift+f",          
    "command": "workbench.action.navigateForward" 
  },
  {
    "key": "ctrl+shift+o",
    "command": "workbench.action.navigateBack"
  },
  {
    "key": "ctrl+shift+0",
    "command": "editor.action.showHover",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+k ctrl+i",
    "command": "-editor.action.showHover",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+shift+0",
    "command": "editor.debug.action.showDebugHover",
    "when": "editorTextFocus && inDebugMode"
  },
  {
    "key": "ctrl+k ctrl+i",
    "command": "-editor.debug.action.showDebugHover",
    "when": "editorTextFocus && inDebugMode"
  },
  {
    "key": "ctrl+f12",
    "command": "editor.action.goToImplementation",
    "when": "editorHasImplementationProvider && editorTextFocus && !isInEmbeddedEditor"
  },
  {
    "key": "cmd+f12",
    "command": "-editor.action.goToImplementation",
    "when": "editorHasImplementationProvider && editorTextFocus && !isInEmbeddedEditor"
  },
  {
    "key": "ctrl+alt+f10",
    "command": "editor.action.referenceSearch.trigger"
  },
]
```
  {
