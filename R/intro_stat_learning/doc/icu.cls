%
% icu.cls  version 0.5b
%
% SUZUKI Satoshi, January 26 2002
% n021409@yamata.icu.ac.jp
%
% このクラスファイルはpLaTeX2eでの利用を前提としている。
% 使用の際は，
% \documentclass[comp]{icu}
% などとすること。デフォルトでは草稿用のフォーマットとなる。
% 詳細はREADME.txtを読まれたい。 
%
% このクラスファイルは，以下のクラスファイル，ないしパッケージ，
% そして文献を参考にした。
% 
% [1] 藤田眞作 1995 LaTeXマクロの八衢 アジソン・ウェスレイ・パブリッシャーズ・ジャパン
% [2] 国際基督教大学教務課（編） 2001 2001年度履修の手引 国際基督教大学
% [3] 岡田　崇・坂口修一 2001 ICU大学院理学研究科・教養学部理学科用学位論文印刷用 pLaTeX2e 用スタイルファイル
% (http://www.sakaguti.gr.jp/syuiti/thesis-hina/icu-thesis.sty, December 27, 2001)
% [4] 奥村晴彦 2001 "jsarticle.cls"
% (http://www.matsusaka-u.ac.jp/~okumura/jsclasses/jsclasses.lzh, December 27, 2001) 
% [5] Protopapas, A. 1999. "apa.cls version 1.23."
% CTAN macros/latex/contrib/other/apa/apa.cls
% (http://www.ring.gr.jp/archives/text/CTAN/macros/latex/contrib/other/apa/apa.cls, December 27, 2001)
% [6] Tobin, G. 2000. "setspace.sty version 6.7."
% CTAN macros/latex/contrib/supported/setspace.sty
% (http://www.ring.gr.jp/archives/text/CTAN/macros/latex/contrib/supported/setspace.sty, December 27, 2001)
% 
% 卒業論文のフォーマット定義は [2] によった。
% 全体的なクラスファイルの構成は [5] をベースとしている。
% その他のリソースは細かな出力の調整のためにマクロ定義を
% 拝借したものがほとんどである。
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Upgrade Log:
%
% January 26, 2002
% 0.5b  行間調整の機能を外す。
%       差し当たりsetspaceパッケージを用いて解決されたい。
%
% January 1, 2002
% 0.42b バグ修正。\ProvideClass命令の日付の書式を間違えたため
%       タイプセット時にエラーが出る問題を解決。
% 0.41b クラスファイルの変更はなし。著作権の記述の変更を行った。
%
% December 28, 2001
% 0.4b  eqnarray環境の左寄せ数式のアキ対策を行った。
%       \backmatterの前でも改ページが行われるようにした。
%       念のため，和文抄訳環境とICUabstract環境の前でも
%       改ページが行われるようにした
%       （別ファイルに書いて\includeすることを奨める）。 
%
% December 27, 2001
% 0.31b \mainmatterの前で改ページが行われるようにした。
% 0.3b  コメントを整理した。
%       eqnarrayのアキ対策を行った。
%
% December 26, 2001
% 0.2b  日本語論文用のオプションを作成。
% 
% December 25, 2001
% 0.1b  ひとまず仕上げ用，プレビュー用，草稿用のフォーマットが完成。
%       現時点では仕上げ用，草稿用とも同じ出力になる。
%       現在の案としては草稿用もそのまま印刷して提出できる形にしておいて
%       仕上げ用はjsarticle＋txfontsの読み込みにしようかと考えている。
%
% To-Dos:
% 
% 日本語論文用の出力の微調整（行間がやや狭いか？）。
% 修論向けフォーマットをつくる
% （これは当分先になりそう。難しくはなさそうだが）。
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%==== 前口上

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icu}[2002/01/26 ICU Thesis Format v0.5b by SUZUKI S.]

%==== オプション各種の定義

\DeclareOption{comp}{% 仕上げ用
\def\def@comp{\@compmode}
}

\DeclareOption{preview}{% プレビュー用
\def\def@preview{\@previewmode}
}

\DeclareOption{doc}{% 草稿用
\def\def@doc{\@docmode}
}

\DeclareOption{mt}{% 修論オプション（準備中）
\def\def@mt{\@mtmode}
}

\DeclareOption{report}{% jreportで書いた場合
\def\def@report{\@reportmode}
}

\DeclareOption{ja}{% 日本語論文オプション
\def\def@ja{\@jamode}
}

\DeclareOption{fleqn}{
\def\def@fleqn{\@fleqnmode}
}

\DeclareOption*{%
\PassOptionsToClass{\CurrentOption}{jarticle}%
%\ClassWarning{icu}{Supported options are: comp, preview, doc, mt, report, ja}
}

\ProcessOptions

%==== デフォルトは草稿用に

\@ifundefined{def@comp}{%
 \@ifundefined{def@preview}{%
  \@ifundefined{def@doc}{%
   \def\def@doc{\@docmode}
   \ClassWarningNoLine{icu}{Using default mode (doc) [for draft]}
  }{}
 }{}
}{}

%==== クラスファイルの呼び出し。
%==== デフォルトではjarticleになる。jreportで書き進めていた人は，
%==== \documentclass[report]{icu}
%==== とreportオプションをつければjreportが呼び出されるので
%==== 互換性の問題もクリアしている。

\@ifundefined{def@comp}{}{%
 \@ifundefined{def@report}{%
  \LoadClass[12pt]{jarticle}}{%
  \LoadClass[12pt]{jreport}}
}

\@ifundefined{def@preview}{}{%
 \@ifundefined{def@report}{%
  \LoadClass{jarticle}}{%
  \LoadClass{jreport}}
}

\@ifundefined{def@doc}{}{%
 \@ifundefined{def@report}{%
  \LoadClass[12pt]{jarticle}}{%
  \LoadClass[12pt]{jreport}}
}

%==== 自動均等割マクロ。
%==== 氏名の出力を履修の手引 [2, p. 196]に近い形にするために作成。
%==== 和文の氏名が全角7文字以下になる場合は全角7文字の幅で均等割を行う。
%==== 藤田 [1, pp. 160--163]を参照。

\def\kintou#1#2{% 均等割
 \leavevmode
 \hbox to #1{%
  \kanjiskip=0truept plus 1fill minus 1fill
  \xkanjiskip=\kanjiskip
  #2}}

\def\@namekintou#1{% ちょっと賢い均等割
\settowidth{\@tempdima}{#1}% 名前の長さを計測
\ifdim\@tempdima<6.4zw \kintou{7zw}{#1}% 7文字までなら7文字分
\else \hbox{#1}\fi}

%==== 表紙関係の命令。

\long\def\title#1{\long\def\@title{#1}}
\long\def\題名#1{\long\def\@jtitle{#1}}
\long\def\author#1{\long\def\@author{#1}}
\long\def\氏名#1{\long\def\@jauthor{#1}}
\long\def\date#1{\long\def\@date{#1}}

%==== 日本語論文対応オプションの処理。

%==== jarticleクラスでは\bibnameが，jreportクラスでは\refnameが
%==== それぞれ定義されていない。
%==== このため，両方をいきなり\renewcommandで定義すると
%==== エラーになってしまう。そこで，\defを用いてもよいのだが，
%==== 「未定義ならば定義する」という\providecommand命令で
%==== ここで両方定義しておく。

\providecommand{\refname}{}
\providecommand{\bibname}{}

%==== 英語論文の見出し定義は岡田・坂口 [3]，
%==== 日本語論文の見出し定義は奥村 [4] を流用している。

\@ifundefined{def@ja}{% 以下，英語論文の場合
   \long\def\@titlei{{\sffamily\bfseries\@title}}
   \long\def\@titleii{{\gtfamily\@jtitle}}
   \long\def\with@bstract{付和文抄訳}
   \long\def\@thesisi{A Thesis Presented to the Faculty of\par%
         the International Christian University\par%
         for the Baccalaureate Degree}
   \long\def\@thesisii{国際基督教大学教授会提出学士論文}
   \long\def\@uthori{\@author}
   \long\def\@uthorii{\@namekintou{\@jauthor}}
   \long\def\thesis@dvisori{Thesis Advisor}
   \long\def\thesis@dvisorii{論文指導審査教授}
   \renewcommand{\contentsname}{Contents}          %% 目次
   \renewcommand{\listfigurename}{List of Figures} %% 図の目次
   \renewcommand{\listtablename}{List of Tables}   %% 表の目次
   \renewcommand{\refname}{References}             %% 参考文献(article)
   \renewcommand{\bibname}{References}             %% 参考文献(report)
   \renewcommand{\indexname}{Index}                %% 索引
   \renewcommand{\figurename}{Figure}              %% 図
   \renewcommand{\tablename}{Table}                %% 表
   \renewcommand{\appendixname}{Appendix}          %% 目次での付録の名称
   \renewcommand{\abstractname}{Abstract}          %% 概要
   }{% 以下，日本語論文の場合
   \long\def\@titlei{{\gtfamily\@jtitle}}
   \long\def\@titleii{{\sffamily\bfseries\@title}}
   \long\def\with@bstract{Abstract is in English}
   \long\def\@thesisi{国際基督教大学教授会提出学士論文}
   \long\def\@thesisii{A Thesis Presented to the Faculty of\par%
         the International Christian University\par%
         for the Baccalaureate Degree}
   \long\def\@uthori{\@namekintou{\@jauthor}}
   \long\def\@uthorii{\@author}
   \long\def\thesis@dvisori{論文指導審査教授}
   \long\def\thesis@dvisorii{Thesis Advisor}
   \renewcommand{\contentsname}{目次}              %% 目次
   \renewcommand{\listfigurename}{図目次}          %% 図の目次
   \renewcommand{\listtablename}{表目次}           %% 表の目次
   \renewcommand{\refname}{参考文献}               %% 参考文献(article)
   \renewcommand{\bibname}{参考文献}               %% 参考文献(report)
   \renewcommand{\indexname}{索引}                 %% 索引
   \renewcommand{\figurename}{図}                  %% 図
   \renewcommand{\tablename}{表}                   %% 表
   \renewcommand{\appendixname}{付録}              %% 目次での付録の名称
   \renewcommand{\abstractname}{概要}              %% 概要
}

%==== ページレイアウトの変更 

%==== 長さ関係

\setlength{\topmargin}{0pt}
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\oddsidemargin}{4.6truemm}
\setlength{\evensidemargin}{0pt}
\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-5.5truecm}
\setlength{\footskip}{48truept}
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-5.0truecm}
\addtolength{\textheight}{-\footskip}

%==== フロート関係。奥村 [4] より定義を流用した。
%==== この調節によって，ページに余裕があっても
%==== 図や表が別ページ立てになってしまうことがある程度防げる。

\renewcommand{\topfraction}{.8}
\setcounter{bottomnumber}{1}
\renewcommand{\bottomfraction}{.8}
\setcounter{totalnumber}{3}
\renewcommand{\textfraction}{.1}
\renewcommand{\floatpagefraction}{.8}
\setcounter{dbltopnumber}{2}
\renewcommand{\dbltopfraction}{.8}
\renewcommand{\dblfloatpagefraction}{.8}

%==== 図・表の見出し。岡田・坂口 [3] から流用。

\setlength\abovecaptionskip{12\p@}
\setlength\belowcaptionskip{12\p@}
\long\def\@makecaption#1#2{{\small
  \advance\leftskip1.5truecm
  \advance\rightskip1.5truecm
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}}

%==== 和文抄訳環境。岡田・坂口 [3] を参照。

\newenvironment{和文抄訳}{%
        \newpage
        \begin{center}{\Large 和文抄訳}\end{center}
       %\addcontentsline{toc}{section}{\numberline{}和文抄訳}
        \setcounter{equation}{0}
        \setcounter{footnote}{0}
        \renewcommand{\refname}{References}
        \begin{flushleft}
        \setlength{\parindent}{1zw} \ }
  {\end{flushleft}}

%==== 英文アブストラクト環境。岡田・坂口 [3] を参照。

\newenvironment{ICUabstract}{%
        \newpage
        \begin{center}{\Large Abstract}\end{center}
       %\addcontentsline{toc}{section}{\numberline{}Abstract}
        \setcounter{equation}{0}
        \setcounter{footnote}{0}
        \renewcommand{\refname}{References}
        %\begin{flushleft}
        \setlength{\parindent}{5ex}}
  {}%\end{flushleft}}

