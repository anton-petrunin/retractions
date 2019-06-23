input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside,a4paper, 12pt]{article}
\usepackage{../retraction}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;

%outputformat := "svg";

beginfig(1)
save u;
u:=1.4cm;

z.o=origin;
z.p=(1,0)*u;
z.left=z.p rotated -45;
z.leftend=2.4*z.left;
z.right=z.p rotated 45;
z.rightend=2.4*z.right;
z.x=z.p rotated 95;
z.hatx=altitude(z.o,z.x,z.right);
z.phix=(z.hatx--z.p+z.hatx) intersectionpoint circle(z.o,z.p);


save p;path p[];

p0=z.rightend--z.o--z.leftend{1,1}..2*z.p..{-1,1}cycle;

z.xend=(.3*z.p+z.hatx--3*z.p+z.hatx) intersectionpoint p0;

hatchfill p0  withcolor (20, 1mm, -.2bp);

draw circle(z.o,z.p);
draw arc(z.left,z.p,z.right) penbold;
draw z.rightend--z.o--z.leftend;
draw z.x--z.hatx--z.xend;
draw z.o--((z.p--3*z.p) intersectionpoint p0);

dOt z.o,z.p,z.x,z.hatx,z.phix,z.right;

label.lft(btex $o$ etex, z.o);
whitelabel.lrt(btex $p$ etex, z.p);
label.top(btex $x$ etex, z.x);
label.top(btex $x^{*}$ etex, z.right+(2,1.5));
label.top(btex $\hat x$ etex, z.hatx+(0,1));
whitelabel.urt(btex $x'$ etex, z.phix+(0,3));

whitelabel.top(btex $\alpha_o$ etex, 1.6*z.p);
whitelabel.top(btex $\alpha_x$ etex, (1.6*x.p,y.hatx));

label.rt(btex $\spc{U}$ etex, -z.p);

whitelabel(btex $\mathring{K}$ etex, (1.5*z.p) rotated -30);
endfig;
end




