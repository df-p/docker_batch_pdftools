docker_pdftools

```
docker run --rm -v $(pwd):/pdf -e UID=$(id -u) -e GID=$(id -g) tiryoh/pdftools [command]
```

This repository was derived from [kozakana/pdf-tools](https://github.com/kozakana/pdf-tools)
