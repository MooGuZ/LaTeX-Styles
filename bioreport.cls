% bioreport.sty
% Report for EECS 458 (Bioinformatics) Assignment and Seminar Summary
% Hao Zhu (Morgan) hzhu[at]case[dot]edu
% September 20th, 2013 -- Draft -- Version 0.2

% IDENTIFICATION
% --------------
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{bioreport}[2013/09/20 Draft 0.1 BioInfo Report]

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
\LoadClass{article}

\RequirePackage{array,bm,ulem,wrapfig,makecell}
\RequirePackage{amsmath,amssymb,mathabx,eulervm,mathpazo,bbm}
\RequirePackage{graphicx,subfigure,hyperref,enumerate,textcomp}

\RequirePackage{fontspec}
\setmainfont{Arno Pro}
\setmonofont{Courier}

\RequirePackage{tikz}
\usetikzlibrary{arrows,snakes,shapes,backgrounds}

\RequirePackage[margin=1in]{geometry}

\RequirePackage{mathtools}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}

\RequirePackage{setspace}
\setlength{\parskip}{1em}
\setlength{\parindent}{0pt}

\RequirePackage[ruled,lined,linesnumbered]{algorithm2e}
\SetKwInOut{Input}{IN}
\SetKwInOut{Output}{OUT}

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
\pagestyle{fancy}
\lhead{Hao Zhu - ID 3292380}
\chead{\today}
\rhead{Page \thepage}
\lfoot{}
\cfoot{}
\rfoot{}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}

% STRUCTURES, FUNCTIONS AND COMMANDS
% ----------------------------------
\newcommand{\infobox}[3]{
\begin{spacing}{0}
    \fbox{\parbox{#1\textwidth}{
		{\large \bf \uline{#2}} \\ 
		{\small #3} \\
		{\small Hao Zhu, \href{mailto:hxz244@case.edu}{hzhu@case.edu}\\ PhD Student, Computer and Information Science\\ \today}
	}}
\end{spacing}
\vspace{3em}
}

\newcommand{\qed}{\hfill \ensuremath{\blacksquare}}

\newcommand{\point}[1]{{\large \bf #1}}
\newcommand{\subpoint}[1]{{\bf \uline{#1}}}

\newcommand{\mathf}[1]{${\color{blue} #1}$}
\newcommand{\mathl}[1]{$${\color{blue} #1}$$}

\DeclareMathOperator*{\argmin}{\arg\!\min}
\DeclareMathOperator*{\argmax}{\arg\!\max}

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
