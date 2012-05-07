git-anything
============

あらゆるコマンドを git のサブコマンドにしてしまえてなんだか便利になるやつです。

`gen-git-anything.sh [bindir]` を実行すると、
パスの通った場所にある実行ファイルを全部 git のサブコマンドにして bindir （省略時は $PWD）に書き出します。
あとは `git echo hoge` でも `git ruby fuga.rb` でもやりたい放題です。

ものぐさな人のために Mac OS X 10.7 上で生成したサブコマンド群を同梱しておきました。パス通せばすぐ使える。