%==== ここでは，Tobin [6] よりコマンドをいくつか流用して
%==== 可搬性を高めておく。
%==== なお，シングルスペース・ダブルスペースそれぞれの場合の
%==== \baselinestretchの値も
%==== Tobin [6] のものを参考にしていることを付け加えておく。
%==== ただ，この値が欧文を組む場合の値であるため，
%==== 和文になると事情が変わるであろう。

%==== version 0.5b 注：quote/quotation環境や数式を入れると
%==== 行間調整が狂うバグが出ているので一時的にこの機能を停止する。

%\newcommand{\displayskipstretch}{\baselinestretch}

%\def\setspace@singlespace{1}

%\newcommand{\restore@spacing}{%
%    \par
%    \vskip \parskip
%    \vskip \baselineskip
%  \endgroup
%  \vskip -\parskip
%  \vskip -\baselineskip
%}

%\let\latex@xfloat=\@xfloat
%\def\@xfloat #1[#2]{%
%  \latex@xfloat #1[#2]%
%  \def\baselinestretch{\setspace@singlespace}%
%  \normalsize
%}

%==== 脚注はシングルスペースに。

%\long\def\@footnotetext#1{%
%  \insert\footins{%
%    \def\baselinestretch{\setspace@singlespace}%
%    \reset@font\footnotesize
%    \interlinepenalty\interfootnotelinepenalty
%    \splittopskip\footnotesep
%    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
%    \hsize\columnwidth
%    \@parboxrestore
%    \protected@edef\@currentlabel{%
%      \csname p@footnote\endcsname\@thefnmark
%    }%
%    \color@begingroup
%      \@makefntext{%
%        \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
%    \color@endgroup}}

