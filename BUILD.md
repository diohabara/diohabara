# How to Build

This document describes how to build the `resume.pdf` from the `resume.typ` source file using Typst.

## 1. Install Typst

If you don't have Typst installed, follow the official instructions:
[https://github.com/typst/typst#installation](https://github.com/typst/typst#installation)

## 2. Build the PDF

Navigate to the project root directory.

To build the `resume.pdf` using Typst:

```bash
typst compile resume.typ
```

This will generate `resume.pdf` in the project root.

## 3. Using CI/CD (GitHub Actions)

This repository is configured with a GitHub Actions workflow that automatically builds the PDF.

- **Trigger**: The workflow runs automatically every time you push a commit to the `main` branch that changes `resume.typ`.
- **Artifacts**: After a successful run, the generated `resume.pdf` will be available as a release artifact.
