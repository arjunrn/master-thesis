\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Thesify}[2014/10/27 v1.0 Disseration Class]
\LoadClass[12pt, oneside, letterpaper]{report}

\def\degree#1{\gdef\@degree{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\university#1{\gdef\@university{#1}}
\def\field#1{\gdef\@field{#1}}

\def\advisor#1{\gdef\@advisor{#1}}
\def\author#1{\gdef\@author{#1}}
\RequirePackage{xcolor}
\usepackage{hyperref}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}
\RequirePackage[palatino]{quotchap}


\RequirePackage{packages/style}
\RequirePackage[width=5.75in, letterpaper]{geometry}
\RequirePackage{fancyhdr}

\usepackage[titletoc]{appendix}
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\setcounter{tocdepth}{1}

\RequirePackage{url}
\usepackage[titles]{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
\usepackage{fixltx2e}
\usepackage{ragged2e}

\parindent 12pt
\RequirePackage{mathspec}
\setmathsfont(Digits,Latin,Greek)[Numbers={Proportional}]{EB Garamond}
\setmathrm{EB Garamond}

\widowpenalty=300
\clubpenalty=300


\defaultfontfeatures{Mapping=tex-text}
\setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}
\setmonofont[Scale=MatchLowercase]{Luxi Mono}

\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
								textfont={sf,footnotesize,singlespacing},
								justification={justified,RaggedRight},
								singlelinecheck=false,
								margin=0pt,
								figurewithin=chapter,
								tablewithin=chapter]{caption}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}

\newfontfamily\listingsfont[Scale=0.8]{Luxi Mono}

% an environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Align reference numbers so that they do not cause an indent
\newlength\mybibindent
\setlength\mybibindent{0pt}
\makeatletter
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}
\makeatother


%{{{ --- pgfplots ---------------------
\RequirePackage{pgfplots}
\RequirePackage{pgfplotstable}
%{{{ Colors

% TolColors from http://www.r-bloggers.com/the-paul-tol-21-color-salute/
\definecolor{TolColor1}{HTML}{332288}   % dark purple
\definecolor{TolColor2}{HTML}{6699CC}   % dark blue
\definecolor{TolColor3}{HTML}{88CCEE}   % light blue
\definecolor{TolColor4}{HTML}{44AA99}   % light green
\definecolor{TolColor5}{HTML}{117733}   % dark green
\definecolor{TolColor6}{HTML}{999933}   % dark brown
\definecolor{TolColor7}{HTML}{DDCC77}   % light brown
\definecolor{TolColor8}{HTML}{661100}   % dark red
\definecolor{TolColor9}{HTML}{CC6677}   % light red
\definecolor{TolColor10}{HTML}{AA4466}  % light pink
\definecolor{TolColor11}{HTML}{882255}  % dark pink
\definecolor{TolColor12}{HTML}{AA4499}  % light purple

%}}}
%{{{ Color cycles

\pgfplotscreateplotcyclelist{mlineplot cycle}{%
  {TolColor2, mark=*, mark size=1.5pt},
  {TolColor7, mark=square*, mark size=1.3pt},
  {TolColor4, mark=triangle*, mark size=1.5pt},
  {TolColor7, mark=diamond*, mark size=1.5pt},
}

\RequirePackage{tikz}
\usetikzlibrary{arrows}

%{{{ --- flowchart nodes
\tikzstyle{startstop} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black, fill=TolColor6!30]
\tikzstyle{io} = [trapezium, trapezium left angle=70, trapezium right angle=110, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=TolColor10!30]
\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=TolColor5!30]
\tikzstyle{decision} = [diamond, minimum width=3cm, minimum height=1cm, text centered,text width=1.5cm, draw=black, fill=TolColor2!30]
\tikzstyle{arrow} = [thick,->,>=stealth]