%\long\def\@mpfootnotetext#1{%
%  \global\setbox\@mpfootins\vbox{%
%    \unvbox \@mpfootins
%    \def\baselinestretch {\setspace@singlespace}%
%    \reset@font\footnotesize
%    \hsize\columnwidth
%    \@parboxrestore
%    \protected@edef\@currentlabel{%
%      \csname p@mpfootnote\endcsname\@thefnmark}%
%    \color@begingroup
%      \@makefntext{%
%       \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
%   \color@endgroup}}

%==== 脚注のラベル定義。ここだけ岡田・坂口 [3] より流用。

\renewcommand\@makefntext[1]{%
  \advance\leftskip 1zw
  \parindent 1zw
  \noindent
  \llap{\@makefnmark\hskip0.3zw}#1}

%\everydisplay\expandafter{%
%  \the\everydisplay
%  \abovedisplayskip \displayskipstretch\abovedisplayskip
%  \belowdisplayskip \displayskipstretch\belowdisplayskip
%  \abovedisplayshortskip \displayskipstretch\abovedisplayshortskip
%  \belowdisplayshortskip \displayskipstretch\belowdisplayshortskip
%}

%==== Tobin [6] からの流用はここまで。

%==== quotation，quote環境のパラメータ変更。
%==== 奥村 [4] を参考に改変した。
%==== 普通欧文の引用は左右にマージンをとるが，
%==== 履修の手引 [2] によれば欧文でも右のマージンをとらないようなので，
%==== 欧文でも和文の引用の定義に従うことにした。
%==== また，quotation, quote環境とも環境内はシングルスペースとなる。

\renewenvironment{quotation}{%
  \list{}{%
    \topsep\baselineskip
    \partopsep\z@
    \listparindent\parindent
    \itemindent\listparindent
    \rightmargin\z@
%    \renewcommand{\baselinestretch}{1.241}\@currsize
    }%
  \item\relax}{\endlist}

\renewenvironment{quote}{%
  \list{}{%
    \topsep\baselineskip
    \partopsep\z@
    \rightmargin\z@
%    \renewcommand{\baselinestretch}{1.241}\@currsize
  }%
  \item\relax}{\endlist}

%==== 論文の前・中・後の体裁に関するコマンド。
%==== コマンドの名前はpLaTeX2e標準のjbookクラスから借りたが
%==== ここでシングルスペース・ダブルスペースの制御もしているので
%==== 動作は少し変わっている。
%==== \backmatterは使い道がなさそうだが，一応定義しておいた。
%==== \begin{document}
%==== \maketitle         % 表紙の出力
%==== \frontmatter       % 「前」部分
%==== \tableofcontents   % 目次
%==== \listoftables      % 表目次
%==== \listoffigures     % 図目次
%==== \mainmatter        % 「中」部分
%==== \include{abstract} % アブストラクト
%====   . . .
%====
%==== という形で用いる。

\newcommand{\frontmatter}{%
   \setcounter{secnumdepth}{-1}
   \pagenumbering{roman}
%   \renewcommand{\baselinestretch}{1.241}\@currsize%
%   \@ifundefined{def@preview}{}{\comment}
   \@ifundefined{def@preview}{}{% プレビューでは目次，表目次，図目次を出さない
    \let\tableofcontents\relax
    \let\listoftables\relax
    \let\listoffigures\relax}
}
\newcommand{\mainmatter}{%
%   \@ifundefined{def@preview}{}{\endcomment}
   \newpage
   \setcounter{secnumdepth}{3}
   \pagenumbering{arabic}
%   \@ifundefined{def@preview}{%
%      \renewcommand{\baselinestretch}{1.655}\@currsize}{}
}

\newcommand{\backmatter}{%
   \newpage
   \setcounter{secnumdepth}{-1}}

%==== eqnarray環境のアキ問題修正版。
%==== 卒論・修論でpLaTeX2eを使うのであればamsmathパッケージの
%==== 数式環境を用いて構わないと思うが，念のため。
%==== 定義は奥村 [4] による。
%==== fleqn（数式左寄せ）だとさらに別定義になるので注意。
%==== 下でコメントアウトされているのがその別定義になる。
%==== この問題は今後対応する。

\@ifundefined{def@fleqn}{% 普通の定義
   \def\eqnarray{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to\displaywidth\bgroup
       \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne \hfil$\displaystyle{{}##{}}$\hfil
      &\global\@eqcnt\tw@ $\displaystyle{##}$\hfil\tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
         \tabskip\z@skip
      \cr}}{% 左寄せの場合
   \input{fleqn.clo}%
   \def\eqnarray{%
    \stepcounter{equation}%
    \def\@currentlabel{\p@equation\theequation}%
    \global\@eqnswtrue\m@th
    \global\@eqcnt\z@
    \tabskip\mathindent
    \let\\=\@eqncr
    \setlength\abovedisplayskip{\topsep}%
    \ifvmode
      \addtolength\abovedisplayskip{\partopsep}%
    \fi
    \addtolength\abovedisplayskip{\parskip}%
    \setlength\belowdisplayskip{\abovedisplayskip}%
    \setlength\belowdisplayshortskip{\abovedisplayskip}%
    \setlength\abovedisplayshortskip{\abovedisplayskip}%
    $$\everycr{}\halign to\linewidth% $$
    \bgroup
      \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne \hfil$\displaystyle{{}##{}}$\hfil
      &\global\@eqcnt\tw@
        $\displaystyle{##}$\hfil \tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
    \tabskip\z@skip\cr}}

%==== モードのエラーチェック。Protopapas [5] を参照。

\long\def\ificumodecomp#1#2{\@ifundefined{def@comp}{#2}{#1}}
\long\def\ificumodepreview#1#2{\@ifundefined{def@preview}{#2}{#1}}
\long\def\ificumodedoc#1#2{\@ifundefined{def@doc}{#2}{#1}}
\long\def\ificumode#1#2#3{%
 \@ifundefined{def@comp}{%
  \@ifundefined{def@preview}{%
   \@ifundefined{def@doc}{\ClassError{icu}{Undefined mode state!}}{#3}%
  }{#2}%
 }{#1}%
}

%%%%%%%%%%%%%%
%            %
%  仕上げ版  %
%            %
%%%%%%%%%%%%%%

\@ifundefined{def@comp}{}{%

%==== タイトルの出力。

\def\maketitle{%
  \@ifundefined{@author}{%
   \ClassWarningNoLine{icu}{Author in English not defined}\def\@author{Author}}{}
  \@ifundefined{@title}{%
   \ClassWarningNoLine{icu}{Title in English not defined}\def\@title{Title}}{}
  \@ifundefined{@jauthor}{%
   \ClassWarningNoLine{icu}{Author in Japanese not defined}\def\@jauthor{著者}}{}
  \@ifundefined{@jtitle}{%
   \ClassWarningNoLine{icu}{Title in Japanese not defined}\def\@jtitle{題名}}{}
  \@ifundefined{@date}{%
   \ClassWarningNoLine{icu}{When do you want to graduate?}\def\@date{卒業時期}}{}

  \thispagestyle{empty}
%  \renewcommand{\baselinestretch}{1.1}\@currsize
  \begin{center}%
    \@titlei \par \@titleii%
    \vfill\par \with@bstract\par%
    \vfill\par\@thesisi\par~\par\@thesisii\par%
    \vfill\par by\par\vfill%
      \begin{tabular}[t]{c}%
        \@uthori\\
        \@uthorii
     \end{tabular}\par%
      \vskip 50truept%
    \@date \par%
  \end{center}%
  \vfill%
  \begin{flushright}
  \begin{tabular}{rl}%
  Approved by & \hspace*{5truecm} \\ \cline{2-2}%
  & \thesis@dvisori \\
  & \thesis@dvisorii 
  \end{tabular}
  \end{flushright}
  \global\let\maketitle\relax
  \global\let\@title\@empty
  \global\let\@jtitle\@empty
  \global\let\@author\@empty
  \global\let\@jauthor\@empty
  \global\let\@date\@empty
  \global\let\@titlei\@empty
  \global\let\@titleii\@empty
  \global\let\@uthori\@empty
  \global\let\@uthorii\@empty
  \global\let\with@bstract\@empty
  \global\let\@thesisi\@empty
  \global\let\@thesisii\@empty
  \global\let\thesis@dvisori\@empty
  \global\let\thesis@dvisorii\@empty
  \global\let\title\relax
  \global\let\題名\relax
  \global\let\author\relax
  \global\let\氏名\relax
  \global\let\date\relax
  \newpage
  \@ifundefined{def@ja}{%
    \setlength{\parindent}{5ex}}{%
    \setlength{\parindent}{1zw}}
  \indent}
}

%%%%%%%%%%%%%%%%
%              %
% プレビュー版 %
%              %
%%%%%%%%%%%%%%%%

\@ifundefined{def@preview}{}{%

%==== タイトルの出力。

\def\maketitle{%
  \@ifundefined{@author}{%
   \ClassWarningNoLine{icu}{Author in English not defined}\def\@author{Author}}{}
  \@ifundefined{@title}{%
   \ClassWarningNoLine{icu}{Title in English not defined}\def\@title{Title}}{}
  \@ifundefined{@jauthor}{%
   \ClassWarningNoLine{icu}{Author in Japanese not defined}\def\@jauthor{著者}}{}
  \@ifundefined{@jtitle}{%
   \ClassWarningNoLine{icu}{Title in Japanese not defined}\def\@jtitle{題名}}{}
  \@ifundefined{@date}{%
   \ClassWarningNoLine{icu}{When do you want to graduate?}\def\@date{卒業時期}}

  \thispagestyle{empty}
  \begin{center}%
    \@titlei\par\@titleii%
    \vskip 1.5em
      \begin{tabular}[t]{c}%
        \@uthori\\
        \@uthorii
     \end{tabular}\par%
      \vskip 1em%
    \@date \par%
  \end{center}%
  \par\vskip 1.5em
  \global\let\maketitle\relax
  \global\let\@title\@empty
  \global\let\@jtitle\@empty
  \global\let\@author\@empty
  \global\let\@jauthor\@empty
  \global\let\@date\@empty
  \global\let\@titlei\@empty
  \global\let\@titleii\@empty
  \global\let\@uthori\@empty
  \global\let\@uthorii\@empty
  \global\let\with@bstract\@empty
  \global\let\@thesisi\@empty
  \global\let\@thesisii\@empty
  \global\let\thesis@dvisori\@empty
  \global\let\thesis@dvisorii\@empty
  \global\let\title\relax
  \global\let\題名\relax
  \global\let\author\relax
  \global\let\氏名\relax
  \global\let\date\relax
  \@ifundefined{def@ja}{%
    \setlength{\parindent}{5ex}}{%
    \setlength{\parindent}{1zw}}
  \indent}
}

%%%%%%%%%%
%        %
% 草稿用 %
%        %
%%%%%%%%%%

\@ifundefined{def@doc}{}{%

%==== タイトルの出力。

\def\maketitle{%
  \@ifundefined{@author}{%
   \ClassWarningNoLine{icu}{Author in English not defined}\def\@author{Author}}{}
  \@ifundefined{@title}{%
   \ClassWarningNoLine{icu}{Title in English not defined}\def\@title{Title}}{}
  \@ifundefined{@jauthor}{%
   \ClassWarningNoLine{icu}{Author in Japanese not defined}\def\@jauthor{著者}}{}
  \@ifundefined{@jtitle}{%
   \ClassWarningNoLine{icu}{Title in Japanese not defined}\def\@jtitle{題名}}{}
  \@ifundefined{@date}{%
   \ClassWarningNoLine{icu}{When do you want to graduate?}\def\@date{卒業時期}}

  \thispagestyle{empty}
%  \renewcommand{\baselinestretch}{1.1}\@currsize
  \begin{center}%
    \@titlei \par \@titleii%
    \vfill\par \with@bstract\par%
    \vfill\par\@thesisi\par~\par\@thesisii\par%
    \vfill\par by\par\vfill%
      \begin{tabular}[t]{c}%
        \@uthori\\
        \@uthorii
     \end{tabular}\par%
      \vskip 50truept%
    \@date \par%
  \end{center}%
  \vfill%
  \begin{flushright}
  \begin{tabular}{rl}%
  Approved by & \hspace*{5truecm} \\ \cline{2-2}%
  & \thesis@dvisori \\
  & \thesis@dvisorii 
  \end{tabular}
  \end{flushright}
  \global\let\maketitle\relax
  \global\let\@title\@empty
  \global\let\@jtitle\@empty
  \global\let\@author\@empty
  \global\let\@jauthor\@empty
  \global\let\@date\@empty
  \global\let\@titlei\@empty
  \global\let\@titleii\@empty
  \global\let\@uthori\@empty
  \global\let\@uthorii\@empty
  \global\let\with@bstract\@empty
  \global\let\@thesisi\@empty
  \global\let\@thesisii\@empty
  \global\let\thesis@dvisori\@empty
  \global\let\thesis@dvisorii\@empty
  \global\let\title\relax
  \global\let\題名\relax
  \global\let\author\relax
  \global\let\氏名\relax
  \global\let\date\relax
  \newpage
  \@ifundefined{def@ja}{%
    \setlength{\parindent}{5ex}}{%
    \setlength{\parindent}{1zw}}
  \indent}
}

\endinput