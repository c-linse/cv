# CV (Typst rebuild)

Rebuilding `reference/original.pdf` (a two-column CV/resume) as a Typst document.

## Layout

- `reference/original.pdf` — original PDF kept as the visual reference to match.
- `main.typ` — Typst source.
- `assets/photo.jpg`, `assets/qr.png` — profile photo and QR code, extracted from the original PDF via `pdfimages`.

## Build

```sh
typst compile main.typ main.pdf
```

Or watch and rebuild on save:

```sh
typst watch main.typ main.pdf
```

Requires the [Typst CLI](https://github.com/typst/typst).
