FROM pandoc/latex:3-ubuntu

RUN tlmgr --verify-repo=all install tex-gyre titlesec
RUN tlmgr --verify-repo=all install roboto
RUN tlmgr --verify-repo=all install fontaxes
RUN tlmgr --verify-repo=all install lato
RUN tlmgr --verify-repo=all install inconsolata

# 	docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex-resume:1.0 .tmp/resume.tex.md $(PANDOCARGS) --variable subparagraph --template=$(LATEX_TEMPLATE) -H header.tex -o $@
