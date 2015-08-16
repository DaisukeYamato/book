icu.cls --- pLaTeX2e class file for ICU thesis

鈴木　聡（ID#021409/NS--E）

icu.clsは国際基督教大学学士論文用に作られたクラスファイルです。
また，このクラスファイルの利用によるいかなるトラブルに対して，
作者は一切の保証を行わないので，自己責任のもとで使用して下さい。

■準備

以下の説明がよくわからない，という方は，
ひとまず *論文の原稿と同じフォルダにicu.clsを置いて* 御使用下さい。

WindowsやMacintoshであれば，ファイル検索でjarticle.clsを探して，
jarticle.clsのあるフォルダの中にicu.clsを置けば大丈夫なはずです。
場合によってはmktexlsr（またはtexhash，MakeTeXls-R）する必要があります。

UNIXやLinuxの場合もほぼ同様ですが，/usr/share/texmf以下は
管理者権限がないとファイルを置けないというケースが出てきます。
そこで，

1. まず

   $ mkdir ~/texmf/
   $ mkdir ~/texmf/input/

でicu.cls（やその他必要なパッケージなど）を置くディレクトリを作り，
~/texmf/input/の下にicu.clsを置きます。

2. 

   $ echo $SHELL

と打つと/bin/bashか/bin/tcshあたりの答えが返ってくるはずです。

bashならば~/.bash_profileなり~/.bashrcなりに

export TEXINPUTS=.:/usr/share/texmf/{tex,ptex}//:$HOME/texmf/input//

と書いて，

   $ . （書き込んだファイル）

とすればいいでしょう。

tcshならば~/.tcshrcに

setenv TEXINPUTS .:/usr/share/texmf/{tex,ptex}//:$HOME/texmf/input//

と書いて

   % source ~/.tcshrc

です。
あとは適当な場所で作業してもicu.clsは読まれます。
UNIX上でのその他細かな作業環境のカスタマイズに関しては，
中野　賢『日本語LaTeX2eブック』（アスキー）に詳しく出ています。

■使い方

あとは，
\documentclass[doc]{icu}
\usepackage[dvips]{graphicx}   % 必要に応じて
\usepackage{verbatim, amsmath} % 必要に応じて
\title{Motoori Norinaga's Image of Man}
\題名{本居宣長の人間観}        % 日本語の題名
\author{KOKUSAI, Motoko}
\氏名{国際基子}                % 日本語の氏名
\date{March, 2002}             % 「この時には卒業する」という気持ちを込めて
\begin{document}
\maketitle                     % これで中表紙が出力される
\frontmatter                   % これより前置きの類
\tableofcontents\newpage       % 目次
\listoftables\listoffigures    % 表目次・図目次
\include{acknowledgement}
\mainmatter                    % これより本文
\include{introduction}
   .
   .
   .

\end{document}
と元締めのファイルを書いたら，いつも通りの作業で卒論が書けます。
卒論のファイルはヴァージョンごと，章ごとに分けて管理した方が安全です。

日本語の氏名は7文字以内であれば7文字分に均等割されて出力されます。
私のように苗字や名前が1文字で，苗字と名前の間に空白が欲しいと思う方は
\author{鈴木□聡}
と□の部分に全角スペースを入れるときれいに出ます。

■アブストラクトの書き方
もともとpLaTeX2eのjarticle，jreportクラスとも
abstract環境がついていますが，ICUの論文フォーマットには
そぐわない形の出力になってしまいます。
そこで，「先代」icu-thesis.styをベースとして，
和文抄訳環境，ICUabstract環境が用意されています。

和文抄訳については
\begin{和文抄訳}
   .
   .
   .

\end{和文抄訳}
でできます。

英文のアブストラクトが必要ならば，
\begin{ICUabstract}
   .
   .
   .

\end{ICUabstract}
とします。

■オプションの説明
以下のオプションは，\documentclassの直後の[]の中に書くものです。
たとえば，提出用の日本語論文を出力したければ，
\documentclass[comp,ja]{icu}
となります。

doc……下書き用。オプションを何も指定しなければこれになります。
いまのところ，提出用と出力は変わりないはずです。
\frontmatter，\mainmatterで前置き用（シングルスペース），
本文用（ダブルスペース）の切替えができます。

preview……下刷り用。坂口さんの卒論雛型にインスパイアされて
作成されました。目次，表目次，図目次の出力はありません。
すべてシングルスペースの出力となります。

comp……提出用。いまのところdocと出力は変わりません。
何か提案のある方，お待ちしております。

report……元論文をjreportクラスをもとに書いていた場合，
このオプションを指定することでjreport互換となります。

ja……日本語論文を書く時に使います。
表紙の日・英併記部分の順序が逆になり，
本文のインデントも日本語用に全角1文字になります。

mt……修論用オプション（準備中）。

また，jarticle，jreport用のオプションはそのまま使えます。
数式番号を左につけるleqnoや数式を左寄せにするfleqnなど，
もしフォーマットの指定がアドヴァイザーの先生からあれば，
そちらをお使い下さい。