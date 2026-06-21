---
title: "Guaranteed Best Sparse Solutions for Spectral Unmixing"

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Nils Foix-Colonier
  - Sébastien Bourguignon
  - Frédéric Schmidt
  - admin
# Author notes (optional)
## author_notes:
##  - 'Equal contribution'
##  - 'Equal contribution'
##  - 'Equal contribution'
##  - 'Equal contribution'

research_areas:
  - Inverse problems
  - Optimization
  - Hyperspectral imaging
  - Sparsity
  - Branch-and-bound
  - Unmixing

date: '2025-10-17T00:00:00Z'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2025-10-17T00:00:00Z'

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
# https://discourse.gohugo.io/t/academic-theme-changing-the-name-of-publication-types/38091
# # Publication type. Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article; 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section; 7 = Thesis; 8 = Patent
publication_types: [1]

# Publication name and optional abbreviated publication name.
publication: In *WHISPERS 2025*.
publication_short: In *WHISPERS 2025, Oct 2025, Barcelona, Spain.*

abstract: Cardinality-constrained sparse spectral unmixing can be solved using Branch-and-Bound algorithms, provided that the number of reference endmembers and the cardinality constraint are reasonably small. However, focusing solely on the best solution may not always be the most relevant approach, especially in the presence of high correlation between endmembers, solutions close to the optimal one-in terms of objective function-but with different supports (activated endmembers) may offer better interpretability. We propose a Branch-and-Bound algorithm that returns a given number of supports which are guaranteed to provide the lowest least-squares errors among all possible ones. The interest of such an approach is illustrated on numerical simulations, where chances for retrieving the ground truth among the few best solutions are shown to increase compared to considering only the optimal one, especially in the noisiest settings. A Python implementation is made available.

# Summary. An optional shortened abstract.
summary: Cardinality-constrained sparse spectral unmixing can be solved using Branch-and-Bound algorithms, provided that the number of reference endmembers and the cardinality constraint are reasonably small. However, focusing solely on the best solution may not always be the most relevant approach, especially in the presence of high correlation between endmembers, solutions close to the optimal one-in terms of objective function-but with different supports (activated endmembers) may offer better interpretability.

# tags: Informatique [cs]/Traitement du signal et de l'image [eess.SP]Informatique [cs]/Recherche opérationnelle [math.OC] Mathématiques [math]/Combinatoire [math.CO]
tags: ['Branch-and-bound','Optimization','Spectral Unmixing','Sparsity']

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://hal.science/hal-05319871'
url_code: 'https://gitlab.univ-nantes.fr/ls2n-sims/bnb-whispers-2025'
# url_dataset: ''
# url_poster: ''
# url_project: 'https://mimosa.ls2n.fr/'
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
# projects:
# -

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---


