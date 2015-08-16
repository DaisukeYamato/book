%
% icu.cls  version 0.5b
%
% SUZUKI Satoshi, January 26 2002
% n021409@yamata.icu.ac.jp
%
% ���Υ��饹�ե������pLaTeX2e�Ǥ����Ѥ�����Ȥ��Ƥ��롣
% ���Ѥκݤϡ�
% \documentclass[comp]{icu}
% �ʤɤȤ��뤳�ȡ��ǥե���ȤǤ�����ѤΥե����ޥåȤȤʤ롣
% �ܺ٤�README.txt���ɤޤ줿���� 
%
% ���Υ��饹�ե�����ϡ��ʲ��Υ��饹�ե����롤�ʤ����ѥå�������
% ������ʸ���򻲹ͤˤ�����
% 
% [1] ƣ���ú� 1995 LaTeX�ޥ�����Ȭ�� �������󡦥������쥤���ѥ֥�å��㡼��������ѥ�
% [2] ��ݴ��Ķ���ض�̳�ݡ��ԡ� 2001 2001ǯ�������μ�� ��ݴ��Ķ����
% [3] ���ġ��򡦺������ 2001 ICU��ر����ظ���ʡ����ܳ������ز��ѳذ���ʸ������ pLaTeX2e �ѥ�������ե�����
% (http://www.sakaguti.gr.jp/syuiti/thesis-hina/icu-thesis.sty, December 27, 2001)
% [4] ��¼��ɧ 2001 "jsarticle.cls"
% (http://www.matsusaka-u.ac.jp/~okumura/jsclasses/jsclasses.lzh, December 27, 2001) 
% [5] Protopapas, A. 1999. "apa.cls version 1.23."
% CTAN macros/latex/contrib/other/apa/apa.cls
% (http://www.ring.gr.jp/archives/text/CTAN/macros/latex/contrib/other/apa/apa.cls, December 27, 2001)
% [6] Tobin, G. 2000. "setspace.sty version 6.7."
% CTAN macros/latex/contrib/supported/setspace.sty
% (http://www.ring.gr.jp/archives/text/CTAN/macros/latex/contrib/supported/setspace.sty, December 27, 2001)
% 
% ´����ʸ�Υե����ޥå������ [2] �ˤ�ä���
% ����Ū�ʥ��饹�ե�����ι����� [5] ��١����Ȥ��Ƥ��롣
% ����¾�Υ꥽�����Ϻ٤��ʽ��Ϥ�Ĵ���Τ���˥ޥ��������
% �Ҽڤ�����Τ��ۤȤ�ɤǤ��롣
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Upgrade Log:
%
% January 26, 2002
% 0.5b  �Դ�Ĵ���ε�ǽ�򳰤���
%       ����������setspace�ѥå��������Ѥ��Ʋ�褵�줿����
%
% January 1, 2002
% 0.42b �Х�������\ProvideClass̿������դν񼰤�ְ㤨������
%       �����ץ��åȻ��˥��顼���Ф�������衣
% 0.41b ���饹�ե�������ѹ��Ϥʤ�������ε��Ҥ��ѹ���Ԥä���
%
% December 28, 2001
% 0.4b  eqnarray�Ķ��κ��󤻿����Υ����к���Ԥä���
%       \backmatter�����Ǥ���ڡ������Ԥ���褦�ˤ�����
%       ǰ�Τ��ᡤ��ʸ�����Ķ���ICUabstract�Ķ������Ǥ�
%       ���ڡ������Ԥ���褦�ˤ���
%       ���̥ե�����˽񤤤�\include���뤳�Ȥ򾩤��ˡ� 
%
% December 27, 2001
% 0.31b \mainmatter�����ǲ��ڡ������Ԥ���褦�ˤ�����
% 0.3b  �����Ȥ�����������
%       eqnarray�Υ����к���Ԥä���
%
% December 26, 2001
% 0.2b  ���ܸ���ʸ�ѤΥ��ץ����������
% 
% December 25, 2001
% 0.1b  �ҤȤޤ��ž夲�ѡ��ץ�ӥ塼�ѡ�����ѤΥե����ޥåȤ�������
%       �������Ǥϻž夲�ѡ�����ѤȤ�Ʊ�����Ϥˤʤ롣
%       ���ߤΰƤȤ��Ƥ�����Ѥ⤽�Τޤް���������ФǤ�����ˤ��Ƥ�����
%       �ž夲�Ѥ�jsarticle��txfonts���ɤ߹��ߤˤ��褦���ȹͤ��Ƥ��롣
%
% To-Dos:
% 
% ���ܸ���ʸ�Ѥν��Ϥ���Ĵ���ʹԴ֤���䶹�������ˡ�
% ���������ե����ޥåȤ�Ĥ���
% �ʤ������ʬ��ˤʤꤽ�����񤷤��Ϥʤ����������ˡ�
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%==== ������

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icu}[2002/01/26 ICU Thesis Format v0.5b by SUZUKI S.]

%==== ���ץ����Ƽ�����

\DeclareOption{comp}{% �ž夲��
\def\def@comp{\@compmode}
}

\DeclareOption{preview}{% �ץ�ӥ塼��
\def\def@preview{\@previewmode}
}

\DeclareOption{doc}{% �����
\def\def@doc{\@docmode}
}

\DeclareOption{mt}{% �������ץ����ʽ������
\def\def@mt{\@mtmode}
}

\DeclareOption{report}{% jreport�ǽ񤤤����
\def\def@report{\@reportmode}
}

\DeclareOption{ja}{% ���ܸ���ʸ���ץ����
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

%==== �ǥե���Ȥ�����Ѥ�

\@ifundefined{def@comp}{%
 \@ifundefined{def@preview}{%
  \@ifundefined{def@doc}{%
   \def\def@doc{\@docmode}
   \ClassWarningNoLine{icu}{Using default mode (doc) [for draft]}
  }{}
 }{}
}{}

%==== ���饹�ե�����θƤӽФ���
%==== �ǥե���ȤǤ�jarticle�ˤʤ롣jreport�ǽ񤭿ʤ�Ƥ����ͤϡ�
%==== \documentclass[report]{icu}
%==== ��report���ץ�����Ĥ����jreport���ƤӽФ����Τ�
%==== �ߴ���������⥯�ꥢ���Ƥ��롣

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

%==== ��ư������ޥ�����
%==== ��̾�ν��Ϥ������μ�� [2, p. 196]�˶ᤤ���ˤ��뤿��˺�����
%==== ��ʸ�λ�̾������7ʸ���ʲ��ˤʤ��������7ʸ�������Ƕ������Ԥ���
%==== ƣ�� [1, pp. 160--163]�򻲾ȡ�

\def\kintou#1#2{% ������
 \leavevmode
 \hbox to #1{%
  \kanjiskip=0truept plus 1fill minus 1fill
  \xkanjiskip=\kanjiskip
  #2}}

\def\@namekintou#1{% ����äȸ���������
\settowidth{\@tempdima}{#1}% ̾����Ĺ�����¬
\ifdim\@tempdima<6.4zw \kintou{7zw}{#1}% 7ʸ���ޤǤʤ�7ʸ��ʬ
\else \hbox{#1}\fi}

%==== ɽ��ط���̿�ᡣ

\long\def\title#1{\long\def\@title{#1}}
\long\def\��̾#1{\long\def\@jtitle{#1}}
\long\def\author#1{\long\def\@author{#1}}
\long\def\��̾#1{\long\def\@jauthor{#1}}
\long\def\date#1{\long\def\@date{#1}}

%==== ���ܸ���ʸ�б����ץ����ν�����

%==== jarticle���饹�Ǥ�\bibname����jreport���饹�Ǥ�\refname��
%==== ���줾���������Ƥ��ʤ���
%==== ���Τ��ᡤξ���򤤤��ʤ�\renewcommand����������
%==== ���顼�ˤʤäƤ��ޤ��������ǡ�\def���Ѥ��Ƥ�褤�Τ�����
%==== ��̤����ʤ���������פȤ���\providecommand̿���
%==== ������ξ��������Ƥ�����

\providecommand{\refname}{}
\providecommand{\bibname}{}

%==== �Ѹ���ʸ�θ��Ф�����ϲ��ġ���� [3]��
%==== ���ܸ���ʸ�θ��Ф�����ϱ�¼ [4] ��ή�Ѥ��Ƥ��롣

\@ifundefined{def@ja}{% �ʲ����Ѹ���ʸ�ξ��
   \long\def\@titlei{{\sffamily\bfseries\@title}}
   \long\def\@titleii{{\gtfamily\@jtitle}}
   \long\def\with@bstract{����ʸ����}
   \long\def\@thesisi{A Thesis Presented to the Faculty of\par%
         the International Christian University\par%
         for the Baccalaureate Degree}
   \long\def\@thesisii{��ݴ��Ķ���ض�������гػ���ʸ}
   \long\def\@uthori{\@author}
   \long\def\@uthorii{\@namekintou{\@jauthor}}
   \long\def\thesis@dvisori{Thesis Advisor}
   \long\def\thesis@dvisorii{��ʸ��Ƴ��������}
   \renewcommand{\contentsname}{Contents}          %% �ܼ�
   \renewcommand{\listfigurename}{List of Figures} %% �ޤ��ܼ�
   \renewcommand{\listtablename}{List of Tables}   %% ɽ���ܼ�
   \renewcommand{\refname}{References}             %% ����ʸ��(article)
   \renewcommand{\bibname}{References}             %% ����ʸ��(report)
   \renewcommand{\indexname}{Index}                %% ����
   \renewcommand{\figurename}{Figure}              %% ��
   \renewcommand{\tablename}{Table}                %% ɽ
   \renewcommand{\appendixname}{Appendix}          %% �ܼ��Ǥ���Ͽ��̾��
   \renewcommand{\abstractname}{Abstract}          %% ����
   }{% �ʲ������ܸ���ʸ�ξ��
   \long\def\@titlei{{\gtfamily\@jtitle}}
   \long\def\@titleii{{\sffamily\bfseries\@title}}
   \long\def\with@bstract{Abstract is in English}
   \long\def\@thesisi{��ݴ��Ķ���ض�������гػ���ʸ}
   \long\def\@thesisii{A Thesis Presented to the Faculty of\par%
         the International Christian University\par%
         for the Baccalaureate Degree}
   \long\def\@uthori{\@namekintou{\@jauthor}}
   \long\def\@uthorii{\@author}
   \long\def\thesis@dvisori{��ʸ��Ƴ��������}
   \long\def\thesis@dvisorii{Thesis Advisor}
   \renewcommand{\contentsname}{�ܼ�}              %% �ܼ�
   \renewcommand{\listfigurename}{���ܼ�}          %% �ޤ��ܼ�
   \renewcommand{\listtablename}{ɽ�ܼ�}           %% ɽ���ܼ�
   \renewcommand{\refname}{����ʸ��}               %% ����ʸ��(article)
   \renewcommand{\bibname}{����ʸ��}               %% ����ʸ��(report)
   \renewcommand{\indexname}{����}                 %% ����
   \renewcommand{\figurename}{��}                  %% ��
   \renewcommand{\tablename}{ɽ}                   %% ɽ
   \renewcommand{\appendixname}{��Ͽ}              %% �ܼ��Ǥ���Ͽ��̾��
   \renewcommand{\abstractname}{����}              %% ����
}

%==== �ڡ����쥤�����Ȥ��ѹ� 

%==== Ĺ���ط�

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

%==== �ե����ȴط�����¼ [4] ��������ή�Ѥ�����
%==== ����Ĵ��ˤ�äơ��ڡ�����;͵�����äƤ�
%==== �ޤ�ɽ���̥ڡ���Ω�ƤˤʤäƤ��ޤ����Ȥ����������ɤ��롣

\renewcommand{\topfraction}{.8}
\setcounter{bottomnumber}{1}
\renewcommand{\bottomfraction}{.8}
\setcounter{totalnumber}{3}
\renewcommand{\textfraction}{.1}
\renewcommand{\floatpagefraction}{.8}
\setcounter{dbltopnumber}{2}
\renewcommand{\dbltopfraction}{.8}
\renewcommand{\dblfloatpagefraction}{.8}

%==== �ޡ�ɽ�θ��Ф������ġ���� [3] ����ή�ѡ�

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

%==== ��ʸ�����Ķ������ġ���� [3] �򻲾ȡ�

\newenvironment{��ʸ����}{%
        \newpage
        \begin{center}{\Large ��ʸ����}\end{center}
       %\addcontentsline{toc}{section}{\numberline{}��ʸ����}
        \setcounter{equation}{0}
        \setcounter{footnote}{0}
        \renewcommand{\refname}{References}
        \begin{flushleft}
        \setlength{\parindent}{1zw} \ }
  {\end{flushleft}}

%==== ��ʸ���֥��ȥ饯�ȴĶ������ġ���� [3] �򻲾ȡ�

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

%==== �����Ǥϡ�Tobin [6] ��ꥳ�ޥ�ɤ򤤤��Ĥ�ή�Ѥ���
%==== ����������Ƥ�����
%==== �ʤ������󥰥륹�ڡ��������֥륹�ڡ������줾��ξ���
%==== \baselinestretch���ͤ�
%==== Tobin [6] �Τ�Τ򻲹ͤˤ��Ƥ��뤳�Ȥ��դ��ä��Ƥ�����
%==== �����������ͤ���ʸ���Ȥ�����ͤǤ��뤿�ᡤ
%==== ��ʸ�ˤʤ�Ȼ����Ѥ��Ǥ�������

%==== version 0.5b ����quote/quotation�Ķ��������������
%==== �Դ�Ĵ���������Х����ФƤ���Τǰ��Ū�ˤ��ε�ǽ����ߤ��롣

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

%==== �����ϥ��󥰥륹�ڡ����ˡ�

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

%==== �����Υ�٥�����������������ġ���� [3] ���ή�ѡ�

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

%==== Tobin [6] �����ή�ѤϤ����ޤǡ�

%==== quotation��quote�Ķ��Υѥ�᡼���ѹ���
%==== ��¼ [4] �򻲹ͤ˲��Ѥ�����
%==== ���̲�ʸ�ΰ��ѤϺ����˥ޡ������Ȥ뤬��
%==== �����μ�� [2] �ˤ��в�ʸ�Ǥⱦ�Υޡ������Ȥ�ʤ��褦�ʤΤǡ�
%==== ��ʸ�Ǥ���ʸ�ΰ��Ѥ�����˽������Ȥˤ�����
%==== �ޤ���quotation, quote�Ķ��Ȥ�Ķ���ϥ��󥰥륹�ڡ����Ȥʤ롣

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

%==== ��ʸ�������桦����κۤ˴ؤ��륳�ޥ�ɡ�
%==== ���ޥ�ɤ�̾����pLaTeX2eɸ���jbook���饹����ڤꤿ��
%==== �����ǥ��󥰥륹�ڡ��������֥륹�ڡ���������⤷�Ƥ���Τ�
%==== ư��Ͼ����Ѥ�äƤ��롣
%==== \backmatter�ϻȤ�ƻ���ʤ��������������������Ƥ�������
%==== \begin{document}
%==== \maketitle         % ɽ��ν���
%==== \frontmatter       % ��������ʬ
%==== \tableofcontents   % �ܼ�
%==== \listoftables      % ɽ�ܼ�
%==== \listoffigures     % ���ܼ�
%==== \mainmatter        % �������ʬ
%==== \include{abstract} % ���֥��ȥ饯��
%====   . . .
%====
%==== �Ȥ��������Ѥ��롣

\newcommand{\frontmatter}{%
   \setcounter{secnumdepth}{-1}
   \pagenumbering{roman}
%   \renewcommand{\baselinestretch}{1.241}\@currsize%
%   \@ifundefined{def@preview}{}{\comment}
   \@ifundefined{def@preview}{}{% �ץ�ӥ塼�Ǥ��ܼ���ɽ�ܼ������ܼ���Ф��ʤ�
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

%==== eqnarray�Ķ��Υ������꽤���ǡ�
%==== ´����������pLaTeX2e��Ȥ��ΤǤ����amsmath�ѥå�������
%==== �����Ķ����Ѥ��ƹ���ʤ��Ȼפ�����ǰ�Τ��ᡣ
%==== ����ϱ�¼ [4] �ˤ�롣
%==== fleqn�ʿ������󤻡ˤ��Ȥ����������ˤʤ�Τ����ա�
%==== ���ǥ����ȥ����Ȥ���Ƥ���Τ�����������ˤʤ롣
%==== ��������Ϻ����б����롣

\@ifundefined{def@fleqn}{% ���̤����
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
      \cr}}{% ���󤻤ξ��
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

%==== �⡼�ɤΥ��顼�����å���Protopapas [5] �򻲾ȡ�

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
%  �ž夲��  %
%            %
%%%%%%%%%%%%%%

\@ifundefined{def@comp}{}{%

%==== �����ȥ�ν��ϡ�

\def\maketitle{%
  \@ifundefined{@author}{%
   \ClassWarningNoLine{icu}{Author in English not defined}\def\@author{Author}}{}
  \@ifundefined{@title}{%
   \ClassWarningNoLine{icu}{Title in English not defined}\def\@title{Title}}{}
  \@ifundefined{@jauthor}{%
   \ClassWarningNoLine{icu}{Author in Japanese not defined}\def\@jauthor{����}}{}
  \@ifundefined{@jtitle}{%
   \ClassWarningNoLine{icu}{Title in Japanese not defined}\def\@jtitle{��̾}}{}
  \@ifundefined{@date}{%
   \ClassWarningNoLine{icu}{When do you want to graduate?}\def\@date{´�Ȼ���}}{}

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
  \global\let\��̾\relax
  \global\let\author\relax
  \global\let\��̾\relax
  \global\let\date\relax
  \newpage
  \@ifundefined{def@ja}{%
    \setlength{\parindent}{5ex}}{%
    \setlength{\parindent}{1zw}}
  \indent}
}

%%%%%%%%%%%%%%%%
%              %
% �ץ�ӥ塼�� %
%              %
%%%%%%%%%%%%%%%%

\@ifundefined{def@preview}{}{%

%==== �����ȥ�ν��ϡ�

\def\maketitle{%
  \@ifundefined{@author}{%
   \ClassWarningNoLine{icu}{Author in English not defined}\def\@author{Author}}{}
  \@ifundefined{@title}{%
   \ClassWarningNoLine{icu}{Title in English not defined}\def\@title{Title}}{}
  \@ifundefined{@jauthor}{%
   \ClassWarningNoLine{icu}{Author in Japanese not defined}\def\@jauthor{����}}{}
  \@ifundefined{@jtitle}{%
   \ClassWarningNoLine{icu}{Title in Japanese not defined}\def\@jtitle{��̾}}{}
  \@ifundefined{@date}{%
   \ClassWarningNoLine{icu}{When do you want to graduate?}\def\@date{´�Ȼ���}}

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
  \global\let\��̾\relax
  \global\let\author\relax
  \global\let\��̾\relax
  \global\let\date\relax
  \@ifundefined{def@ja}{%
    \setlength{\parindent}{5ex}}{%
    \setlength{\parindent}{1zw}}
  \indent}
}

%%%%%%%%%%
%        %
% ����� %
%        %
%%%%%%%%%%

\@ifundefined{def@doc}{}{%

%==== �����ȥ�ν��ϡ�

\def\maketitle{%
  \@ifundefined{@author}{%
   \ClassWarningNoLine{icu}{Author in English not defined}\def\@author{Author}}{}
  \@ifundefined{@title}{%
   \ClassWarningNoLine{icu}{Title in English not defined}\def\@title{Title}}{}
  \@ifundefined{@jauthor}{%
   \ClassWarningNoLine{icu}{Author in Japanese not defined}\def\@jauthor{����}}{}
  \@ifundefined{@jtitle}{%
   \ClassWarningNoLine{icu}{Title in Japanese not defined}\def\@jtitle{��̾}}{}
  \@ifundefined{@date}{%
   \ClassWarningNoLine{icu}{When do you want to graduate?}\def\@date{´�Ȼ���}}

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
  \global\let\��̾\relax
  \global\let\author\relax
  \global\let\��̾\relax
  \global\let\date\relax
  \newpage
  \@ifundefined{def@ja}{%
    \setlength{\parindent}{5ex}}{%
    \setlength{\parindent}{1zw}}
  \indent}
}

\endinput