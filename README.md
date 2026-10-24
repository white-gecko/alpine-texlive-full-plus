# LaTeX Image

An alpine based image with texlive-full, biber and task installed.

Run it eg with the following command:

```sh
podman run --rm -v .:/wd:z -w /wd ghcr.io/white-gecko/alpine-texlive-full-plus:main latexmk -xelatex
```

if you want to include an additional package mount it as follows:
```sh
$ podman run --rm -v .:/wd:z -v ~/path/to/my-package/:/root/texmf/tex/latex/my-package/:z -w /wd ghcr.io/white-gecko/alpine-texlive-full-plus:main latexmk -xelatex main.tex
```

To add custom tex packages mount it below `/root/texmf/tex/latex/`.
