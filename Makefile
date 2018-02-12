all: infoknihovna.pdf newinfoknihovna.pdf pruvodce.html

infoknihovna.pdf: infoknihovna.tex
	lualatex $<

newinfoknihovna.pdf: newinfoknihovna.tex letacek.tex
	lualatex $<

pruvodce.html: pruvodce.tex letacek.tex letacek.sty hej.cfg mybuild.mk4
	# make4ht -ulm draft -c hej.cfg -e mybuild.mk4 -d ~/server-zaloha/web-new/src/ $< "-css"
	make4ht -ulm draft -c hej.cfg -e mybuild.mk4  $< "-css"

