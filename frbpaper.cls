% 设置类

\ProvidesClass{frbpaper}
\NeedsTeXFormat{LaTeX2e}

% 自定义命令
\def\IfEmpty#1{%
  \edef\1{\the#1}
  \ifx\1\empty
}

% 字号命令
\newcommand{\chuhao}{\zihao{0}}
\newcommand{\xiaochu}{\zihao{-0}}
\newcommand{\yihao}{\zihao{1}}
\newcommand{\xiaoyi}{\zihao{-1}}
\newcommand{\erhao}{\zihao{2}}
\newcommand{\xiaoer}{\zihao{-2}}
\newcommand{\sanhao}{\zihao{3}}
\newcommand{\xiaosan}{\zihao{3}}
\newcommand{\sihao}{\zihao{4}}
\newcommand{\xiaosi}{\zihao{-4}}
\newcommand{\wuhao}{\zihao{5}}
\newcommand{\xiaowu}{\zihao{-5}}

% 计数
\RequirePackage{calc}
% 逻辑
\RequirePackage{kvoptions}
% 环境与命令
\RequirePackage{etoolbox}

% 设置选项
\SetupKeyvalOptions{family=FRB, prefix=FRB@, setkeys=\kvsetkeys}
\newcommand{\kvk}[1]{\kvsetkeys{FRB}{#1}}

% 语言设置， 默认中文
\DeclareStringOption[cn]{lang}
\DeclareVoidOption{cn}{\kvk{lang=cn}}
\DeclareVoidOption{en}{\kvk{lang=en}}

% 扩展 Article 类
\LoadClass{article}

% 目录跳转，并设置颜色
\RequirePackage{xcolor}
\definecolor{winered}{rgb}{0.5,0,0}

\RequirePackage{hyperref}
\hypersetup{
  pdfborder={0 0 0},
  colorlinks=false,
  % linkcolor={winered},
  % urlcolor={winered},
  % filecolor={winered},
  % citecolor={winered},
  linktoc=all,
  breaklinks,
  unicode,
  pdfkeywords={ElegantBook},
  plainpages=false,
  pdfstartview=FitH,
  linktocpage=false
}

% 页边距设置
\RequirePackage[
  left=3cm,
  right=2.5cm,
  top=2.5cm,
  bottom=2.5cm,
  headheight=2cm,
  headsep=0.7cm
]{geometry}

% 行距设置
\RequirePackage{setspace}
\setstretch{1.5}


% 章节标题设置
\RequirePackage{titlesec}
\titleformat{\section}[block]{\sanhao\heiti\centering}{第\sanhao\heiti\zhnum{section}章、}{0pt}{\vspace{0.5ex}}[\vspace{0.5ex}]
\titleformat{\subsection}[hang]{\sihao\heiti}{\heiti\sihao\arabic{section}.\heiti\sihao\arabic{subsection}~}{0pt}{\vspace{0.5ex}}[\vspace{0.5ex}]
\titleformat{\subsubsection}[hang]{\xiaosi\heiti}{\heiti\xiaosi\arabic{section}.\heiti\xiaosi\arabic{subsection}.\heiti\xiaosi\arabic{subsubsection}~}{0pt}{\vspace{0.5ex}}[\vspace{0.5ex}]

% 目录设置

\RequirePackage{titletoc}
\titlecontents{section}[0.5cm]{\vspace{2pt}}{\contentspush{{第\zhnumber {\thecontentslabel} 章}\quad}}{}{\titlerule*[8pt]{.}\contentspage}
\titlecontents{subsection}[1cm]{\vspace{2pt}}{\contentspush{\thecontentslabel\hspace{0.8em}}}{}{\titlerule*[8pt]{.}\contentspage}
\titlecontents{subsubsection}[1.5cm]{\vspace{2pt}}{\contentspush{\thecontentslabel\hspace{0.8em}}}{}{\titlerule*[8pt]{.}\contentspage}

% 图表标题设置
\RequirePackage[font={small,bf},labelfont={bf}]{caption}
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=3pt}

% 有序无序列表设置，设置无间距
\RequirePackage[shortlabels,inline]{enumitem}
\setlist{nolistsep}

% 常用宏包 - 数学类
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}

