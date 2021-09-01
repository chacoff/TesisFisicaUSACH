\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tesis}[]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[oneside,11pt,letterpaper,fullpage]{book}  % a4paper
\usepackage[letterpaper,head=13.6pt, papersize={216mm, 279mm}]{geometry}  % pass nofoot nohead
\geometry{
letterpaper,
%total={151mm, 214mm},
top=40mm, 
bottom=25mm, 
left=40mm, 
right=25mm,
}

%--------Archivos suplementarios
\RequirePackage[spanish]{babel}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{float}
%--------Simbolos y fuentes
\RequirePackage{amstext}
\RequirePackage{amssymb,latexsym}
\RequirePackage{amsfonts}
\RequirePackage{stmaryrd}
\RequirePackage{amssymb,latexsym}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{marvosym}
\RequirePackage{textcomp}
\RequirePackage{mathcomp}
\RequirePackage{marvosym} %Simbolos de caritas
\RequirePackage{upgreek}
%-------Entornos, figuras
\RequirePackage{verbatim}
%%%% \RequirePackage{fancyvrb}
\RequirePackage{enumerate}
%-------Imagenes GNU Plot
\RequirePackage{graphicx}
\RequirePackage{epsf}
\RequirePackage{psfrag}
\RequirePackage{epic,eepic} % para imagenes
%\RequirePackage{subfigure} in troubles with subcaption
%\RequirePackage{color}
%-------Referencias
\RequirePackage{hyperref}
\RequirePackage{url} %citacion de URL
\RequirePackage[all]{hypcap}
%--------Tablas
\RequirePackage{multirow} % Multiples filas en Tablas
\RequirePackage{array}
\RequirePackage{caption}
\RequirePackage{subcaption}
\captionsetup[table]{position=top,belowskip=4pt,aboveskip=4pt}
\RequirePackage{longtable} % Para cortar tablas grandes
\RequirePackage{lscape}
%--------Apendice y tabla de contenidos
\RequirePackage{appendix}
% \RequirePackage[nottoc]{tocbibind}

%--------Package para la numeracion
\RequirePackage{thesis_em}
\RequirePackage[dvipsnames]{xcolor}
\definecolor{yellowJJ}{RGB}{255,200,60}
\definecolor{greenJJ}{RGB}{109,199,19}
\definecolor{purpleJJ}{RGB}{168,100,168}
\definecolor{blueJJ}{RGB}{51,107,241}
\definecolor{gray97}{gray}{.97}
\definecolor{gray75}{gray}{.75}
\definecolor{gray45}{gray}{.45}
\definecolor{deep_blue}{RGB}{0,0,128}
\definecolor{deep_red}{RGB}{153,0,0}
\definecolor{deep_green}{RGB}{0,128,0}
%--------Listing de código
\RequirePackage{listings} % For insert code in the paper
\lstset{ 
    language=Python,
	frame=Ltb,
	framerule=0pt,
	aboveskip=0.1cm,%0.5cm
	framextopmargin=1pt, %3pt
	framexbottommargin=1pt, %4pt
	framexleftmargin=0cm,
	framesep=0pt,
	rulesep=.4pt,
	backgroundcolor=\color{gray97},
	rulesepcolor=\color{black},
	%
	stringstyle=\ttfamily,
	showstringspaces=false,
	basicstyle=\footnotesize\ttfamily, %\small \scriptsize
	commentstyle=\color{gray45},
	otherkeywords={self, True, False, [INFO], ADAM, resnet50},             % Add keywords here
    keywordstyle=\color{deep_blue},  % \ttb
    emph={optim, nn ,models, StepLR, pd, dnn, os, dlib, tqdm, SVC, fit, EPOCH},
    emphstyle=\color{deep_red},    % \ttb Custom highlighting style
    stringstyle=\color{deep_green},  % \ttb
	%
	numbers=left,
	numbersep=5pt,%15pt
	numberstyle=\tiny \color[rgb]{0.205, 0.205, 0.205},
	numberfirstline=false,
	breaklines=True,
	%
	tabsize=4,
	upquote=true,
	extendedchars=true,
	morecomment=[s]{/**\<}{*/},
	morecomment=[s]{/*}{*/},
    morekeywords={¿,?},
}

