\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style}[2019/06/08 ITB Final Project Report LaTeX class]

\LoadClass[12pt, a4paper, onecolumn, oneside, final]{report}

\RequirePackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{listings}
\RequirePackage{sectsty}
\RequirePackage{chngcntr}
\RequirePackage[backend=biber,style=authoryear]{biblatex}
\RequirePackage{csquotes}
\RequirePackage[titles]{tocloft}

\special{papersize=210mm,297mm}

\hypersetup{colorlinks=false, pdfborder={0 0 0},}

\renewcommand{\baselinestretch}{1.5}

\renewcommand{\lstlistingname}{Kode.}
\lstdefinestyle{CStyle}{
    belowcaptionskip=1\baselineskip,
    breaklines=true,
    frame=trbl,
    numbers=left,
    xleftmargin=\parindent,
    language=C,
    showstringspaces=false,
    basicstyle=\footnotesize\ttfamily,
    keywordstyle=\bfseries\color{green!40!black},
    commentstyle=\itshape\color{purple!40!black},
    identifierstyle=\color{blue},
    stringstyle=\color{orange},
}
\lstdefinestyle{BashStyle}{
    belowcaptionskip=1\baselineskip,
    breaklines=true,
    frame=trbl,
    numbers=left,
    xleftmargin=\parindent,
    language=Bash,
    showstringspaces=false,
    basicstyle=\footnotesize\ttfamily,
}

\renewcommand{\chaptername}{\uppercase{bab}}
\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\bibname}{Daftar Pustaka}
\renewcommand{\contentsname}{\uppercase{Daftar Isi}}
\renewcommand{\listfigurename}{\uppercase{Daftar Gambar}}
\renewcommand{\listtablename}{\uppercase{Daftar Tabel}}
 
\chapterfont{\centering \large}
\titleformat
    {\chapter} % command
    [display] % shape
    {\large\centering\bfseries} % format
    {\chaptertitlename\ \thechapter} % label
    {0pt} % sep
    {\large\bfseries\uppercase} % before

\titlespacing*{\chapter}{0pt}{-40pt}{40pt}
% TODO: reduce space between section and paragraph
% \titlespacing{\section}{15pt}{15pt}{15pt}
% \titlespacing{\subsection}{0pt}{0pt}{0pt}
% \titlespacing{\subsubsection}{0pt}{0pt}{0pt}

\sectionfont{\normalsize\bfseries}
\subsectionfont{\normalsize\bfseries}
\subsubsectionfont{\normalsize\bfseries}
\paragraphfont{\normalsize\bfseries}
\subparagraphfont{\normalsize\bfseries}

\counterwithin{figure}{section}
\counterwithin{table}{section}

\renewcommand*{\nameyeardelim}{\addcomma\space}

\DeclareQuoteStyle
    {bahasa}
    {\textquotedblleft}
    {\textquotedblright}
    [0.05em]
    {\textquotedblleft}
    {\textquotedblright}

\DefineBibliographyStrings{english}{and = {\&}}

\setlength{\cftfignumwidth}{4em}
\setlength{\cfttabnumwidth}{4em}

\def\today{
    \number\day\space
    \ifcase \month
        \or Januari
        \or Februari
        \or Maret
        \or April
        \or Mei
        \or Juni
        \or Juli
        \or Agustus
        \or September
        \or Oktober
        \or November
        \or Desember
    \fi
    \space\number\year
}