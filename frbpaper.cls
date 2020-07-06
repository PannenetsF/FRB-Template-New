% 设置类

\ProvidesClass{frbpaper}
\NeedsTeXFormat{LaTeX2e}

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
  colorlinks=true,
  linkcolor={winered},
  urlcolor={winered},
  filecolor={winered},
  citecolor={winered},
  linktoc=all,
  breaklinks,
  unicode,
  bookmarks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
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
  headheight=0pt,
headsep=0pt]{geometry}

% 行距设置
\RequirePackage{setspace}
\setstretch{1.5}

% TODO: 图表标题设置
\RequirePackage[font=small,labelfont={bf}]{caption}
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=3pt}

% 有序无序列表设置，设置无间距
\RequirePackage[shortlabels,inline]{enumitem}
\setlist{nolistsep}

% 常用宏包

\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{indentfirst}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{graphicx}
\RequirePackage{fancyvrb}
\RequirePackage{abstract}
\RequirePackage{hologo}

\RequirePackage{longtable}
\RequirePackage{footnote}
\makesavenoteenv{tabular}
\makesavenoteenv{table}

% 图片路径

\graphicspath{{figures/}{figure/}}