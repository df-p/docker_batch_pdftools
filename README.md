# docker_pdftools

## Usage

```
docker run --rm -v $(pwd):/pdf -e UID=$(id -u) -e GID=$(id -g) tiryoh/pdftools [command]
```

### commands

dencrypt PDF
```
qpdf --decrypt encrypted.pdf --password=PASSWORD decrypted.pdf
```

combine hoge1.pdf and hoge2.pdf to hoge.pdf
```
pdftk hoge1.pdf hoge2.pdf cat output hoge.pdf
```

## License

(C) 2019 Tiryoh

This repository is released under the MIT license, see [LICENSE](./LICENSE).  
Unless attributed otherwise, everything in this repository is under the MIT license.

## Acknowledgements

This repository was derived from [kozakana/pdf-tools](https://github.com/kozakana/pdf-tools).
