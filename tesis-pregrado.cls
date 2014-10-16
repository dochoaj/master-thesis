\NeedsTeXFormat{LaTeX2e}
% Estilo original para tesis de (Victor Munoz)
\ProvidesClass{tesis}[2010/06/10 v1.2 Estilo para tesis (Emir Munoz)]
\newif\ifkeys\keysfalse
\newif\ifdoctorado\doctoradotrue
\newif\iftxfonts\txfontsfalse
\newif\ifdosdirectores\dosdirectoresfalse
\newif\iflogo\logofalse
\newif\ifpropuesta\propuestafalse
\newif\ifcivil\civilfalse
\DeclareOption{keys}{\keystrue}
\DeclareOption{civil}{\civiltrue}
\DeclareOption{ejecucion}{\civilfalse}
\DeclareOption{txfonts}{\txfontstrue}
\DeclareOption{dosdirectores}{\dosdirectorestrue}
\DeclareOption{logo}{\logotrue}
\DeclareOption{nologo}{\logofalse}
\DeclareOption{propuesta}{\propuestatrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[oneside,12pt,a4paper,fullpage]{book}

%%   Modificado desde `book.cls'.
%%
%%   Modificado para que
%%   1) El default sea `oneside,12pt'
%%   2) Los nombres de secciones aparezcan en castellano
%%   3) La fecha aparezca en castellano
%%   4) Bibliografia aparezca bien acentuada en heading
%%   5) Los headings consten solo del numero de pagina.
%%       6) Los margenes sean: Superior = 3cm, Inferior = 3cm,
%%                                                 Izquierdo = 4cm, Derecho = 2,5cm.
%%       7) El argumento opcional de \chapter vaya a Indice.
%%   8) Las Referencias aparezcan en Indice.
%%   9) Indice General -> Indice
%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tesis.cls %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Archivos suplementarios
\RequirePackage[spanish]{babel}
\RequirePackage[utf8x]{inputenc}
\ifkeys\RequirePackage[notref,notcite]{showkeys}\fi
% Configuracion de header y footer
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
%\usepackage{fancy}
%--------Simbolos
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

%-------Entornos, figuras
\RequirePackage{verbatim}
\RequirePackage{fancyvrb}

\RequirePackage{enumerate}
% \RequirePackage{enumitem}

%------- Imagenes GNU Plot
\RequirePackage{graphicx}
\RequirePackage{epsf}
% \RequirePackage{graphics}
% \RequirePackage{nopageno}
% \RequirePackage{txfonts}
% \RequirePackage[usenames]{color}
\RequirePackage{psfrag}
\RequirePackage{upgreek}
\RequirePackage{epic,eepic} % para imagenes
\RequirePackage{subfigure}
%\RequirePackage{color}

\RequirePackage{hyperref} %Conflicto con la siguiente
%\RequirePackage{cite}
\RequirePackage{url} %citacion de URL
%\RequirePackage[section]{placeins}
\RequirePackage[all]{hypcap}


