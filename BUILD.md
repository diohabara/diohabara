# How to Build

This document describes how to build the `resume.pdf` from the `resume.typ` source file using Nix.

## 1. Install Nix

If you don't have Nix installed, follow the official instructions:
[https://nixos.org/download/](https://nixos.org/download/)

## 2. Build the PDF

Navigate to the project root directory where `flake.nix` is located.

To build the `resume.pdf` using Nix:
```bash
nix build .#resume
```
This will generate `resume.pdf` in the `result/share/doc/` directory (symlinked to `result` in the project root).

## 3. Using CI/CD (GitHub Actions)

This repository is configured with a GitHub Actions workflow that automatically builds the PDF using Nix.

- **Trigger**: The workflow runs automatically every time you push a commit to the `main` branch.
- **Artifacts**: After a successful run, you can download the generated `resume.pdf` from the "Artifacts" section of the workflow summary page in the "Actions" tab of this repository.