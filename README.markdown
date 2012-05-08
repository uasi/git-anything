git-anything
============

あらゆるコマンドを git のサブコマンドにしてしまえてなんだか便利になるやつです。

`bin` にパスを通すだけで`git echo hoge` でも `git ruby fuga.rb` でも `git shutdown -h now` でもやりたい放題です。

`gen-git-anything.sh [bindir]` を実行すると、
パスの通った場所にある実行ファイルを全部 git のサブコマンドにして bindir （省略時は $PWD）に書き出します。
