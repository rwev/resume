\ProvidesClass{resume}[]

\LoadClass[10pt,letterpaper]{article} % Font size and paper type

\renewcommand{\familydefault}{\sfdefault} % sfdefault = sans serif; ttdefault = monospace ; rmdefault = serif

\usepackage[colorlinks = true,
linkcolor = blue,
urlcolor  = blue,
citecolor = blue,
anchorcolor = blue]{hyperref}

\usepackage[left=0.75in,top=0.75in,right=0.75in,bottom=0.75in]{geometry}

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements

\pagestyle{empty} % Suppress page numbers

\newenvironment{cvSection}[1]{
\bigskip

{\large \bf #1}

\smallskip
\hrule

\begin{list}{}{
\setlength{\leftmargin}{0em}
}
\item[]
}{
\end{list}
}

\newenvironment{cvSubsection}[4]{
{\bf #1} \hfill {#2}
\ifthenelse{\equal{#3}{}}{}{
\\
{\em #3} \hfill {\em #4}
}
\vspace{-0.5em}
\begin{list}{$\rightarrow$}{\leftmargin=1.5em}
\itemsep -0.5em
}{
\end{list}
}

