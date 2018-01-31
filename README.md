# Setup Mac

## Prepare
1. Connect internet
1. Setting iCloud
1. Update OSX

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
$ mkdir -p ~/.config/filezilla
$ ln -s ~/gd/settings/filezilla/sitemanager.xml ~/.config/filezilla/sitemanager.xml
```

#### shell
##### fish
```bash
$ ln -s ~/gd/settings/shell/config.fish ~/.config/fish/config.fish
$ set -g theme_display_date no
$ ghq get powerline/fonts
$ ~/.ghq/github.com/powerline/fonts/install.sh
```
`Source Code Pro for Powerline` フォントをiTerm2、VSCodeなどに登録する

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

#### adobe
adobeのサイトにログインしてインストーラーを取得する

#### office 365
officeのサイトにログインしてインストーラーを取得する

#### alfred
`Preferences` → `advanced` → 右下のSet Sync folderで<br>
`~/gd/settings/alfred/` を選択する

#### Boostnote
設定から`~/gd/settings/boostnote`を追加する

#### メール
`~/Library/Mail/V5/MailData`
`~/Library/Containers/com.apple.mail`
を上書きコピペする
アカウントは再ログインする


#### VSCode
プラグインをいれてgistで管理する
[Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
`sync download`からシークレットキー、gist idを入力する
`sync auto download`もトグルオンにしておく

※シークレットキーは再発行で
https://github.com/settings/tokens

#### Atom
setting-syncをいれる
設定からシークレットキー、gist idを入力する
sync backupするだけ
※シークレットキーは丸裸で確認できる