%\usepackage[table,xcdraw]{xcolor}
\usepackage{xcolor,colortbl}
\definecolor{darknet}{rgb}{0.85,0.85,0.85}
\newcommand{\done}{\cellcolor{darknet}}  %{0.9}

\usepackage{dirtree}
\usepackage{tikz}
\usetikzlibrary{shapes.geometric, arrows}
\tikzstyle{startstop} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black, fill=red!30]
\tikzstyle{fit} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black, fill=blue!30]
\tikzstyle{io} = [trapezium, trapezium left angle=80, trapezium right angle=100, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=blue!30]
\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=yellowJJ]
\tikzstyle{decision} = [diamond, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=greenJJ]
\tikzstyle{arrow} = [thick,->,>=stealth]

\usepackage{listings, newtxtt}
\lstnewenvironment{listing}[1][]
	{\lstset{#1}\pagebreak[0]}
	{\pagebreak[0]}

\lstdefinestyle{consola}
{
	basicstyle=\scriptsize\bf\ttfamily,
	backgroundcolor=\color{gray75},
}

%--------Bibliografia
%\RequirePackage{apacite}
\RequirePackage[numbers]{natbib}
\RequirePackage[nottoc, notlof, notlot]{tocbibind} % Agregar referencias al índice
\RequirePackage[fixlanguage]{babelbib}
\selectbiblanguage{spanish}
\bibpunct{(}{)}{;}{}{,}{,}
\setcounter{secnumdepth}{3} %Mostrar numeración en las subsubsecciones
\setcounter{tocdepth}{3} %Mostrar las subsubsecciones en el índice

%================================================================
% Notaciones Generales
%================================================================
\newcommand{\textrev}[1]{\textbf{#1}}
\newcommand{\emphrule}[1]{\emph{#1}}
\newcommand{\normlen}[1]{\ensuremath{\left |#1\right |}}
%----------------------------------------------------------------
\newcommand\ie{i.e.\@\xspace}
\newcommand\eg{e.g.\@\xspace}
\newcommand\cf{cf.\@\xspace}
\newcommand\ds{\slash\hspace*{-.6ex}\slash}
\newcommand{\bra}[1]{[\hspace{-.4ex}[#1]\hspace{-.4ex}]}
%----------------------------------------------------------------

%================================================================
% Definición del estilo del header y footer
%================================================================
\usepackage{scrlayer-scrpage}  % scrlayer-scrpage
\clearpairofpagestyles
\ofoot*{\pagemark} % pagenumber in the outer footer with scrheadings and plain style
\ohead{\headmark} % headmark only with scrheadings

% Cambios al default de spanish
\deactivatetilden
\decimalpoint
% Headings
\markboth{}{}
% Renombre de los titulos por defecto
\addto\captionsspanish
{
	\def\bibname{Referencias Bibliográficas}
	\def\contentsname{Tabla de Contenidos}
	\def\listfigurename{\'Indice de Figuras}
	\def\listtablename{\'Indice de Tablas}
	\def\listalgorithmname{\'Indice de Algoritmos}
	\def\appendixname{Ap\'endice}
	\def\tablename{Tabla}
	\def\figurename{Figura}
	\def\chaptername{Cap\'itulo}
}
\renewcommand{\appendixname}{Apéndices}
\renewcommand{\appendixtocname}{Apéndices}
\renewcommand{\appendixpagename}{Apéndices}
%--------Header de los capitulos

\usepackage[compact]{titlesec}
\titleformat{\chapter}
{\bfseries\Large\vspace*{-2.0cm}} %Formato título
{ % Contenido de la etiqueta
	\filright
	\Large\MakeUppercase\chaptertitlename\ \thechapter.\ 
} %Contenido de la etiqueta
{0pt} % espacio mínimo entre etiqueta y cuerpo
{\filright\MakeUppercase} %código que precede al cuerpo del título
[\vspace{10pt}] %1,5

\titleformat{\section}
{\bfseries\large\vspace{4pt}}
{\large\MakeUppercase\thesection\ \vspace{3pt} } % 3 espacios luego del titulo de una seccion
{0pt}
{\MakeUppercase}
[\vspace*{0.5cm}]

\titleformat{\subsection}
{\bfseries\normalsize\vspace{4pt}}
{\normalsize\thesubsection\ }
{0pt}
{\vspace*{0.5cm}}

\titleformat{\subsubsection}
{\itshape\normalsize\vspace{1.0cm}}
{\itshape\thesubsubsection\ }
{0pt}
{\vspace*{0.5cm}\itshape}

\titlespacing*{\chapter} {0pt}{80pt}{60pt} 
\titlespacing*{\section} {0pt}{6.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection} {0pt}{6.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\paragraph} {0pt}{3.25ex plus 1ex minus .2ex}{1em}
\titlespacing*{\subparagraph} {\parindent}{3.25ex plus 1ex minus .2ex}{1em}

%--------Otros margenes
\setlength{\parindent}{2cm}%2cm Tabulación
\setlength{\headsep}{20pt}
\setlength{\voffset}{0.0cm}
\setlength{\hoffset}{0.0cm}
\setlength{\footskip}{20pt}
%--------Evitar que corte las palabras al final
\setlength{\pretolerance}{2000}
\setlength{\tolerance}{3000}
%--------pagina en blanco
\newcommand{\paginaenblanco}{\newpage{\pagestyle{empty}\cleardoublepage}}
%--------Referenciacion en la forma: 1-5
\newcommand{\lref}[2]{\ref{#1}--\ref{#2}}
%--------Referenciacion en la forma:  (1)
\newcommand{\cref}[1]{(\ref{#1})}
%--------Referenciacion en la forma:  (1)-(5)
\newcommand{\clref}[2]{(\ref{#1})--(\ref{#2})}
%--------Otras referencias
%\newcommand{\Ref}[1]{Ref.\ \cite{#1}}
\newcommand{\dRef}[2]{Refs.\ \cite{#1},\cite{#2}}
%================================================================
% Comandos matematicos
%================================================================
% Parte real e imaginaria
\newcommand{\Real}{\mbox{Re }}
\newcommand{\Imag}{\mbox{Im }}
% Mayor/menor o igual y aproximado
\newfont{\msamfnt}{msam10}
\newcommand{\msam}[1]{\mbox{ \msamfnt #1}\ }
\newcommand{\simgeq}{\msam \&}
\newcommand{\simleq}{\msam .}
%--------Abreviaciones
\newcommand{\Capt}[1]{Cap.\ \ref{#1}}
\newcommand{\Fig}[1]{Fig.\ \ref{#1}}
\newcommand{\Sec}[1]{Sec.\ \ref{#1}}
%--------Otros
\newcommand{\salto}{\vspace{.5cm}}

%================================================================
% Caratula y Portada
%================================================================
%--------Comandos
\def\@title{} \def\@autor{} \def\@fecha{} \def\@profesorguia{} \def\@profesorcoguia{}
\def\@ciudad{} \def\@pais{} \def\@run{} \def\@telefono{} \def\@email{} \def\@annoingreso{}
\def\@diploma{}
\newcommand{\keywords}[1]{\def\keywords{#1}}
\def\titulo#1{\gdef\@title{\begin{center}{\LARGE\bf#1}%
\end{center}}\gdef\@titleMay{\begin{center}{\Large\bf{#1}} %\MakeUppercase
\end{center}}}
\def\autor#1{\gdef\@autor{{\bfseries #1}}\gdef\@autorn{#1}}
\def\fecha#1#2#3#4{\gdef\@diasemana{#1}\gdef\@diaexamen{#2}\gdef\@mesexamen{#3}%
\gdef\@annoexamen{#4}\gdef\@fecha{#3, #4}}
\def\profesorguia#1{\gdef\@profesorguia{#1}}
\def\profesorcoguia#1{\gdef\@profesorcoguia{#1}}
\def\diploma#1{\gdef\@diploma{#1}}
\def\regular#1{\gdef\@regular{#1}}
\def\externo#1{\gdef\@externo{#1}}
\def\presidente#1{\gdef\@presidente{#1}}
\def\ciudad#1{\gdef\@ciudad{#1}}
\def\pais#1{\gdef\@pais{#1}}
\def\run#1{\gdef\@run{#1}}
\def\telefono#1{\gdef\@telefono{#1}}
\def\email#1{\gdef\@email{#1}}
\def\annoingreso#1{\gdef\@annoingreso{#1}}
%--------Información del documento PDF
\hypersetup
{
	bookmarksopen, bookmarksnumbered, pdfdisplaydoctitle=true,
	% pdfborder=false,
	pdftitle=\@title,
	pdfauthor=\@autor,
	pdfsubject=Trabajo de T\'itulo,
	pdfkeywords=,
	pdfcreator=Universidad de Santiago de Chile,
	pdfproducer=,
	colorlinks=true,
	% linkcolor=red,
	% citecolor=green,
	% filecolor=magenta,
	% urlcolor=cyan,
	linkcolor=black,
	citecolor=black,
	filecolor=black,
	urlcolor=black,
	linkbordercolor={1 0 0},
	citebordercolor={0 1 0}
}
%------- CUBIERTA -------------
\newcommand{\makecubierta}
{
\vspace*{-0.5cm}
\begin{picture}(18,4)(0,40)
	\put(300,11){\includegraphics[scale=.25]{./images/LogoUsach.pdf}}
\end{picture}

\sloppy
\thispagestyle{empty}
\vspace*{-1.6cm}

\begin{center}
	{\bf \mbox{\large UNIVERSIDAD DE SANTIAGO DE CHILE}}\\
	{\bf \mbox{FACULTAD DE CIENCIA}}\\
	{\bf \mbox{Departamento de Física}}\\
\end{center}

	\vspace*{2cm}
	\@titleMay\par
	\vspace{1.0cm}
	{
		\large
		\begin{center}
		\vspace*{0.5cm}
		{\bf{\@autor}}\\[1.0cm]

		\vspace*{0.6cm}  % 1.6
		
		\begin{flushright}
		\begin{minipage}{7.0cm}
		
		\normalsize
		Profesor Guía: \\
		\@profesorguia\\  % Profesor Gu\'ia
		
		\vspace{0.5cm}
		Proyecto de Título para optar al Título Profesional de \@diploma\\
		
		\end{minipage}
		\end{flushright}
		
		\vspace*{2.5cm}
		\normalsize\@ciudad\ \@pais\\
		\vspace*{0.5cm}
		\@annoexamen
		\end{center}\par
		\vspace{.9cm}
	}
} %------- CUBIERTA -------------

%-------Copyright
\newcommand{\makecopyright}
{
\thispagestyle{empty}
\vspace*{17cm}\par
\begin{flushleft}
\copyright\ \@autor \\
Se autoriza la reproducción parcial o total de esta obra, con fines académicos, por cualquier forma, medio o procedimiento, siempre y cuando se incluya la cita bibliográfica del documento.
\end{flushleft}
}

%------Página de resumen (castellano)
\newcommand{\KeywordsES}[1]
{
	\par\noindent
	{\bf Palabras Claves\/}: #1
}
\newcommand{\resumenCastellano}[1]
{
	\begin{center}
		{\Large\bf RESUMEN}
	\end{center}
#1
}
%------Página de abstract (ingles)
\newcommand{\KeywordsEN}[1]
{
	\par\noindent
	{\bf Keywords\/}: #1
}
\newcommand{\resumenIngles}[1]
{
	\begin{center}
		{\Large\bf ABSTRACT}
	\end{center}
#1
}
%------ conclusión
\newcommand{\conclusion}[1]
{
	\begin{center}
		{\Large\bf CONCLUSIONES}
	\end{center}
#1
}

\endinput
%% 
%% End of file `tesis.cls'.
