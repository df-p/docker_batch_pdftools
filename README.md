# docker_batch_pdftools

## Usage

```
docker run --rm -v $(pwd):/pdf -e UID=$(id -u) -e GID=$(id -g) df-p/pdftools [command]
```

### commands

encrypt single PDF
```
qpdf --encrypt $USERPASS $OWNERPASS $KEYLENGTH -- $SOURCE.pdf $DESTINATION.pdf 
```

encrypt multiple PDF
```
bash -c "for $f in /pdf/*.pdf; do qpdf --encrypt $USERPASS $OWNERPASS $KEYLENGTH -- $f.pdf $f-encrypted.pdf; done"
```

combine hoge1.pdf and hoge2.pdf to hoge.pdf
```
pdftk hoge1.pdf hoge2.pdf cat output hoge.pdf
```

## License

(C) 2019

This repository is released under the MIT license, see [LICENSE](./LICENSE).  
Unless attributed otherwise, everything in this repository is under the MIT license.

## Acknowledgements

This repository was derived from [Tiryoh/pdf-tools](https://github.com/Tiryoh/docker_pdftools.git).
