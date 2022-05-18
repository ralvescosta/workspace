# VsCode


## Visual Studio Code Extensions

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


## Mac Visual Studio Code - keybindings.json

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
