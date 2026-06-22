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

A configuração do Binder está em `binder/`:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mrcsvg/ufpr-ppgcd-biblioshiny/HEAD?labpath=atividade%2Fatividade_biblioshiny.ipynb)

- **Notebook (Jupyter):** `https://mybinder.org/v2/gh/mrcsvg/ufpr-ppgcd-biblioshiny/HEAD?labpath=atividade%2Fatividade_biblioshiny.ipynb`
- **RStudio:** `https://mybinder.org/v2/gh/mrcsvg/ufpr-ppgcd-biblioshiny/HEAD?urlpath=rstudio`

A primeira construção leva alguns minutos (compila o `bibliometrix`); depois fica em cache.
Sessões são temporárias — baixe seu trabalho antes de sair.

---

## 📋 Pré-requisitos (ambiente local)

```r
install.packages(c("bibliometrix", "bibliometrixData"))
# Quarto: https://quarto.org (já incluído no Posit Cloud e no RStudio recente)
```

---

## 🌐 Publicar no GitHub Pages (site de leitura)

O repositório é um **projeto Quarto** (`_quarto.yml`): a capa (`index.qmd`), a
apresentação e a atividade viram um site único. O Pages serve só conteúdo
**estático** — ótimo para leitura; a execução do R continua no Posit/Binder/Colab.

**Requisitos:** Quarto (já vem com o RStudio) e os pacotes R `rmarkdown` (engine
dos `.qmd`/`.Rmd`) e `bibliometrix` (executa a atividade na primeira renderização):

```r
install.packages(c("rmarkdown", "bibliometrix", "bibliometrixData"))
```

```bash
# 1) Renderiza o site para a pasta _site/
quarto render

# 2) Publica na branch gh-pages (cria/atualiza sozinho e dá push)
quarto publish gh-pages
```

> No RStudio sem o `quarto` no PATH, use o Terminal do próprio RStudio ou o botão
> **Render**. Depois, em **GitHub → Settings → Pages**, confirme a fonte
> *Deploy from a branch → `gh-pages`*.

Site publicado: **https://mrcsvg.github.io/ufpr-ppgcd-biblioshiny/**

> A pasta `_site/` e o cache `_freeze/` não precisam ir para o Git (o
> `quarto publish` cuida da branch `gh-pages`).

---

## 📖 Referências
- Aria, M. & Cuccurullo, C. (2017). *bibliometrix: An R-tool for comprehensive science mapping
  analysis.* Journal of Informetrics, 11(4), 959–975.
- Aria, M. & Cuccurullo, C. (2026). *Science Mapping Analysis: A Primer with Biblioshiny.* McGraw-Hill.
- Site: https://www.bibliometrix.org
