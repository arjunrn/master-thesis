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
\RequirePackage{color}

\RequirePackage{titling}
\usepackage{hyperref}


\RequirePackage{color}
\RequirePackage{packages/style}
\RequirePackage[width=5.75in, letterpaper]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[palatino]{quotchap}

\RequirePackage{setspace}

\RequirePackage{fontspec} %Not in the original Dissertate.cls file, maybe provided through some other package.
\defaultfontfeatures{Mapping=tex-text}
\newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{Droid Serif}
\setromanfont[Numbers=OldStyle, Ligatures={Common}]{Droid Serif}
\setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}
\setmonofont[Scale=MatchLowercase]{Source Code Pro}