% 常用宏包 - 格式类
\RequirePackage{indentfirst}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{graphicx}
\RequirePackage{fancyvrb}
\RequirePackage{longtable}
\RequirePackage{footnote}
\makesavenoteenv{tabular}
\makesavenoteenv{table}
\RequirePackage{threeparttablex}
\RequirePackage{listings}


% 摘要环境
\RequirePackage{abstract}


% 附录环境
\RequirePackage{appendix}

% LaTeX 符号
\RequirePackage{hologo}

% 图片路径
\graphicspath{{figures/}{figure/}}

% 字体设置
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
\ifdefstring{\FRB@lang}{cn}{
    \RequirePackage[UTF8,scheme=plain,fontset=none]{ctex}
    \setCJKmainfont[BoldFont={FZCSK.TTF},ItalicFont={FZKTK.TTF},Path=fonts/]{FZSSK.TTF}
    \setCJKsansfont[BoldFont={FZHTK.TTF},ItalicFont={FZHTK.TTF},Path=fonts/]{FZHTK.TTF}
    \setCJKmonofont[BoldFont={FZHTK.TTF},ItalicFont={FZHTK.TTF},Path=fonts/]{FZFSK.TTF}
    \setCJKfamilyfont{zhsong}[Path=fonts/]{FZSSK.TTF}
    \setCJKfamilyfont{zhhei}[Path=fonts/]{FZHTK.TTF}
    \setCJKfamilyfont{zhkai}[Path=fonts/]{FZKTK.TTF}
    \setCJKfamilyfont{zhfs}[Path=fonts/]{FZFSK.TTF}
    \setCJKfamilyfont{hwxw}[Path=fonts/]{HWXW.TTF}
    \setCJKfamilyfont{hwzs}[Path=fonts/]{HWZS.TTF}
    \newcommand*{\songti}{\CJKfamily{zhsong}}
    \newcommand*{\heiti}{\CJKfamily{zhhei}}
    \newcommand*{\kaishu}{\CJKfamily{zhkai}}
    \newcommand*{\fangsong}{\CJKfamily{zhfs}}
    \newcommand*{\xinwei}{\CJKfamily{hwxw}}
    \newcommand*{\zhongsong}{\CJKfamily{hwzs}}
  \AfterEndPreamble{
    \setlength\parindent{2\ccwd}
  }{\relax}
}{\relax}

  
\ifcsname kaishu\endcsname
\newcommand{\citshape}{\kaishu}
\else
  \newcommand{\citshape}{\itshape}
\fi
\ifcsname kaishu\endcsname
  \newcommand{\cnormal}{\kaishu}
\else
  \newcommand{\cnormal}{\normalfont}
\fi

\ifcsname fangsong\endcsname
  \newcommand{\cfs}{\fangsong}
\else
  \newcommand{\cfs}{\normalfont}
\fi

% 字号设置
\renewcommand{\normalsize}{\xiaosi}
\renewcommand{\footnotesize}{\wuhao}

% 数学字体
\RequirePackage{newtxtext}
\defaultfontfeatures{}
\RequirePackage{esint}