%--------Tablas
%\RequirePackage{colortbl} % Darle color a las tablas
\RequirePackage{multirow} % Multiples filas en Tablas
\RequirePackage{array}
% \RequirePackage{topcapt}
%\RequirePackage[tableposition=top]{caption} % Titulo de tablas arriba de la tabla
\RequirePackage{caption}
\captionsetup[table]{position=top,belowskip=4pt,aboveskip=4pt}
% \DeclareCaptionOption*{tableposition}{\captionsetup[table]{position=#1}}%
\RequirePackage{longtable}
\RequirePackage{lscape}

\RequirePackage{appendix}

\RequirePackage[nottoc]{tocbibind}

%--------Algoritmos
% \RequirePackage[chapter]{algorithm}
\RequirePackage[ruled,algochapter,linesnumbered]{algorithm2e}
% \floatname{algorithm}{Algoritmo}
\renewcommand{\algorithmcfname}{Algoritmo}%
% \renewcommand{\listalgorithmcfname}{#3}%
% \renewcommand{\algorithmautorefname}{#2}%
\RequirePackage{algorithmic}
\setlength{\algomargin}{1em}

% \SetAlgorithmName{Algoritmo}{Lista de Algoritmos}
% \SetAlgorithmName{Algoritmo}{algorithmautorefname}{Lista de Algoritmos}
% \SetAlgorithmName{Algoritmo}
% \renewcommand{\algorithmicendfor}{}%\algorithmicend\ \algorithmicfor}
% \renewcommand{\algorithmicendwhile}{}%\algorithmicend\ \algorithmicwhile}
% \renewcommand{\algorithmicendloop}{}%\algorithmicend\ \algorithmicloop}
\renewcommand{\algorithmicrequire}{\textbf{Entrada:}}
\renewcommand{\algorithmicensure}{\textbf{Salida:}}
\renewcommand{\algorithmiccomment}[1]{//#1}

% Configuracion indice de algoritmos
\renewcommand{\listofalgorithms}{\begingroup
  \tocfile{\'Indice de Algoritmos}{loa}
\endgroup}

\RequirePackage{thesis_em}

% Listing de código
\usepackage{listings} % For insert code in the paper
\lstset{
%       language=[Visual]C++,
      frame=Ltb,
     framerule=0pt,
     aboveskip=0.2cm,%0.5cm
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
     basicstyle=\scriptsize\ttfamily, %\small \scriptsize
     commentstyle=\color{gray45},
     keywordstyle=\bfseries,
     %
     numbers=left,
     numbersep=4pt,%15pt
     numberstyle=\tiny,
     numberfirstline=false,
     breaklines=true,
     %
     tabsize=4,
     upquote=true,
     extendedchars=true,
     morecomment=[s]{/**\<}{*/},
     morecomment=[s]{/*}{*/},
%      morekeywords={¿,?},
   }
\usepackage{color}
\definecolor{gray97}{gray}{.97}
\definecolor{gray75}{gray}{.75}
\definecolor{gray45}{gray}{.45}
% minimizar fragmentado de listados
\lstnewenvironment{listing}[1][]
   {\lstset{#1}\pagebreak[0]}{\pagebreak[0]}

\lstloadlanguages{
         %[Visual]Basic
         %Pascal
         %C
         C++,
         %XML
         %HTML
         Java
}

% \lstdefinestyle{C++}
% {
%   language=C++,
%   sensitive=false,
%   morecomment=[l]{//},
%   morecomment=[s]{/*}{*/},
%   morecomment=[s]{/**<}{*/},
%   morekeywords={*},
%   escapeinside={\%*}{*)}{/*}{*/}{/**<},
% }

\lstdefinestyle{consola}
   {basicstyle=\scriptsize\bf\ttfamily,
    backgroundcolor=\color{gray75},
   }

% \lstdefinestyle{Java}{language=Java}

%--------Bibliografia
%\RequirePackage{apacite}
\RequirePackage{natbib}
\bibpunct{(}{)}{;}{}{,}{,}
\RequirePackage[fixlanguage]{babelbib}
\selectbiblanguage{spanish}

\RequirePackage{tocbibind} % Agregar referencias al índice

\iftxfonts\RequirePackage{txfonts}\fi

%-----------------Teoremas, definiciones, ejemplos, lemas, etc
\newtheoremstyle{teorema}{\topsep}{\topsep}%
  {\normalfont} % Body font
  {} % Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries} % Theorem head font
  {} % Punctuation after theorem head
  { } % Space after theorem head (\newline = linebreak)
  {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
\theoremstyle{teorema}
\newtheorem{teorema}{Teorema}[chapter]

\newtheoremstyle{ejemplo}{\topsep}{\topsep}%
  {\normalfont} % Body font
  {} % Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries} % Theorem head font
  {} % Punctuation after theorem head
  { } % Space after theorem head (\newline = linebreak)
  {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
\theoremstyle{ejemplo}
\newtheorem{ejemplo}{Caso}[chapter]%Ejemplo

\newtheoremstyle{definicion}{\topsep}{\topsep}%
  {\normalfont} % Body font
  {} % Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries} % Theorem head font
  {} % Punctuation after theorem head
  { } % Space after theorem head (\newline = linebreak)
  {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
\theoremstyle{definicion}
\newtheorem{definicion}{Definici\'on}[chapter]

\newtheoremstyle{lema}{\topsep}{\topsep}%
  {\normalfont} % Body font
  {} % Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries} % Theorem head font
  {} % Punctuation after theorem head
  { } % Space after theorem head (\newline = linebreak)
  {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
\theoremstyle{lema}
\newtheorem{lema}{Lema}[chapter]

\newenvironment{prueba}[1][Demostraci\'on]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1}]}{\end{trivlist}}

\renewcommand{\qed}{\nobreak \ifvmode \relax \else
      \ifdim\lastskip<1.5em \hskip-\lastskip
      \hskip1.5em plus0em minus0.5em \fi \nobreak
      \vrule height0.75em width0.5em depth0.25em\fi}

% \newtheoremstyle{pruba}{\topsep}{\topsep}%
%   {\normalfont} % Body font
%   {} % Indent amount (empty = no indent, \parindent = para indent)
%   {\bfseries} % Theorem head font
%   {} % Punctuation after theorem head
%   { } % Space after theorem head (\newline = linebreak)
%   {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
% \theoremstyle{prueba}
% \newtheorem{prueba}{Prueba}[chapter]


%================================================================
% Notaciones
%================================================================
\newcommand{\textrev}[1]{\textbf{#1}}
\newcommand{\emphrule}[1]{\emph{#1}}
\newcommand{\normlen}[1]{\ensuremath{\left |#1\right |}}
\newcommand{\keyclass}[4][*]{\ensuremath{\mathcal{K}^{\scriptscriptstyle#2}_{\scriptscriptstyle #3,#4^{#1}}}}
\newcommand{\keyclassl}[4][+]{\ensuremath{\mathcal{K}(PL^{\{#2\}}, PL^{\{#3\}}, PL^{\{#4\}}_{#1})}}
% \newcommand{\keyclassl}[4][*]{\ensuremath{\mathcal{K}(PL^{\{\scriptscriptstyle#2\}}, PL^{\{\scriptscriptstyle #3\}}, PL^{\{#4\}}_{#1})}}
% ${\cal K}(PL^{\{.,\_^*\}}, PL^{\{.,\_^*\}}, PL^{\{.\}}_+)$
%------------------------------------------------------------------------------------------------
\newcommand\ie{i.e.\@\xspace}
\newcommand\eg{e.g.\@\xspace}
\newcommand\cf{cf.\@\xspace}
\newcommand\ds{\slash\hspace*{-.6ex}\slash}
\newcommand{\bra}[1]{[\hspace{-.4ex}[#1]\hspace{-.4ex}]}
%------------------------------------------------------------------------------------------------
\newcommand{\labels}{\ensuremath{\mathcal L}}
\newcommand{\anylabel}{\ensuremath{\ell}}
\newcommand{\fixedlabel}{\ensuremath{\anylabel_0}}
\newcommand{\zerolabel}{\ensuremath{\varepsilon}}
\newcommand{\wildcard}{\ensuremath{\_^*}}
\newcommand{\dipath}{\ensuremath{D}}
\newcommand{\pin}{\ensuremath{\lesssim}}
\newcommand{\pathexp}[2]{\ensuremath{#1}\textlbrackdbl\ensuremath{{#2}}\textrbrackdbl}
% \newenvironment{letterate}{\begin{enumerate}\itemsep0ex}
% \renewcommand{\labelenumi}{(\alph{enumi})}{\end{enumerate}}

% \renewcommand\printchapternonum[1]{\chaptitlefont\centering ##1}

%--------------------------------------------
% Definición del estilo del header y footer
%
\lhead{\chaptername \thechapter. \chaptermark}
\chead{}
\rhead{\thepage}
% \lfoot{}
\cfoot{}
% \rfoot{}
% \renewcommand{\headrulewidth}{0.4pt}
% \renewcommand{\footrulewidth}{0.4pt}
%%\fancyheadoffset{0.4cm} %[O,E]
\fancyheadoffset[LE,RO]{0cm}
%\fancyfootoffset{1.4cm}

% Cambios al default de spanish
\deactivatetilden
\decimalpoint

% Headings
\markboth{}{}

% Renombre de los titulos por defecto
\addto\captionsspanish{
  \def\bibname{Referencias}
  \def\contentsname{\'Indice de Contenidos}
  \def\listfigurename{\'Indice de Figuras}
  \def\listtablename{\'Indice de Tablas}
  \def\listalgorithmname{\'Indice de Algoritmos}
  %\def\appendixname{Apéndice}
  \renewcommand{\appendixname}{Apéndice}
  \renewcommand{\appendixtocname}{Apéndice}
  \renewcommand{\appendixpagename}{Apéndice}
  \def\tablename{Tabla}
  \def\figurename{Figura}
  \def\chaptername{Cap\'itulo}
}

%\newenvironment{thebibliographya}[1]{\begin{thebibliography}{#1}}%
%{\end{thebibliography}}
%\renewenvironment{thebibliography}[1]{\begin{thebibliographya}{#1}%
%\addcontentsline{toc}{chapter}{\bibname}}{\end{thebibliographya}}

% Margenes
% \usepackage[right=2.5cm,left=4cm,top=4cm,bottom=2.5cm,headsep=0.5cm,footskip=0.5cm]{geometry}
% Superior = 4cm, Inferior = 2.5cm,
% Izquierdo = 4cm, Derecho = 2.5cm

% Margenes segun reglamento: izq=inf=3cm y sup=der=2cm

% \RequirePackage{anysize}
%\marginsize{left}{right}{top}{bottom}:
%\marginsize{3cm}{2cm}{2cm}{3cm}

\RequirePackage[a4paper,nohead,nofoot]{geometry}
% \geometry{top=1.7cm, bottom=3.4cm, left=2.16cm, right=1.2cm}
\geometry{top=1.77cm, bottom=3.67cm, left=2.15cm, right=0.92cm}%1.75 3.7 2.15 0.9

\setlength{\parindent}{2cm}%2cm Tabulación
% \setlength{\oddsidemargin}{-0.35cm}%{.46cm}%1.46cm %izquierdo 2.54cm(1in)+.46cm
% \setlength{\textwidth}{17.6cm}%15.1cm
% \setlength{\textheight}{24.7cm}%21cm
% \setlength{\topmargin}{1.3cm}%.75
% \setlength{\voffset}{-0.8in}
\setlength{\headsep}{20pt}
\setlength{\voffset}{0.0cm}
\setlength{\hoffset}{0.0cm}
\setlength{\footskip}{20pt}

% \renewcommand{\baselinestretch}{1.5}
% \renewcommand{\baselineskip}{24pt}

%\setlength{\parskip}{1,5cm}
% % \paperheight = 27.9cm
% % \paperwidth = 21.6cm

%Evitar que corte las palabras al final
\setlength{\pretolerance}{2000}
\setlength{\tolerance}{3000}

% pagina en blanco
\newcommand{\paginaenblanco}{\newpage{\pagestyle{empty}\cleardoublepage}}

% Insercion de figuras en texto
% USO:
%       \figura{\special{isoscale ..., \the\hsize ...}}
%       \figurab{\special{isoscale ..., \the\hsize ...}}

\newcommand{\figura}[1]{
\noindent
\begin{minipage}[t]{8.5cm}
\begin{picture}(60,5)
\put(0,0){#1}
\end{picture}
\end{minipage}
}
\newcommand{\figurab}[1]{
\noindent
\begin{minipage}[t]{6cm}
\begin{picture}(60,5)
\put(0,0){#1}
\end{picture}
\end{minipage}
}

% Referenciacion en la forma: 1-5
\newcommand{\lref}[2]{\ref{#1}--\ref{#2}}

% Referenciacion en la forma:  (1)
\newcommand{\cref}[1]{(\ref{#1})}

% Referenciacion en la forma:  (1)-(5)
\newcommand{\clref}[2]{(\ref{#1})--(\ref{#2})}

%\newcommand{\cita}[1]{[\ref{#1}]}
%\newcommand{\dcita}[2]{[\ref{#1},\ref{#2}]}
%\newcommand{\lcita}[2]{[\ref{#1}--\ref{#2}]}

% Innecesario con cite.sty
%\newcommand{\lcite}[2]{[\ref{#1}--\ref{#2}]}

\newcommand{\Ref}[1]{Ref.\ \cite{#1}}
\newcommand{\dRef}[2]{Refs.\ \cite{#1},\cite{#2}}

% Innecesario con cite.sty
%\def\@bibitem#1{\item\if@filesw \immediate\write\@auxout
%       {\string\bibcite{#1}{\the\value{\@listctr}}%
%            \string\newlabel{#1}{{\the\value{\@listctr}}{\thepage}}}\fi\ignorespaces}


% ******** Comandos matematicos *********

% Parte real e imaginaria
\newcommand{\Real}{\mbox{Re }}
\newcommand{\Imag}{\mbox{Im }}

% Mayor/menor o igual y aproximado
\newfont{\msamfnt}{msam10}
\newcommand{\msam}[1]{\mbox{ \msamfnt #1}\ }
\newcommand{\simgeq}{\msam \&}
\newcommand{\simleq}{\msam .}

% ***************************************

%Abreviaciones
\newcommand{\Capt}[1]{Cap.\ \ref{#1}}
\newcommand{\Fig}[1]{Fig.\ \ref{#1}}
\newcommand{\Sec}[1]{Sec.\ \ref{#1}}

%Otros
\newcommand{\salto}{\vspace{.5cm}}

%
%      **************** Figuras ****************
%
% Enumeracion referenciable de figuras opcionalmente
% con subindices 4(a), 4(b), etc.
% USO:
%       \begin{figenum}
%       \itemfig ...
%       \labelfig{...}
%       \begin{subfigenum}
%       \itemfig ...
%       \labelfig{...}
%       \end{subfigenum}
%       \end{figenum}
%
% O BIEN (un caption global, con partes (a), (b), etc.):
%       \begin{fignum}
%       \itemfig ...
%       \labelfig{...}
%       \begin{subfignum}
%       \itemfig ...
%       \labelfig{...}
%       \end{subfignum}
%       \end{fignum}

\newcommand{\currentlabelfig}{}
\newcommand{\globallabelfig}{}
\newcommand{\currentfigmark}{}

\newcommand{\labelfig}[1]{\immediate\write\@auxout{\string
        \newlabel{#1}{{\currentlabelfig}{\thepage}}}%
\immediate\write\@auxout{\string
        \newlabel{#1global}{{\globallabelfig}{\thepage}}}}

\newcounter{uno}
\newcounter{dos}
\setcounter{uno}{0}
\setcounter{dos}{1}

\newcounter{figenum}
\newcounter{subfigenum}
\newcounter{figenumback}
\setcounter{figenum}{0}
\setcounter{figenumback}{0}

\renewcommand{\thesubfigenum}{\alph{subfigenum}}

\newcommand{\itemfig}{}
\newcommand{\itemfigback}[1]{\addtocounter{figenum}{-1}%
\setcounter{figenumback}{#1}\itemfig (Continuaci\'on.)}

\newenvironment{figenum}{\setcounter{uno}{1} \setcounter{dos}{0}
\renewcommand{\currentlabelfig}{\thefigenum}
\renewcommand{\globallabelfig}{\thefigenum}
\renewcommand{\currentfigmark}{\thefigenum}
\renewcommand{\itemfig}{\addtocounter{figenum}{\value{uno}}%
\addtocounter{subfigenum}{\value{dos}}%
\item Fig.\ \currentfigmark.\
}
\begin{enumerate}}{\renewcommand{\currentlabelfig}{}%
\renewcommand{\globallabelfig}{}%
\renewcommand{\currentfigmark}{}\end{enumerate}}

\newenvironment{subfigenum}{\addtocounter{figenum}{1}
\setcounter{uno}{0}\setcounter{dos}{1}
\renewcommand{\currentlabelfig}{\thefigenum(\thesubfigenum)}
\renewcommand{\currentfigmark}{\thefigenum(\thesubfigenum)}
\setcounter{subfigenum}{0}}{\setcounter{uno}{1}\setcounter{dos}{0}
\renewcommand{\currentlabelfig}{\thefigenum}
\renewcommand{\currentfigmark}{\thefigenum}}

\newenvironment{fignum}{\setcounter{uno}{1} \setcounter{dos}{0}
\renewcommand{\currentlabelfig}{\thefigenum}
\renewcommand{\globallabelfig}{\thefigenum}
\renewcommand{\currentfigmark}{\thefigenum}
\renewcommand{\itemfig}{\addtocounter{figenum}{\value{uno}}%
\addtocounter{subfigenum}{\value{dos}}%
\item Fig.\ \currentfigmark.\
}
\begin{enumerate}}{\renewcommand{\currentlabelfig}{}%
\renewcommand{\globallabelfig}{}%
\renewcommand{\currentfigmark}{}\end{enumerate}
}

\newenvironment{subfignum}{\setcounter{uno}{0}\setcounter{dos}{1}%
\renewcommand{\currentlabelfig}{\thefigenum(\thesubfigenum)}%
\renewcommand{\currentfigmark}{(\thesubfigenum)}%
\renewcommand{\itemfig}{\addtocounter{figenum}{\value{uno}}%
\addtocounter{subfigenum}{\value{dos}}%
\currentfigmark~}%
\setcounter{subfigenum}{0}}{\setcounter{uno}{1}\setcounter{dos}{0}%
\renewcommand{\currentlabelfig}{\thefigenum}%
\renewcommand{\currentfigmark}{\thefigenum}%
\renewcommand{\itemfig}{\addtocounter{figenum}{\value{uno}}%
\addtocounter{subfigenum}{\value{dos}}%
\item Fig.\ \currentfigmark.\ }%
}

% Figuras en texto, mezclando el figure de LaTeX y el fignum de tesis.cls

\newenvironment{figtxt}{\setcounter{uno}{1} \setcounter{dos}{0}
\renewcommand{\currentlabelfig}{\thefigenum}
\renewcommand{\globallabelfig}{\thefigenum}
\renewcommand{\currentfigmark}{\thefigenum}
\renewcommand{\itemfig}{\addtocounter{figenum}{\value{uno}}%
\addtocounter{subfigenum}{\value{dos}}%
\vspace*{-1.5cm}%
\item[] Fig.\ \currentfigmark.\ }
\begin{list}{}%
{\setlength{\leftmargin}{1.5em}\setlength{\rightmargin}{\leftmargin}}}%
{\renewcommand{\currentlabelfig}{}%
\renewcommand{\globallabelfig}{}%
\renewcommand{\currentfigmark}{}\end{list}
}

\newenvironment{subfigtxt}{\setcounter{uno}{0}\setcounter{dos}{1}%
\renewcommand{\currentlabelfig}{\thefigenum(\thesubfigenum)}%
\renewcommand{\currentfigmark}{(\thesubfigenum)}%
\renewcommand{\itemfig}{\addtocounter{figenum}{\value{uno}}%
\addtocounter{subfigenum}{\value{dos}}%
\currentfigmark~}%
\setcounter{subfigenum}{\value{figenumback}}%
\setcounter{figenumback}{0}}{\setcounter{uno}{1}\setcounter{dos}{0}%
\renewcommand{\currentlabelfig}{\thefigenum}%
\renewcommand{\currentfigmark}{\thefigenum}%
\renewcommand{\itemfig}{\addtocounter{figenum}{\value{uno}}%
\addtocounter{subfigenum}{\value{dos}}%
\item[] Fig.\ \currentfigmark.\ }%
}

\newenvironment{fig}[1][tbp]{\begin{figure}[#1]
\baselineskip 24pt}{\end{figure}}

\setcounter{secnumdepth}{3} %Mostrar numeración en las subsubsecciones
\setcounter{tocdepth}{3} %Mostrar las subsubsecciones en el índice

% Header de los capitulos
%
\usepackage[compact]{titlesec}
\titleformat{\chapter}%[frame]%[display]
{\bfseries\Large\vspace*{-2.0cm}} %Formato título
{ % Contenido de la etiqueta
%   \vspace{0.5cm}
  \filright
  \Large\MakeUppercase\chaptertitlename\ \thechapter.\
%   \vspace{3pt} % 3 espacios luego de un titulo de capitulo
} %Contenido de la etiqueta
{0pt} % espacio mínimo entre etiqueta y cuerpo
{\filright\MakeUppercase} %código que precede al cuerpo del título
[\vspace{10pt}] %1,5

% \titlespacing{\chapter}{0pt}{10pt}{13pt} left beforesep aftersep
\titlespacing*{\chapter} {0pt}{80pt}{60pt}
\titlespacing*{\section} {0pt}{6.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection} {0pt}{6.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\paragraph} {0pt}{3.25ex plus 1ex minus .2ex}{1em}
\titlespacing*{\subparagraph} {\parindent}{3.25ex plus 1ex minus .2ex}{1em}

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

% Referencias
%       [1] ...
%       [2] ...

\newenvironment{references}{\newpage\noindent {\bf References}
\begin{list}{[\arabic{enumi}]}{\usecounter{enumi}}}{\end{list}}

% Figuras al final del paper, con rotulo NombreAutor--Revista
% USO:
%       \figpaper{1.hgl}{fig1}

\newcommand{\figpaper}[2]{\newpage\pagestyle{empty}\par
\hspace*{-1.7cm}
\special{isoscale #1, \the\hsize 15cm}
\vspace*{14cm}\par
\begin{center}Fig.\ \ref{#2}\end{center}\par
\vfill\hfill Mu\~noz \hspace{.7cm} Phys.\ Rev.\ E
}

% Figuras Postcript en el texto, agrupadas en paneles.
% USO:
%   \figps...{1.eps}{fig1}
%   El comando tiene un subindice, que indica el numero de figuras en
% la pagina, en numeros romanos, minuscula.
%
% Tamano pagina total usable: %(17,23)

\newcommand{\figps}[1]{%
\setlength{\unitlength}{1cm}%
\begin{picture}(16,5)(3.3,3)%
\put(3,0){\epsfxsize=15cm\epsfbox{#1}}%
\end{picture}%
}

\newcommand{\figpsii}[2]{%
\setlength{\unitlength}{1cm}%
\begin{picture}(16,7.5)(2.3,0)%
\put(0,0){\epsfxsize=10.5cm\epsfbox{#1}}%
\put(9.5,0){\epsfxsize=10.5cm\epsfbox{#2}}%
\end{picture}%
}

\newcommand{\figpsiii}[3]{%
\setlength{\unitlength}{1cm}%
\begin{picture}(16,13.5)(2.3,0)%
\put(0,7.5){\epsfxsize=10.5cm\epsfbox{#1}}%
\put(9.5,7.5){\epsfxsize=10.5cm\epsfbox{#2}}%
\put(4.75,0){\epsfxsize=10.5cm\epsfbox{#3}}%
\end{picture}%
}

\newcommand{\figpsiv}[4]{%
\setlength{\unitlength}{1cm}%
\begin{picture}(16,13.5)(2.3,0)%
\put(0,7.5){\epsfxsize=10.5cm\epsfbox{#1}}%
\put(9.5,7.5){\epsfxsize=10.5cm\epsfbox{#2}}%
\put(0,0){\epsfxsize=10.5cm\epsfbox{#3}}%
\put(9.5,0){\epsfxsize=10.5cm\epsfbox{#4}}%
\end{picture}%
}

\def\@title{} \def\@autor{} \def\@fecha{} \def\@director{} \def\@codirector{}

\def\@ciudad{} \def\@pais{} \def\@run{} \def\@telefono{} \def\@email{} \def\@annoingreso{}

\newcommand{\keywords}[1]{\def\keywords{#1}}

\def\titulo#1{\gdef\@title{\begin{center}{\LARGE\bf#1}%
\end{center}}\gdef\@titleMay{\begin{center}{\LARGE\bf\MakeUppercase{#1}}%
\end{center}}}

\def\autor#1{\gdef\@autor{{\bfseries #1}}\gdef\@autorn{#1}}

\def\fecha#1#2#3#4{\gdef\@diasemana{#1}\gdef\@diaexamen{#2}\gdef\@mesexamen{#3}%
\gdef\@annoexamen{#4}\gdef\@fecha{#3, #4}}

%\def\director#1{\gdef\@director{{\bfseries #1}}}
\def\director#1{\gdef\@director{#1}}

%\def\codirector#1{\gdef\@codirector{{\bfseries #1}}}
\def\codirector#1{\gdef\@codirector{#1}}

\def\regular#1{\gdef\@regular{#1}}

\def\externo#1{\gdef\@externo{#1}}

\def\presidente#1{\gdef\@presidente{#1}}

\def\ciudad#1{\gdef\@ciudad{#1}}

\def\pais#1{\gdef\@pais{#1}}

\def\run#1{\gdef\@run{#1}}

\def\telefono#1{\gdef\@telefono{#1}}

\def\email#1{\gdef\@email{#1}}

\def\annoingreso#1{\gdef\@annoingreso{#1}}

\newsavebox{\GradoTesis}
\newsavebox{\Gradotesis}
\newsavebox{\GradoOtorgado}
\newsavebox{\GradoOtorgadoTapa}

\ifdoctorado\savebox{\GradoTesis}{DOCTORADO}
            \savebox{\Gradotesis}{Doctorado}
            \savebox{\GradoOtorgado}{Doctor en Ciencias de la Computaci\'on}
            \savebox{\GradoOtorgadoTapa}{\large Doctor en Ciencias de la Computaci\'on}
  \else\savebox{\GradoTesis}{MAG\'ISTER}
       \savebox{\Gradotesis}{Mag\'{\i}ster}
       \savebox{\GradoOtorgado}{Mag\'{\i}ster en Ingenier\'ia Inform\'atica}
       \savebox{\GradoOtorgadoTapa}{\large Mag\'{\i}ster en Ingenier\'ia Inform\'atica} %\large
\fi

\newsavebox{\directortext}
\newsavebox{\comisiontext}
\newsavebox{\directortextbf}

\ifdosdirectores\savebox{\directortext}{\large Profesores de Tesis}
                \savebox{\directortextbf}{\bf Profesores de Tesis}
  \else\savebox{\directortext}{\large Profesor de Tesis}
       \savebox{\directortextbf}{\bf Profesor de Tesis}
\fi
\savebox{\comisiontext}{\large Comisi\'on integrada por los profesores}

% Información del documento PDF
\hypersetup{
bookmarksopen, bookmarksnumbered, pdfdisplaydoctitle=true,
pdfborder=false,
pdftitle=Memoria de Título,
pdfauthor=Juan Alberto Daniel Ochoa John,
pdfsubject=Memoria de Título,
pdfkeywords=XML,
pdfcreator=Universidad de Santiago de Chile,
pdfproducer=Daniel Ochoa,
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

% Cubierta
%
\newcommand{\makecubierta}{%
\iflogo\vspace*{-0.5cm}
  \begin{picture}(18,4)(0,40)
    \ifcivil
      \put(380,4){\includegraphics[scale=.25]{./images/LogoUsach2}}
    \else
      \put(-20,4){\includegraphics[scale=.25]{./images/LogoUsach2}}
    \fi
  \end{picture}
\fi

\sloppy
\thispagestyle{empty}
\vspace*{-1.6cm}

\ifcivil
  \begin{center}
  {\bf \mbox{\large UNIVERSIDAD DE SANTIAGO DE CHILE}}\\
  {\bf \mbox{FACULTAD DE INGENIER\'IA}}\\
  {\bf \mbox{DEPARTAMENTO DE INGENIER\'IA INFORM\'ATICA}}\\
  \end{center}
\else
  \begin{flushleft}
  \iflogo\hspace*{4cm}\fi %-0.6in
  {\bf \mbox{UNIVERSIDAD DE SANTIAGO DE CHILE}}\\
  \iflogo\hspace*{4cm}\fi %-0.6in
  {\bf \mbox{FACULTAD DE INGENIER\'IA}}\\
  \end{flushleft}
\fi

\vspace*{5cm}
\@titleMay\par\vspace{1cm}{\large\begin{center}% titulo \\
\ifcivil
  %nada de espacio agregado
  \vspace*{1cm}
\else
  \vspace*{1.6cm}
  \vspace*{8cm}
\fi

\iflogo
{\bf\MakeUppercase{\@autor}}\\[1cm]
\else
{\bf\MakeUppercase{\@autor}}\\[1.5cm]
\fi

%Datos profesores
\ifcivil
\vspace*{1.6cm}

\begin{flushleft}
\normalsize
\hspace{7.5cm} PROFESOR GU\'IA: {\MakeUppercase{\@director}}\\
\ifdosdirectores
\hspace{7.5cm} PROFESOR CO-GU\'IA: {\MakeUppercase{\@codirector}}\\
\fi
\vspace{1cm}
\hspace{7.5cm} TESIS DE GRADO PRESENTADA \\
\hspace{7.5cm} EN CONFORMIDAD A LOS REQUISITOS PARA \\
\hspace{7.5cm} OBTENER EL GRADO DE MAG\'ISTER EN \\
\hspace{7.5cm} INGENIER\'IA INFORM\'ATICA \\
\end{flushleft}
\vspace*{3.5cm}
\normalsize\MakeUppercase{\@ciudad\ -- \@pais}\\
\@annoexamen
\else
  %No poner nada
  \@annoexamen
\fi
\end{center}\par
\iflogo \vspace{.9cm} \else \vspace{1cm} \fi
}}

% Caratula
%
\newcommand{\makecaratula}{%
\iflogo\vspace*{-1.0cm}
  \begin{picture}(18,4)(0,50)
    \ifcivil
      \put(380,4){\includegraphics[scale=.2]{./images/LogoUsach2}}
    \else
      \put(-20,4){\includegraphics[scale=.2]{./images/LogoUsach2}}
    \fi
  \end{picture}
\fi

\sloppy
\thispagestyle{empty}
\vspace*{-1.5cm}

\ifcivil
  \begin{center}
  {\bf \mbox{\large UNIVERSIDAD DE SANTIAGO DE CHILE}}\\
  {\bf \mbox{FACULTAD DE INGENIER\'IA}}\\
  {\bf \mbox{DEPARTAMENTO DE INGENIER\'IA INFORM\'ATICA}}\\
  \end{center}
\else
  \begin{flushleft}
  \iflogo\hspace*{4cm}\fi %-0.6in
  {\bf \mbox{UNIVERSIDAD DE SANTIAGO DE CHILE}}\\
  \iflogo\hspace*{4cm}\fi %-0.6in
  {\bf \mbox{FACULTAD DE INGENIER\'IA}}\\
  \end{flushleft}
\fi

\vspace*{5cm}
\@titleMay\par\vspace{1cm}{\large\begin{center}% titulo \\
\vspace*{0.0cm} %Pablo puso \vspace*{0.5cm}

\iflogo
{\bf\MakeUppercase{\@autor}}\\[1cm]
\else
{\bf\MakeUppercase{\@autor}}\\[1.5cm]
\fi

% \vspace*{0.5cm} %Pablo puso \vspace*{1cm}

%Datos profesores
\ifcivil
  \vspace*{1cm} %Tenia 1.6
  \begin{flushleft}
  \normalsize
  \hspace{7.5cm} PROFESOR GU\'IA: {\MakeUppercase{\@director}}\\
  \ifdosdirectores
  \hspace{7.5cm} PROFESOR CO-GU\'IA: {\MakeUppercase{\@codirector}}\\
  \fi
  \vspace{1cm}
\hspace{7.5cm} TESIS DE GRADO PRESENTADA \\
\hspace{7.5cm} EN CONFORMIDAD A LOS REQUISITOS PARA \\
\hspace{7.5cm} OBTENER EL GRADO DE MAG\'ISTER EN \\
\hspace{7.5cm} INGENIER\'IA INFORM\'ATICA \\
  \end{flushleft}
\fi
%===================================================================================
%CAMBIAR
%===================================================================================
% \else
%   \ifpropuesta
%   Propuesta de Tema de Tesis para el Grado de \usebox{\GradoOtorgadoTapa}\\
%   \else
%   Tesis de Grado presentada en conformidad a los requisitos para obtener el Grado de \usebox{\GradoOtorgadoTapa}\\
%   \fi
% \fi

% Para la propuesta
%===================================================================================
%CAMBIAR
%===================================================================================
% \ifpropuesta
% \vspace*{2.0cm}
\end{center}\par
% \normalsize
% \begin{flushright}
% \begin{tabular}[t]{l l}
%   Nombre: & \@autorn \\
%   R.U.N.: & \@run \\
%   %\usebox{\GradoOtorgadoTapa} \\
%   %Ingenier\'ia Civil Inform\'atica \\
%   A\~no Ingreso: & \@annoingreso \\
%   Tel\'efono: & \@telefono \\
%   E-mail: & \@email \\
%   \ifdosdirectores Profesores: \else Profesor: \fi & \ifdosdirectores %
%   {\normalfont \@director} \\
%   & {\normalfont \@codirector} \\
%   \else \@director \\ \fi
% \end{tabular}
% \end{flushright}
% \begin{center}
% \vspace{1.5cm}
% \@diasemana, \@diaexamen\ de \@mesexamen\ de \@annoexamen
% \end{center}
%
% \else
% \vspace*{1cm}
% \end{center}\par
% \iflogo \vspace{.9cm} \else \vspace{1cm} \fi
% \begin{center}
% \usebox{\comisiontext}: \ifdosdirectores %
% \begin{tabular}[t]{l}{\bfseries\@director} \\ {\bfseries\@codirector} \\
% {\bfseries\@regular} \\ {\bfseries\@externo} \\ {\bfseries\@presidente}
% \end{tabular}%
% \else \begin{tabular}[t]{l}{\bfseries\@director} \\
% {\bfseries\@regular} \\ {\bfseries\@externo} \\ {\bfseries\@presidente}
% \end{tabular} \fi \\
% \vspace*{1.5cm}
% \@ciudad\ de \@pais \\
% \@annoexamen
% \end{center}
% \fi
}}

% Copyright
%
\newcommand{\makecopyright}{
\thispagestyle{empty}
\vspace*{18cm}\par
\begin{flushleft}
  \copyright\ \@autor \\

  Se autoriza la reproducción parcial o total de esta obra, con fines académicos, por cualquier forma, medio o procedimiento, siempre y cuando se incluya la cita bibliográfica del documento.

  %Queda prohibida la reproducción parcial o total de esta obra en cualquier forma, medio o procedimiento sin permiso por escrito del autor.
\end{flushleft}
}

% Pagina de aprobacion

%
%\vspace{1cm}
%\noindent
%\begin{tabular}{l@{\hspace{1cm}}l}
%{\bf Director de Tesis}\\[.5cm]
%Dr.\ Primero&\rule{6cm}{\arrayrulewidth}\\[.7cm]
%{\bf Comisi\'on de Evaluaci\'on de la Tesis}\\[.5cm]
%Dr.\ Segundo&\rule{6cm}{\arrayrulewidth}\\[.5cm]
%Dr.\ Tercero&\rule{6cm}{\arrayrulewidth}\\[.5cm]
%Dr.\ Cuarto (Presidente)&\rule{6cm}{\arrayrulewidth}\\[.5cm]
%Dr.\ Quinto&\rule{6cm}{\arrayrulewidth}
%\end{tabular}

\newcommand{\makeaprueba}{
\begin{center}
FACULTAD DE INGENIER\'IA\\
UNIVERSIDAD DE SANTIAGO DE CHILE
\end{center}\par
\vspace{.5cm}\par
\begin{center}
INFORME DE APROBACI\'ON\\
TESIS DE \usebox{\GradoTesis}
\end{center}\par
\vspace{1cm}\par
Se informa a la Escuela de Postgrado de la Facultad de Ingenier\'ia que
la Tesis de \usebox{\Gradotesis} presentada por el candidato\par
\begin{center}\@autor\end{center}\par\noindent
ha sido aprobada por la Comisi\'on de Evaluaci\'on de la Tesis como
requisito para optar al grado de \usebox{\GradoOtorgado}, en el ex\'amen
de Defensa de Tesis rendido el d\'{\i}a
\@diaexamen\ de \@mesexamen\ de \@annoexamen.\par
}

\newcommand{\directorcomision}[1]{
\vspace{1cm}\noindent
%\begin{tabular}{l@{\hspace{1cm}}l}
\usebox{\directortextbf}\\[.5cm]
#1\hfill\rule{6cm}{\arrayrulewidth}\\[.7cm]}


\newcommand{\directorescomision}[2]{
\vspace{.3cm}\noindent
%\begin{tabular}{l@{\hspace{1cm}}l}
\usebox{\directortextbf}\\[.5cm]
#1\hfill\rule{6cm}{\arrayrulewidth}\\[.3cm]
#2\hfill\rule{6cm}{\arrayrulewidth}\\[.7cm]}

\newcommand{\miembro}[1]{\noindent #1
\hfill \rule{6cm}{\arrayrulewidth}\\[.3cm]}

\newenvironment{comision}{\noindent
{\bf Comisi\'on de Evaluaci\'on de la Tesis}\\[.3cm]}%
{}

\newenvironment{aprueba}{\makeaprueba}{}

%---------------------------------------
% Pagina de dedicatoria
\newenvironment{dedicatoria}[1]{
\thispagestyle{empty}
\vspace*{18cm}\par
\hspace*{5cm}
\begin{flushright}
  \textit{#1}
\end{flushright}
}


%---------------------------------------
% Pagina de agradecimientos
\newenvironment{gracias}{\begin{center}
{\Large\bf AGRADECIMIENTOS}
\end{center}}{}

%Pagina de biografia
%Obligatoria en las nuevas tesis
% \newenvironment{biografia}{\begin{center}
% {\Large BIOGRAF\'IA}\end{center}}{}

% Pagina de abstract

%\begin{center}
%{\Large RESUMEN}
%\end{center}
%
% ...
%\begin{center}
%{\Large ABSTRACT}
%\end{center}
%
% ...

\newcommand{\KeywordsES}[1]{\par\noindent
{\bf Palabras Claves\/}: #1}

\newcommand{\KeywordsEN}[1]{\par\noindent
{\bf Keywords\/}: #1}

\newcommand{\resumenCastellano}[1]{%
  \begin{center}
    {\Large\bf RESUMEN}
  \end{center}

#1
}

\newcommand{\resumenIngles}[1]{%
  \begin{center}
    {\Large\bf ABSTRACT}
  \end{center}

#1
}


\endinput
%%
%% End of file `tesis.cls'.
