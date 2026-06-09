---
title: "Branch-and-bound algorithm for exact ℓ0-norm sparse spectral unmixing"

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Gwen Samain
  - Nils Foix-Colonier
  - Sébastien Bourguignon

# Author notes (optional)
## author_notes:
##  - 'Equal contribution'
##  - 'Equal contribution'
##  - 'Equal contribution'
##  - 'Equal contribution'

date: '2025-06-15T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2025-06-15T00:00:00Z'

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
# https://discourse.gohugo.io/t/academic-theme-changing-the-name-of-publication-types/38091
# # Publication type. Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article; 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section; 7 = Thesis; 8 = Patent
publication_types: [1]

# Publication name and optional abbreviated publication name.
publication: In *EUSIPCO 2025*.
publication_short: In *EUSIPCO 2025, Sep 2025, Palermo, Italy.*

abstract: We propose an algorithm that exactly solves the cardinality-constrained sparse spectral unmixing problem. Based on recent works on ℓ0-norm exact optimization, a branch-and-bound architecture is specifically developed for sparse unmixing, under nonnegativity and sum-to-one constraints. The procedure boils down to solving a finite number of sum-to-one constrained nonnegative least-squares problems for upper-and lower-bounding the global optimal value, which are solved efficiently. Numerical simulations show that our method outperforms competing ones in terms of support identification and estimation, and that it remains computationally tractable as long as the problem size is limited or the signal-to-noise ratio is high enough. A free C++ implementation is made available.

# Summary. An optional shortened abstract.
summary:  We propose an algorithm that exactly solves the cardinality-constrained sparse spectral unmixing problem. 

# tags: Informatique [cs]/Traitement du signal et de l'image [eess.SP]Informatique [cs]/Recherche opérationnelle [math.OC] Mathématiques [math]/Combinatoire [math.CO]
tags: ['Branch-and-bound','C++','Démélange','Imagerie hyperspectrale','Optimisation','Parcimonie','Solveur libre']

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://hal.science/hal-05124474'
url_code: 'https://gitlab.univ-nantes.fr/ls2n-sims/mimosa-solver'
url_dataset: 'https://gitlab.univ-nantes.fr/ls2n-sims/l0-sparse-unmix-eusipco-supplementary-materials'
# url_poster: ''
url_project: 'https://mimosa.ls2n.fr/'
# url_slides: ''
# url_source: 'https://gretsi.fr/archives/colloque'
# url_video: 'https://youtube.com'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  caption: '' # Image credit: [**Unsplash**](https://unsplash.com/photos/pLCdAaMFLTE)
  focal_point: ''
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
  - MIMOSA

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---


