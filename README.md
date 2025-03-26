# nvim-config

```
git clone https://github.com/georgi2411/nvim-config.git ~/.config/nvim
```

## Prerequisites

- [LazyGit](https://github.com/jesseduffield/lazygitci)
- [RipGrep](https://github.com/BurntSushi/ripgrep#installation)
- [Fd](https://github.com/sharkdp/fd#installation)

For 'avente' plugin make sure to build it first

- 'cd ~/.local/share/nvim/lazy/avante.nvim'
- 'make'

### Plugin Config Object

- `name` : Name of the plugin [Optional]
- `set`: Plugins to install together [Optional]
- `repo_path` : Plugin repo path
- `lazy` : Plugin to be lazy loaded [Optional]
- `event` : Event upon the plugin should load [Optional]
- `enabled` : Plugin enabled
- `dependancies` : Plugin dependancies [Optional]
- `config` : Plugin config overrides [Optional]
- `configFunc` : Plugin config overrides with dependancies and can't run setup twice [Optional]
- `build` : Executed when a plugin is installed or updated [Optional]
- `artifacts` : Plugin scripts to be invoked after plugin is loaded [Optional] 

