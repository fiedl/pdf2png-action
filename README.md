# pdf2png-action

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