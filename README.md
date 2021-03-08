# Setup Mac

## Prepare
1. Connect internet
1. Setting iCloud
1. Update OSX

## Usage

1. Apple ID for mas-cli.

```zsh
% cp provisioning/host_vars/localhost.example provisioning/host_vars/localhost
% vi provisioning/host_vars/localhost
```

2. Execute

```zsh
% make
```

3. Apply

```zsh
% sudo shutdown -r now
```

## Manual
### Screen Saver
- <a href="http://nyancatsaves.com/" target="_blank">Nyan Cat Screen Saver for Mac OS X</a>
- 開けないと言われたら
- `open /Library/Screen\ Savers/`
- `nyancat.saver` を右クリック⇨開く

### Track Pad Configuration
- [ポイントとクリック](./manual/osx-defaults/01.png)
- [スクロールとズーム](./manual/osx-defaults/02.png)
- [その他のジェスチャ](./manual/osx-defaults/03.png)

### dotfiles(Google Backup Sync, Symbolic link)
#### ssh

```zsh
% ln -s ~/gdev/settings/ssh ~/.ssh
```

#### filezilla(deprecated)
filezillaで不可視ディレクトリを見たい時は `cmd + .` を押す
```zsh
% mkdir -p ~/.config/filezilla
% ln -s ~/gdev/settings/filezilla/sitemanager.xml ~/.config/filezilla/sitemanager.xml
```

#### shell
##### fish
```zsh
% ln -s ~/gdev/settings/shell/config.fish ~/.config/fish/config.fish
% set -g theme_display_date no
```
`Source Code Pro for Powerline` フォントをiTerm2、VSCodeなどに登録する

##### bash(deprecated)
```zsh
% ln -s ~/gdev/settings/shell/.bash_profile ~/.bash_profile
% ln -s ~/gdev/settings/shell/.bashrc ~/.bashrc
```

##### zsh(deprecated)
```bash
$ ln -s ~/gdev/settings/shell/.zshrc ~/.zshrc
```

#### hosts
```bash
$ ln -s ~/gdev/settings/hosts /etc/hosts
```

#### git
```bash
$ ln -s ~/gdev/settings/git/.gitmessage ~/.gitmessage
$ ln -s ~/gdev/settings/git/.gitignore_global ~/.gitignore_global
$ ln -s ~/gdev/settings/git/.gitconfig ~/.gitconfig
```

#### subl3
```bash
$ ln -s ~/gdev/settings/subl3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
```

#### dash
`cmd + ,` → `General` → `Syncing` で `~/gdev/settings/dash` を選択する

#### iTerm2
`cmd + ,` → `General` → `Preferences` で<br>
`Load preference from a custom folder or URL.` →<br>
 `~/gdev/settings/iterm2` を選択する

#### terminal
`cmd + ,` → 左下の歯車アイコン → 読み込む →
`~/gdev/settings/terminal/Solarized Light.terminal`

#### alfred
`Preferences` → `advanced` → 右下のSet Sync folderで<br>
`~/gdev/settings/alfred/` を選択する

#### Boostnote
設定から`~/gdev/settings/boostnote`を追加する

#### メール(これなんでだっけ？)
`~/Library/Mail/V5/MailData`
`~/Library/Containers/com.apple.mail`
を上書きコピペする
アカウントは再ログインする

#### adobe
adobeのサイトにログインしてインストーラーを取得する

#### VSCode
プラグインをいれてgistで管理する
[Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
`sync download`からシークレットキー、gist idを入力する
`sync auto download`もトグルオンにしておく

※シークレットキーは再発行で
https://github.com/settings/tokens

#### Atom(deprecated)
setting-syncをいれる
設定からシークレットキー、gist idを入力する
sync backupするだけ
※シークレットキーは丸裸で確認できる
