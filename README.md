# Setup Mac

## Usage

1. Apple ID for mas-cli.

```bash
$ cp provisioning/host_vars/localhost.example provisioning/host_vars/localhost
$ vi provisioning/host_vars/localhost
```

2. Execute

```bash
$ make
```

## Manual
### Screen Saver
- <a href="http://nyancatsaves.com/" target="_blank">Nyan Cat Screen Saver for Mac OS X</a>

### Track Pad Configuration
- [ポイントとクリック](./manual/osx-defaults/01.png)
- [スクロールとズーム](./manual/osx-defaults/02.png)
- [その他のジェスチャ](./manual/osx-defaults/03.png)

### dotfiles(Google Backup Sync, Symbolic link)
#### ssh
filezillaのために本体は通常のディレクトリにしておく
```bash
$ ln -s ~/gd/settings/ssh ~/.ssh
```

#### filezilla
```bash
$ ln -s ~/gd/settings/filezilla/sitemanager.xml ~/.config/filezilla/sitemanager.xml
```

#### shell
##### fish
```bash
$ ln -s ~/gd/settings/shell/config.fish ~/.config/fish/config.fish
```

##### bash(deprecated)
```bash
$ ln -s ~/gd/settings/shell/.bash_profile ~/.bash_profile
$ ln -s ~/gd/settings/shell/.bashrc ~/.bashrc
```

##### zsh(deprecated)
```bash
$ ln -s ~/gd/settings/shell/.zshrc ~/.zshrc
```

#### hosts
```bash
$ ln -s ~/gd/settings/hosts /etc/hosts
```

#### git
```bash
$ ln -s ~/gd/settings/git/.gitmessage ~/.gitmessage
$ ln -s ~/gd/settings/git/.gitignore_global ~/.gitignore_global
$ ln -s ~/gd/settings/git/.gitconfig ~/.gitconfig
```

#### subl3
```bash
$ ln -s ~/gd/settings/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
```

#### dash
`cmd + ,` → `General` → `Syncing` で `~/gd/settings/dash` を選択する

#### iTerm2
`cmd + ,` → `General` → `Preferences` で<br>
`Load preference from a custom folder or URL.` →<br>
 `~/gd/settings/iterm2` を選択する

#### terminal
`cmd + ,` → 左下の歯車アイコン → 読み込む →
`~/gd/settings/terminal/Solarized Light.terminal`

#### atom
同期設定する