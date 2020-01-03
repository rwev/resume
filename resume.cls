\ProvidesClass{resume}[]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage[left=0.75in,top=0.75in,right=0.75in,bottom=0.75in]{geometry} % Document margins

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements

\pagestyle{empty} % Suppress page numbers

\newenvironment{cvSection}[1]{
\bigskip
{\Large \bf #1}
\medskip
\hrule
\medskip
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
}\smallskip
\begin{list}{$\rightarrow$}{\leftmargin=1.5em}
\itemsep -0.5em \vspace{-0.75em}
}{
\end{list}
\vspace{0.75em}
}

