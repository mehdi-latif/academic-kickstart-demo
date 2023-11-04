---
title: 'Multi-class maximum likelihood expectation-maximization list-mode image reconstruction, an application to three-gamma imaging'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - admin
  - Jérôme IDIER
  - Thomas CARLIER
  - Simon STUTE

# Author notes (optional)
## author_notes:
##  - 'Equal contribution'
##  - 'Equal contribution'
##  - 'Equal contribution'
##  - 'Equal contribution'

date: '2023-07-15T00:00:00Z'
doi: '10.48550/arXiv.2310.16846'

# Schedule page publish date (NOT publication's date).
publishDate: '2023-09-07T00:00:00Z'

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
# publication_types: ['paper-conference']

# Publication name and optional abbreviated publication name.
publication: In *17th International Meeting on Fully 3D Image Reconstruction in Radiology and Nuclear Medicine*
publication_short: In *International Meeting on Fully Three-Dimensional Image Reconstruction in Radiology and Nuclear Medicine (Fully3D 2023), Jul 2023, Stony Brook, United States.*

abstract: Our contribution focuses at improving the image reconstruction process for specific Compton imaging systems able to detect multiple classes of events, in the field of nuclear imaging. For each existing prototype of such systems, one or several processing methods have already been proposed to retrieve the activity map. Most of them get their inspiration from maximum likelihood expectationmaximization (MLEM), but none of them actually compute the MLEM solution. Some exploit the fully detected events only (e.g. in threegamma imaging, the simultaneous detection of a pair of annihilation photons and of a third photon), and other combine several classes of detected events in a suboptimal way. In this paper, we first introduce a general framework for the reconstruction of a single activity map from multi-class events, and we provide the suited list-mode MLEM update equation. We then consider the case of XEMIS2, a preclinical prototype of a Compton telescope for three-gamma imaging, for which four distinct classes of partial detections coexist with the full detection class. As a preliminary step towards effective multi-class reconstruction, we generate a sensitivity map for the five classes using a dedicated Monte Carlo simulator.

# Summary. An optional shortened abstract.
summary: Our contribution focuses at improving the image reconstruction process for specific Compton imaging systems able to detect multiple classes of events, in the field of nuclear imaging. 

tags: ['Medical Physics [physics.med-ph]','Informatique [cs]/Imagerie médicale','Statistiques [stat]/Applications [stat.AP]']

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://hal.science/hal-04205077'
# url_code: 'https://github.com/wowchemy/wowchemy-hugo-themes'
# url_dataset: 'https://github.com/wowchemy/wowchemy-hugo-themes'
# url_poster: ''
# url_project: ''
# url_slides: ''
# url_source: 'https://github.com/wowchemy/wowchemy-hugo-themes'
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
  - XEMIS2

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---