% 页码设置 - 字体
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyfoot[C]{\wuhao\songti\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{plain}

% 定义中文环境
\ifdefstring{\FRB@lang}{cn}{
  \theoremstyle{plain}% default
  \newtheorem{theorem}{定理}[section] %
  \newtheorem{lemma}[theorem]{引理} %
  \newtheorem{proposition}[theorem]{命题} %
  \newtheorem*{corollary}{推论} %
  \theoremstyle{definition} %
  \newtheorem{definition}{定义}[section] %
  \newtheorem{conjecture}{猜想}[section] %
  \newtheorem{example}{例}[section] %
  \theoremstyle{remark} %
  \newtheorem*{remark}{\normalfont\bfseries 评论} %
  \newtheorem*{note}{\normalfont\bfseries 注} %
  \newtheorem{case}{\normalfont\bfseries 案例} %
  \renewcommand*{\proofname}{\normalfont\bfseries 证明} %
  \renewcommand\contentsname{\heiti 目录}
  \renewcommand{\listfigurename}{\heiti 插图索引}
  \renewcommand{\listtablename}{\heiti 表格索引}
  \renewcommand\refname{\heiti 参考文献} %
  \renewcommand\figurename{\textbf{图}} %
  \renewcommand\tablename{\textbf{表}}%
  % \renewcommand\algorithmname{\textbf{算法}}%
  \renewcommand{\ALG@name}{\textbf{算法}}
  \newcommand\versiontext{版本：}%
  \newcommand\updatetext{日期：}%
  \renewcommand\abstractname{\Large\heiti {摘\hspace{2em}要}}
  \renewcommand{\appendixtocname}{附录}
  \renewcommand{\appendixpagename}{附录}
  \setlength\parindent{2\ccwd}
  \renewcommand{\abstracttextfont}{\small\citshape\noindent\ignorespaces}
  \newcommand{\keywords}[1]{\vskip2ex\par\noindent\normalfont{\heiti 关键词: } #1}
  \newcommand{\ekeywords}[1]{\vskip2ex\par\noindent\normalfont{\bfseries Key Words: }#1}
  \newcommand\figref[1]{{图~\ref{#1}}}
  \newcommand\tabref[1]{{表~\ref{#1}}}
  \newcommand\algref[1]{{算法~\ref{#1}}}
  \RequirePackage{gbt7714}
  \citestyle{super}{\relax}
}{\relax}

% 引用环境
\RequirePackage{natbib}
\setlength{\bibsep}{0.0pt}
% \def\bibfont{\footnotesize}
\def\bibfont{\normalsize}



% 时间设置
\RequirePackage{datetime}
\renewcommand{\today}{\zhdigits{\number\year}年~\zhdigits{\number\month}月~\zhdigits{\number\day}日}
\newcommand{\frbtoday}{\zhdigits{\number\year}年~\zhdigits{\number\month}月}

\AtBeginEnvironment{verbatim}{\microtypesetup{activate=false}}
\BeforeBeginEnvironment{tabular}{\small}
\AfterEndEnvironment{tabular}{}

\AtBeginDocument{
  \setlength{\abovedisplayskip}{3pt}
  \setlength{\belowdisplayskip}{3pt}
  \RequirePackage[flushmargin]{footmisc}
  \setlength{\footnotesep}{12pt}}

\newtoks\subtitle
\newtoks\version
\newtoks\institute
\newtoks\headofpaper

% 页眉设置

\RequirePackage{fancyhdr}
\newcommand{\makeabstract}{\pagenumbering{roman}\songti}

\newcommand{\makemain}{\pagenumbering{arabic}\setcounter{page}{1}\renewcommand{\headrulewidth}{0.4pt}\pagestyle{fancy}
\fancyhead[C]{\xiaowu\songti\the\headofpaper
}}




% 封面格式设置
\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@0.1em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@ELEGANT@version\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \global\let\ELEGANT@version\relax
}
\def\@maketitle{%
  \newpage
  \lhead{}
  \rhead{}
  \renewcommand{\headrulewidth}{0pt}
  \null
  \includegraphics[scale=1]{buaa-symbol.png}
  \vspace{7em}
  \begin{center}
    \includegraphics[scale=1]{buaa.png}
  \end{center}
  \vskip 1em%
  \begin{center}%
  % \let \footnote \thanks
    {\erhao\bfseries\zhongsong \@title \par}%
    \vskip 1.5em%

    \IfEmpty\subtitle
    \else
      \begin{flushright}
        {\sanhao\bfseries\xinwei——\the\subtitle \par}%
      \end{flushright}
    \fi

    {
      \Large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author\\[1ex]
      \end{tabular}\par}
      \Large\normalfont\citshape\the\institute%
\vskip 0.5ex%
\IfEmpty\version
\else 
{\Large\normalfont\citshape\versiontext\the\version}
\fi

  \end{center}%
  \par
  \vspace*{\fill}
  \ifx\@date\empty
  \else
    \vskip 0.1em%
    \centerline{\Large\heiti\@date}%
  \fi
  \setcounter{page}{0} 
  \thispagestyle{empty}
  \clearpage
}
