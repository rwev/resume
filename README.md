# [resume](resume.pdf)

## dependencies

```shell script
sudo apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
```

### mac 
```shell script
brew cask install basictex
```

## compile


### mac
```shell script
/Library/TeX/texbin/pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=./out resume.tex
```



