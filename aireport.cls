% aireport.sty
% Report for EECS 491 (Artificial Intelligence) Assignment
% Hao Zhu (Morgan) hzhu[at]case[dot]edu
% Sept. 15th, 2013 -- Draft -- Version 0.1

% IDENTIFICATION
% --------------
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{aireport}[2013/09/15 Draft 0.1 AI Report]

% DECLARATION OF OPTIONS
% ----------------------
% This class extends the article class
% Read all the documentclass options, and pass them to article,
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% EXECUTION OF OPTIONS
% --------------------
\ProcessOptions \relax

% PACKAGE LOADING
% ---------------
\LoadClass[twoside]{article}

\RequirePackage{array,bm,ulem,wrapfig,makecell}
\RequirePackage{graphicx,subfigure,hyperref,enumerate,textcomp}
\RequirePackage{amsmath,amssymb,mathabx,eulervm,mathpazo,mathrsfs,bbm}

\RequirePackage{tikz}
\usetikzlibrary{arrows,snakes,backgrounds,shapes,calc}

\RequirePackage{fontspec}
\setmainfont{Arno Pro}
\setmonofont{Courier}

\RequirePackage[margin=1in]{geometry}

\RequirePackage{setspace}
\setlength{\parskip}{1em}
\setlength{\parindent}{0pt}

\RequirePackage{color,listings}
\definecolor{gray}{rgb}{0.9,0.9,0.9}
\definecolor{dgreen}{rgb}{0.1,0.6,0.1}
\lstset{
	language=Matlab,
	backgroundcolor=\color{gray},
	keywordstyle=\color{blue},
	commentstyle=\color{dgreen}\footnotesize,
	numbers=left,
	numberstyle=\scriptsize,
	frame=single,
	xleftmargin=5em, xrightmargin=5em, aboveskip=1em,
	basicstyle=\ttfamily\footnotesize
}

\RequirePackage{fancyhdr}
\fancypagestyle{headinfo}{
	\fancyhead{} % clear all header fields
	\fancyhead[RO,LE]{Page \thepage}
	\fancyhead[LO,RE]{Hao Zhu}
	\fancyhead[CO,CE]{Assignment - \today}
	\fancyfoot{} % clear all footer fields
	\renewcommand{\headrulewidth}{0.4pt}
	\renewcommand{\footrulewidth}{0pt}
}
\pagestyle{headinfo}
% \AtBeginDocument{\thispagestyle{firstpage}}

% STRUCTURES, FUNCTIONS AND COMMANDS
% ----------------------------------
\newcommand\indep{\protect\mathpalette{\protect\independenT}{\perp}}
	\def\independenT#1#2{\mathrel{\rlap{$#1#2$}\mkern2mu{#1#2}}}
\newcommand\depend{\makebox[0pt][l]{/}{\indep}}
\newcommand{\qed}{\hfill \ensuremath{\blacksquare}}

\DeclareMathOperator*{\argmin}{\arg\!\min}
\DeclareMathOperator*{\argmax}{\arg\!\max}

\newcommand{\mathf}[1]{${\color{black} #1}$}
\newcommand{\mathl}[1]{$${\color{black} #1}$$}

\newcommand{\rem}[1]{{\color{red} #1}}

\newcommand{\point}[1]{{\large \bf #1}}
\newcommand{\subpoint}[1]{{\bf \uline{#1}}}

\newcommand{\code}[1]{\uline{\texttt{#1}}}

% TikZ STYLES AND TEMPLATES
% -------------------------
\tikzstyle{GMnode}=[circle,draw=blue!50,fill=blue!20,minimum size=23pt]
\tikzstyle{GMfactor}=[rectangle,draw=green!50,fill=green!20,minimum size=17pt]

\tikzstyle{HMMstate}=[circle,draw=blue!50,fill=blue!20,minimum size=23pt]
\tikzstyle{HMMevid}=[circle,draw=red!50,minimum size=23pt]

\tikzstyle{HexCell}=[
  regular polygon,regular polygon sides=6,minimum size=1cm,draw=black,fill=gray!70,
  inner sep=0mm, outer sep=0mm,rotate=-30]
\tikzstyle{HexBdb}=[line width=5pt, line cap=round, black]
\tikzstyle{HexBdw}=[line width=3pt, line cap=round, white]
\tikzstyle{HexBlack}=[circle,draw=white,fill=black,minimum size=0.6cm]
\tikzstyle{HexWhite}=[circle,draw=black,fill=white,minimum size=0.6cm]
% -----------------
% END OF STYLE FILE