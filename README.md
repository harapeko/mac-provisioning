# Setup Mac

## Prepare
1. Connect internet
1. Setting iCloud
1. Update OSX

## Usage

1. GUIでサインインする for mas-cli.
Signin command disabled on macOS 10.13+
https://github.com/mas-cli/mas/issues/164

2021/03/21現在mas1.8.0から1.8.1にあげるとエラーが発生する。
なのでmas1.8.0で実行する必要がある

```zsh
#% cp provisioning/host_vars/localhost.example provisioning/host_vars/localhost
#% vi provisioning/host_vars/localhost
```

2. Execute

```zsh
% make
```

3. Apply

```fish
# 再起動しないと、キーボード設定などは反映されない
$ sudo shutdown -r now
```

## Manual
### Screen Saver
- <a href="http://nyancatsaves.com/" target="_blank">Nyan Cat Screen Saver for Mac OS X</a>
- 開けないと言われたら
- `open /Library/Screen\ Savers/`
- `nyancat.saver` を右クリック⇨開く

### Track Pad Configuration(確認用)
- [ポイントとクリック](./manual/osx-defaults/01.png)
- [スクロールとズーム](./manual/osx-defaults/02.png)
- [その他のジェスチャ](./manual/osx-defaults/03.png)

### dotfiles(Google Backup Sync, Symbolic link)
#### ssh

```zsh
% ln -s ~/gdev/settings/ssh ~/.ssh
```

#### shell
##### fish
```zsh
% ln -s ~/gdev/settings/shell/config.fish ~/.config/fish/config.fish
```
`Source Code Pro for Powerline` フォントをiTerm2、VSCodeなどに登録する

##### zsh(見直す：たまにfishの記号が使いづらいから使うこともあるでしょう)
```bash
$ ln -s ~/gdev/settings/shell/.zshrc ~/.zshrc
```

#### git
```bash
$ ln -s ~/gdev/settings/git/.gitmessage ~/.gitmessage
$ ln -s ~/gdev/settings/git/.gitignore_global ~/.gitignore_global
$ ln -s ~/gdev/settings/git/.gitconfig ~/.gitconfig
# そのほか、ここにはかけないgit configがあればそちらも同期する
```

#### subl3(見直すので保留)
```bash
$ ln -s ~/gdev/settings/subl3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
```

#### dash
`cmd + ,` → `General` → `Syncing` で `~/gdev/settings/dash` を選択する

#### iTerm2
- 現在使っている端末のSettingをsync nowしてから行うと設定がしっかり同期される
- `cmd + ,` → `General` → `Preferences` で
- `Startup` タブで Window restoration policyがUse System Window Restoration Settingで使いたいならば、警告をクリックして、アプリケーションを閉じるときにウィンドウを閉じるのチェックを外す(趣味)
-  `Preferences` タブで `Load preference from a custom folder or URL.`
  - `~/gdev/settings/iterm2` を選択する
  - Save changes を Automatically にする

#### terminal
`cmd + ,` → プロファイル → 左下の歯車アイコン → 読み込む →
`~/gdev/settings/terminal/Solarized Light.terminal`

#### alfred
option ダブルタップに設定

`Preferences` → `advanced` → 右下のSet Sync folderで<br>
`~/gdev/settings/alfred/` を選択する

clipboard機能有効。shortcutをcにする

#### Boostnote(nextが出てるらしいので確認する)
設定から`~/gdev/settings/boostnote`を追加する

#### adobe
adobeのサイトにログインしてインストーラーを取得する

#### VSCode
プラグインをいれてgistで管理する
[Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
- `sync Advanced Options` → `LOGIN WITH GITHUB` をクリックして、ログインし、どのgistでsyncすると聞かれるので正しいものを選択する(一番上にきてると思う)
- `EDIT CONFIRMATION` → 自動ダウンロード、自動アップロード、拡張機能の削除、拡張機能の同期にチェックする(Windowは縦長にしないと全部見えない)

#### Other
- chrome
- 解像度最大
- ATOK
- MYKI
- jetbrains
  - `plugins: IDE Settings SYNC` をONにする
- rectangle
- pixel snap
- clean shot x
  - 保存場所をScreenShotsに
- drop box
- アクセシビリティ
  - ズーム機能。スクロールとジェスチャー
- Finder
  - サイドバーにhobby, ScreenShotsを追加する
- キーボード
  - Touch Barに表示する項目：F1, F2などのキー
  - 地球儀キーを押して：音声入力
  - 押したままでControl Strip
  - 就職キー → Caps Lock アクションなし

<details>
<summary>deprecateds</summary>
<div>
##### bash(deprecated)
```zsh
% ln -s ~/gdev/settings/shell/.bash_profile ~/.bash_profile
% ln -s ~/gdev/settings/shell/.bashrc ~/.bashrc
```

#### filezilla(deprecated: 一時期malware入ってたし、jetbrainsの方が高性能なので)
filezillaで不可視ディレクトリを見たい時は `cmd + .` を押す
```zsh
% mkdir -p ~/.config/filezilla
% ln -s ~/gdev/settings/filezilla/sitemanager.xml ~/.config/filezilla/sitemanager.xml
```

#### hosts(deprecated: 自宅と会社で完全に分けるし、今は特に使っていないので困らない)
```bash
$ ln -s ~/gdev/settings/hosts /etc/hosts
```

#### メール(これなんでだっけ？)
`~/Library/Mail/V5/MailData`
`~/Library/Containers/com.apple.mail`
を上書きコピペする
アカウントは再ログインする

#### Atom(deprecated)
setting-syncをいれる
設定からシークレットキー、gist idを入力する
sync backupするだけ
※シークレットキーは丸裸で確認できる
</div>
</details>
