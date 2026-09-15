# CV (Typst rebuild)

Rebuilding `reference/original.pdf` (a two-column CV/resume) as a Typst document.

## Layout

- `reference/original.pdf` — original PDF kept as the visual reference to match.
- `main.typ` — page composition only: imports the files below and lays out each page.
- `style.typ` — shared theme (colors, page/text setup) and reusable components (`job`, `edu`, `cert`, `skill`, ...).
- `skills.typ`, `contact.typ`, `profile.typ` — sidebar and profile content.
- `experience.typ`, `education.typ`, `certifications.typ` — one file per CV section; each exports a `heading` and named entries (e.g. `experience.avaloq-current`) that `main.typ` places on the appropriate page.
- `assets/photo.jpg`, `assets/qr.png` — profile photo and QR code, extracted from the original PDF via `pdfimages`.

To edit a section's text, edit its file directly — no need to touch `main.typ` unless you're adding/removing/reordering an entry.

## Build

```sh
typst compile main.typ main.pdf
```

Or watch and rebuild on save:

```sh
typst watch main.typ main.pdf
```

Requires the [Typst CLI](https://github.com/typst/typst).
