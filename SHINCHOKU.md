# Resume

![CI](https://github.com/diohabara/diohabara/workflows/CI/badge.svg)

## Dependencies

- `tectonic`
- `vscode`
  - `LaTeX Workshop`

## Instruction

All you have to do to build LaTeX files is write the following codes in your `settings.json` in VSCode.

```json
  // ===latex-workshop===
  "latex-workshop.latex.recipes": [
    {
      "name": "tectonic",
      "tools": [
        "tectonic"
      ]
    }
  ],
  "latex-workshop.latex.tools": [
    {
      "name": "tectonic",
      "command": "tectonic",
      "args": [
        "--synctex",
        "%DOC%.tex"
      ],
      "env": {}
    }
  ],
```
