# CV (Typst rebuild)

Rebuilding `reference/original.pdf` (a two-column CV/resume) as a Typst document.

## Layout

- `reference/original.pdf` — original PDF kept as the visual reference to match.
- `main.typ` — page composition only: imports the files below and lays out each page.
- `style.typ` — shared theme (colors, page/text setup) and reusable components (`job`, `edu`, `cert`, `skill`, ...).
- `skills.typ`, `contact.typ`, `profile.typ` — sidebar and profile content.
- `experience.typ`, `education.typ`, `certifications.typ` — one file per CV section; each exports a `heading` and named entries (e.g. `experience.avaloq-current`) that `main.typ` places in the left or right column.
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

## GitHub Actions + Nextcloud

This repository contains Typst code that is built by a [GitHub Actions workflow](.github/workflows/build-pdf.yml). After the build is completed, the generated PDF is stored as an artifact and uploaded via `curl` to a Nextcloud WebDAV cloud instance, making it available for further use.

The workflow runs on every push to `main`, on pull requests, and on manual dispatch, in two jobs:

- `build-pdf` — installs the Typst CLI (cached across runs), compiles `main.typ`, and uploads the result as the `pdf-files` artifact.
- `push-pdf` — downloads that artifact and `curl`s it to `Documents/Lebenslauf/` on the WebDAV share. It runs only for pushes to `main` and for manual runs, so pull requests build the PDF without publishing it.

The upload needs three repository secrets: `NEXTCLOUD_URL` (base URL of the instance), `NEXTCLOUD_USERNAME`, and `NEXTCLOUD_PASSWORD` (an app password for that account).

## PDF

<!-- TODO: replace with the public share link -->
[PDF-Link](#)
