# Aula: Bibliometria com `bibliometrix` & Biblioshiny

Material da capacitação da **Equipe 7 — Bibliometria analítica e indicadores científicos**.
Reúne a apresentação, a atividade prática (em R), o cheat sheet e os arquivos de
configuração para rodar tudo online.

> **Ferramentas:** `bibliometrix` (pacote R) + **Biblioshiny** (interface web do pacote).

---

## 📂 Estrutura do repositório

| Pasta | Conteúdo | Para quê |
|---|---|---|
| `apresentacao/` | `apresentacao_biblioshiny.qmd` | Slides em Quarto (reveal.js): história do bibliometrix → Biblioshiny |
| `atividade/` | `atividade_biblioshiny.Rmd` | Atividade prática principal (Posit Cloud / RStudio) |
| `atividade/` | `atividade_biblioshiny.ipynb` | Mesma atividade em Jupyter (Binder) |
| `atividade/` | `atividade_biblioshiny_colab.ipynb` | Versão para Google Colab (runtime R) |
| `cheatsheet/` | `cheatsheet_biblioshiny.html` | Ficha de referência (1–2 páginas) |
| `posit-cloud/` | `setup_posit.R` | Prepara o projeto no Posit Cloud (instala pacotes etc.) |
| `binder/` | `runtime.txt`, `install.R` | Configuração do Binder (R online, sem login) |

---

## 🚀 Como usar cada peça

### 1. A apresentação (Quarto)
Abra `apresentacao/apresentacao_biblioshiny.qmd` no RStudio (Posit Cloud) e clique em **Render**,
ou rode `quarto render`. Gera um HTML de slides autocontido (`embed-resources: true`).
Publique em **Posit Connect Cloud**, **Quarto Pub** ou **GitHub Pages** — **não** use o RPubs
(ele não hospeda reveal.js corretamente).

### 2. A atividade prática (para os colegas rodarem)
**Recomendado — Posit Cloud:**
1. Crie um projeto, rode `posit-cloud/setup_posit.R` no Console (instala os pacotes uma vez).
2. Suba `atividade/atividade_biblioshiny.Rmd`.
3. Compartilhe o projeto (Settings → Access) — cada colega faz a própria cópia, já com tudo instalado.
4. Para a interface gráfica: `library(bibliometrix); biblioshiny()` (libere o pop-up para `posit.cloud`).

**Alternativa sem login — Binder:** veja a seção abaixo.

### 3. O Biblioshiny
A interface gráfica roda com `biblioshiny()` no **Posit Cloud** ou no **R/RStudio local**.
Ela **não** roda bem no Colab/Binder (precisa servir um app web).

---

## 🟢 Rodar online no Binder (estilo Colab, sem login)

A configuração do Binder está em `binder/`. Troque `USUARIO/REPO` pelos seus dados:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/USUARIO/REPO/HEAD?labpath=atividade%2Fatividade_biblioshiny.ipynb)

- **Notebook (Jupyter):** `https://mybinder.org/v2/gh/USUARIO/REPO/HEAD?labpath=atividade%2Fatividade_biblioshiny.ipynb`
- **RStudio:** `https://mybinder.org/v2/gh/USUARIO/REPO/HEAD?urlpath=rstudio`

A primeira construção leva alguns minutos (compila o `bibliometrix`); depois fica em cache.
Sessões são temporárias — baixe seu trabalho antes de sair.

---

## 📋 Pré-requisitos (ambiente local)

```r
install.packages(c("bibliometrix", "bibliometrixData"))
# Quarto: https://quarto.org (já incluído no Posit Cloud e no RStudio recente)
```

---

## 📖 Referências
- Aria, M. & Cuccurullo, C. (2017). *bibliometrix: An R-tool for comprehensive science mapping
  analysis.* Journal of Informetrics, 11(4), 959–975.
- Aria, M. & Cuccurullo, C. (2026). *Science Mapping Analysis: A Primer with Biblioshiny.* McGraw-Hill.
- Site: https://www.bibliometrix.org
