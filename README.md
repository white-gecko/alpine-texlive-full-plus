# LaTeX Image

An alpine based image with texlive-full, biber and task installed.

Run it eg with the following command:

```
podman run --rm -v .:/wd:z -w /wd ghcr.io/white-gecko/alpine-texlive-full-plus:main latexmk -xelatex
```

To add custom tex packages mount it below `/root/texmf/tex/latex/`.
