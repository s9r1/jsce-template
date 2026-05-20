## 概要

土木学会論文集への投稿原稿をLaTeXで作成する。

## アーキテクチャ

- `src/`: 原稿本文。`main.tex`がエントリポイント。`secN.tex`は`main.tex`にsubfilesパッケージを使って取り込まれる。
- `style/`: スタイル一式。`main.tex`で使用する`jjsce.cls`や`jjsce-macros.sty`が入っている。
- `latexindent.yaml`: 日本語原稿では句読点に「．」と「，」を用いるが、latexindentの実行で置換できるよう設定している。

## ユーザーの使い方

ユーザーはVSCodeを用いて編集＆ビルドする。
デフォルトではファイル保存時にlatexmkによるビルドが行われ、中間ファイルは`.aux/`に、ビルド成果物は`out/`に生成される。
ビルドの際は`style/`がTEXINPUTSとBSTINPUTSに付け加えられる。
またlatexindentも実行され、フォーマット＆句読点置換が行われる。

## 参考文献管理

デフォルトでは`src/main.bib`と`style/jsce.bst`を使ってupbibtexでビルドする。
ユーザーの指示があればそれ以外の方法（`main.tex`直書きなど）も可。

## 注意事項

- `main.tex`の変更は必要最低限にすること。
- `style/*`は変更しないこと。
- `*.tex`のビルドはユーザーの指示がなければ行わないこと。
- 句読点の置換はlatexindentで直すので気にしなくて良い。
