# 前提
開発ディレクトリを`$HOME/dev/src/github.com/kecbigmt`としている(違う場合はコマンドや.vimrcを修正する必要があります)

# 使用方法

下記を実行

```
$ cd $HOME/dev/src/github.com/kecbigmt
$ git clone git@github.com:kecbigmt/vim.git
$ ln -s $HOME/dev/src/github.com/kecbigmt/vim ~/.vimrc
$ vim
```

.vimrc を読み込める状態にした上で vim を実行することで必要なライブラリがインストールされます
この際、ライブラリはインストールするだけで実際に使える状態にないため、一度 `:wq` で vim を抜けた上で再度 vim を立ち上げると設定が反映された状態になります
