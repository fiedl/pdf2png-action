# pdf2png-action
[![test status](https://github.com/fiedl/pdf2png-action/workflows/Test%20Github%20Actions/badge.svg)](https://github.com/fiedl/pdf2png-action/actions)

This github action converts pdf files into image files.

## Usage

```yaml
name: build

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: "Convert PDFs to PNGs"
      uses: fiedl/pdf2png-action
      env:
        ROOT_DIR: .
        MATCH: *.pdf
```

## Author and License

2019, Sebastian Fiedlschuster

License: MIT
