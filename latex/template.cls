\LoadClass[a4paper, 12pt, french]{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2016/05/07 My custom class for short notes]

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\usepackage{babel}

\RequirePackage[margin=1in]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[colorlinks=true,allcolors=blue]{hyperref}
\RequirePackage{titling}
\RequirePackage{enumitem}
\RequirePackage{parskip}
\RequirePackage{graphicx}
\RequirePackage{amsmath, amsfonts,amssymb,mathtools,esvect,ifthen}

\setlist{nosep}
\urlstyle{same}
\renewcommand{\familydefault}{\sfdefault}

% Title formatting (affected by package "parskip")
\setlength{\droptitle}{-50pt}
\pretitle{\begin{center}\huge}
\posttitle{\par\end{center}}
\preauthor{\begin{center}\vspace{0pt}\large\it}
\postauthor{\par\end{center}}
\predate{\begin{center}\vspace{-5pt}\large\it}
\postdate{\par\end{center}}

% List Macros
\newcommand{\lst}[1]{\begin{itemize}#1\end{itemize}}
\newcommand{\enum}[1]{\begin{enumerate}#1\end{enumerate}}

\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}

\newcommand{\mtx}[1]{
\begin{pmatrix}
    #1
\end{pmatrix}
}



