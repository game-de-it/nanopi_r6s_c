# R6S/C用のretroarchとAetherSX2のバイナリファイル

# 概要
公式OSのubuntuではapt,snap,flatpakでインストール可能なretroarchの動作がとても重いため、SFCをプレイするのがやっとなほどです
そのため、独自にビルドしたretroarchをzip化して配布します
また、PS2エミュのAetherSX2のAppimageファイルもzipファイルに同梱しています
zipファイルのダウンロードはこちら
AetherSX2の公式サイトはこちら
※公式OSイメージの [rk3588-sd-ubuntu-jammy-desktop-5.10-arm64-20230719] にて動作確認済み

# retroarch利用方法
1. ファイルマネージャーを起動して、ダウンロードしたzipファイルを右クリックして[Extract Her]で解凍します
- ※retroarchとAetherSX2のファイルにスターをつけておくと、画面左ペインの[Stared]から簡単に呼び出すことができます
2. 本体がネットワークに接続されていることを確認してからretroarchをダブルクリックで起動して[Online Updater]→[Update Asset]を実行します
3. 一度retroarchを修了してからファイルマネージャーの右上にあるメニュー→[Show Hidden Files]で隠しファイルを表示させます
4. zipファイル解凍したフォルダ内にある[retroarch.cfg]ファイルをコピーします
5. [Home]→[.config]→[retroarch]フォルダ内で貼り付けしてretroarch.cfgファイルを上書き(replace)します
6. retroarchを起動して各種フォルダの設定をします
- BIOSフォルダは[設定]→［ディレクトリ］→［システム/BIOS］で設定します
- ROMフォルダは[設定]→［ディレクトリ］→[ファイルブラウザ]で設定します
  - ※セーブファイル、ステートセーブファイル、ステートセーブ時のスナップショットは実行中のromフォルダ内に自動的に保存される設定にしてあります

以上  

# AetherSX2利用方法
1. デスクトップの何もないところで右クリックして[Open in Terminal]を実行します
2. 下記のコマンド入力してパスワードはpiを入力します
```
sudo apt install -y fuse
```
3. AetherSX2-v1.5-3606.Appimageを実行します

以上
   

