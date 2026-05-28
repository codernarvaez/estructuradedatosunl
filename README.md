# Estructuras de Datos — UNL

Libro Quarto para el curso de Estructuras de Datos (Carrera de Computación, UNL).

**Sitio publicado:** [https://codernarvaez.github.io/estructuradedatosunl/](https://codernarvaez.github.io/estructuradedatosunl/)

## Compilar en local

Requisitos: [Quarto](https://quarto.org), R, Python 3 + Jupyter. Para PDF además: TinyTeX (`quarto install tinytex`).

```bash
# Dependencias R (primera vez)
Rscript scripts/install-r-deps.R

# Dependencias Python (primera vez)
pip install -r requirements.txt

# HTML (igual que GitHub Pages)
make html
# o: quarto render --to html

# HTML + PDF
make render

# Vista previa local del sitio
make preview
# Abre http://127.0.0.1:8000/
```

Salida HTML: `_book/index.html` · PDF: `_book/Estructura-de-Datos.pdf`

## CI/CD y GitHub Pages

Al hacer **push a `main`**, el workflow [`.github/workflows/publish.yml`](.github/workflows/publish.yml) renderiza el libro y lo publica en GitHub Pages.

### Activar GitHub Pages (una vez)

1. En GitHub: **Settings → Pages**
2. **Build and deployment → Source:** elige **GitHub Actions**
3. Tras el primer push exitoso, el sitio quedará en  
   `https://codernarvaez.github.io/estructuradedatosunl/`

### Publicar manualmente desde local (opcional)

```bash
make publish
# equivalente: quarto publish gh-pages
```

Requiere permisos de escritura en el remoto y crea/actualiza la rama `gh-pages`.

### Ejecutar el workflow a mano

**Actions → Publicar en GitHub Pages → Run workflow**

## Estructura del repositorio

| Ruta | Descripción |
|------|-------------|
| `01-*.qmd` … `07-*.qmd` | Capítulos del libro |
| `images/` | Figuras |
| `scripts/` | Dependencias R y vista previa local |
| `.github/workflows/` | CI/CD para GitHub Pages |
| `_book/` | Salida generada (no versionar) |

## Notas

- El PDF no se genera en CI (solo HTML) para mantener el despliegue rápido; genera el PDF en local con `make pdf`.
- Artefactos de compilación: ver [`.gitignore`](.gitignore).
