# FROM texlive/texlive:latest
# FROM aruneko/texlive:latest
FROM ompugao/ubuntu-texlive-ja-devcontainer:latest
COPY entrypoint.sh /entrypoint.sh
COPY .latexmkrc /.latexmkrc
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]
