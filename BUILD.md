# How to Build

This document describes how to build the `resume.pdf` from the `resume.typ` source file using Nix.

## 1. Install Nix

If you don't have Nix installed, follow the official instructions:
[https://nixos.org/download/](https://nixos.org/download/)

## 2. Build the PDF

Navigate to the project root directory where `flake.nix` is located.

### Enter the development shell (optional)
To get a shell with Typst and Font Awesome available:
```bash
nix develop
```
You can then compile `resume.typ` directly:
```bash
typst compile resume.typ
```

### Compile directly
To compile the PDF without entering the development shell:
```bash
nix develop -c typst compile resume.typ
```
This will generate `resume.pdf` in the same directory.

## 3. Using CI/CD (GitHub Actions)

This repository is configured with a GitHub Actions workflow that automatically builds the PDF using Nix.

- **Trigger**: The workflow runs automatically every time you push a commit to the `main` branch.
- **Artifacts**: After a successful run, you can download the generated `resume.pdf` from the "Artifacts" section of the workflow summary page in the "Actions" tab of this repository.