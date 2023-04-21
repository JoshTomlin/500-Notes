\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JoshCards}[2020/09/20 My class for bridge/500 documents]
\LoadClass{report}

\setlength\parindent{0pt}
\setlength{\parskip}{1.5em}
\usepackage{todonotes}
\usepackage{fancyhdr}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{tabularx}
\usepackage{relsize}
\usepackage{tikz-cd}
\usepackage{amssymb}
\usepackage{bbm}
\usepackage{hyperref}
\usepackage[margin=2.2cm]{geometry}
\usepackage{graphicx}
\usepackage{tensor}
\usepackage{braket}
\usepackage{simplewick}
\usepackage{onedown}

\newtheoremstyle{question}% <name>
    {1.5em}% <Space above>
    {0em}% <Space below>
    {}% <Body font>
    {}% <Indent amount>
    {\bf}% <Theorem head font>
    {:}% <Punctuation after theorem head>
    {.5em}% <Space after theorem headi>
    {}% <Theorem head spec (can be left empty, meaning `normal')>

\newtheoremstyle{theorem}% <name>
    {1.5em}% <Space above>
    {0em}% <Space below>
    {\it}% <Body font>
    {}% <Indent amount>
    {\bf}% <Theorem head font>
    {.}% <Punctuation after theorem head>
    {.5em}% <Space after theorem headi>
    {}% <Theorem head spec (can be left empty, meaning `normal')>


\theoremstyle{question}
\newtheorem{question}{Question}

\theoremstyle{theorem}
\newtheorem{theorem}{Theorem}[question]
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[theorem]

\newcommand*{\QED}{\hfill\ensuremath{\square}}%
\newcommand*{\zbar}{\overline{z}}%
\newcommand*{\Cbar}{\overline{\textbf{C}}}%
\newcommand*{\C}{\textbf{C}}%
\newcommand*{\R}{\textbf{R}}%
\newcommand*{\Rn}{{\textbf{R}^n}}%
\newcommand*{\Z}{\textbf{Z}}%
\newcommand*{\N}{\textbf{N}}%
\newcommand*{\Q}{\textbf{Q}}%
\newcommand*{\Hb}{\textbf{H}}%
\newcommand*{\Xuniv}{\tilde{X}_{\text{Univ}}}%
\newcommand*{\Xabel}{\tilde{X}_{\text{Abel}}}%
\newcommand{\<}{\left\langle}%
\renewcommand{\>}{\right\rangle}%
\newcommand*{\id}{\text{id}}%
\newcommand*{\im}{\text{Im }}%
\newcommand*{\redH}{\tilde{H}}%
\newcommand*{\Ext}{\text{Ext}}%
\newcommand*{\Hom}{\text{Hom}}%
\newcommand*{\m}{m_*}%
\newcommand*{\inv}{^{-1}}%
\newcommand*{\x}{\textbf{x}}%
\newcommand*{\ve}{\textbf{v}}%
\newcommand*{\ue}{\textbf{u}}%
\newcommand*{\RP}{\textbf{RP}}%
\newcommand{\F}{\textbf{F}}
\newcommand{\spann}{\text{span}}
\newcommand{\khat}{{\hat{1},...,\hat{k}}}
\newcommand{\A}{\mathcal{A}}
\newcommand{\Cs}{C^\infty}
\newcommand{\Obb}{\mathbb{O}}
\newcommand{\CP}{\textbf{CP}}
\newcommand{\D}{\mathfrak{D}}
\newcommand{\timesk}{^{\times k}}
\newcommand{\tensork}{^{\otimes k}}
\newcommand{\dtensork}{^{*\otimes k}}
\newcommand{\Ad}{\text{Ad}}
\newcommand{\ad}{\text{ad}}
\newcommand{\Aut}{\text{Aut}}
\newcommand{\End}{\text{End}}
\newcommand{\Ric}{\text{Ric}}
\newcommand{\Hyp}{\textbf{H}}
\newcommand{\xdot}{\dot{x}}
\newcommand{\xddot}{\ddot{x}}
\newcommand{\ydot}{\dot{y}}
\newcommand{\yddot}{\ddot{y}}
\DeclareMathOperator{\sech}{sech}
\DeclareMathOperator{\Tr}{Tr}
\DeclareMathOperator{\Ker}{Ker}
\newcommand{\hol}{\text{hol}_\nabla}
\newcommand{\holg}{\text{hol}_{\phi \cdot \nabla}}
\newcommand{\StabGE}{\text{Stab}_{\mathcal{G}_E}}
\newcommand{\Hol}{\mathcal{H}_{\nabla, x}}
\newcommand{\qbar}{\overline{q}}
\newcommand{\cbar}{\overline{c}}
\newcommand{\wbar}{\overline{w}}
\renewcommand{\H}{\textbf{H}}
\newcommand{\su}{\mathfrak{su}}
\newcommand{\wmc}{\omega_{MC}}
\newcommand{\G}{\mathcal{G}}
\newcommand{\HH}{\mathcal{H}}
\newcommand{\harm}{_\text{harm}}
\newcommand{\Aharm}{\mathcal{A}_\text{harm}}
\newcommand{\phiF}{\phi_{F_\theta}}
\newcommand{\tphiF}{\widetilde{\phi_{F_\theta}}}
\newcommand{\tv}{\tilde{v}}
\newcommand{\g}{\mathfrak{g}}
\newcommand{\h}{\mathfrak{h}}
\newcommand{\cC}{\mathfrak{C}}
\newcommand{\heis}{\mathfrak{heis}}
\newcommand{\gl}{\mathfrak{gl}}
\renewcommand{\o}{\mathfrak{o}}
\renewcommand{\u}{\mathfrak{u}}
\newcommand{\so}{\mathfrak{so}}
\renewcommand{\sl}{\mathfrak{sl}}
\newcommand{\Vir}{\mathfrak{Vir}}
\newcommand{\Rcal}{\mathcal{R}}
\newcommand{\p}{\partial}
\newcommand{\pb}{\overline{\partial}}
\newcommand{\zb}{\overline{z}}
\newcommand{\vb}{\overline{v}}
\newcommand{\Fb}{\overline{F}}
\newcommand{\vphi}{\varphi}
\newcommand{\eps}{\varepsilon}
\newcommand{\TF}{\tilde{F}}
\newcommand{\hF}{\hat{F}}
\newcommand{\hH}{\hat{H}}
\newcommand{\hE}{\hat{E}}
\newcommand{\dz}{\frac{dz}{2\pi i}}
\newcommand{\dw}{\frac{dw}{2\pi i}}
\newcommand{\dx}{\frac{dx}{2\pi i}}
\newcommand{\glhat}{\widehat{\mathfrak{gl}}(1)}
\newcommand{\TL}{\tilde{L}}

\renewcommand{\C}{$\Cl$}
\renewcommand{\D}{$\Di$}
\renewcommand{\H}{$\He$}
\renewcommand{\S}{$\Sp$}
\newcommand{\kitty}{\textbf{Kitty}}

\newcommand{\tenH}{{10\He}}
\newcommand{\tenD}{{10\D}}
\newcommand{\tenC}{{10\C}}
\newcommand{\tenS}{{10\S}}
\newcommand{\tenNT}{{10NT}}
\newcommand{\nineH}{{9\H}}
\newcommand{\nineD}{{9\D}}
\newcommand{\nineC}{{9\C}}
\newcommand{\nineS}{{9\S}}
\newcommand{\nineNT}{{9NT}}
\newcommand{\eightH}{{8\H}}
\newcommand{\eightD}{{8\D}}
\newcommand{\eightC}{{8\C}}
\newcommand{\eightS}{{8\S}}
\newcommand{\eightNT}{{8NT}}
\newcommand{\sevenH}{{7\H}}
\newcommand{\sevenD}{{7\D}}
\newcommand{\sevenC}{{7\C}}
\newcommand{\sevenS}{{7\S}}
\newcommand{\sevenNT}{{7NT}}
\newcommand{\sixH}{{6\H}}
\newcommand{\sixD}{{6\D}}
\newcommand{\sixC}{{6\C}}
\newcommand{\sixS}{{6\S}}
\newcommand{\sixNT}{{6NT}}