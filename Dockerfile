# FROM texlive/texlive:latest
FROM aruneko/texlive:latest
RUN tlmgr install siunitx
COPY entrypoint.sh /entrypoint.sh
COPY .latexmkrc /.latexmkrc
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]
