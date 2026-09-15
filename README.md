# CV (Typst rebuild)

Rebuilding `reference/original.pdf` (a two-column CV/resume) as a Typst document.

## Layout

- `reference/original.pdf` — original PDF kept as the visual reference to match.
- `main.typ` — Typst source (to be added).

## Build

```sh
typst compile main.typ main.pdf
```

Requires the [Typst CLI](https://github.com/typst/typst).
