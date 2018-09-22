.PHONY: all en zh_CN rh

all: clean zh_CN en

en:
	make clean
	xelatex resume.tex
	bibtex resume
	xelatex resume.tex
	xelatex resume.tex

zh_CN:
	make clean
	xelatex resume-zh_CN.tex
	bibtex resume-zh_CN
	xelatex resume-zh_CN.tex
	xelatex resume-zh_CN.tex

rh:
	make clean
	xelatex resume-zh_CN_research.tex
	bibtex resume-zh_CN_research
	xelatex resume-zh_CN_research.tex
	xelatex resume-zh_CN_research.tex

ifeq ($(OS),Windows_NT)
  # on Windows
  RM = cmd //C del
else
  # on Unix/Linux
  RM = rm -f
endif

clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind
