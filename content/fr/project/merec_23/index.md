---
title: ComProj - System matrix evaluation for Compton imaging system
summary: 10/2023 - Projet de recherche bibliographique Master CORO-SIP
tags:
  - Compton
  - 3Photons ($3\gamma$)
  - Xemis2
  - Project
date: '2023-09-30T00:00:00Z'

# Optional external URL for project (replaces project detail page).
external_link: '/files/LM_corosip_merec23.pdf'

image:
  caption:
  focal_point: Smart

links:
url_slides: ''
url_code: ''
url_pdf: ''
url_video: ''

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

$$\min_{\boldsymbol{x}\in [0,1]^{Q}}\quad \frac{1}{2}\big\|\big\| \boldsymbol{y}-\mathbf{H}\boldsymbol{x}\big\|\big\|_{2}^{2}\quad  \textrm{st. } \big\|\big\|\boldsymbol{x}\big\|\big\| _{0} \leq K, \quad\boldsymbol{1} _{Q} ^{\intercal}  \boldsymbol{x} =1$$

**Séminaire équipe SiMS - 23/09/2021**



```cpp
MimosaUnmix_1inst_meth $(pwd) 2 bb_homotopy_fcls eq
L2L0_ASC_ANC_BB_Rhom_fcls
Instance : SA_SNR40_K4_instance30
K = 2	 Q = 50	 N = 224	 ASC form : equality
-----------------------------------------------------------------------
#(it) = 10	 #(node) = 19	 T = 0.083769	 card(L) = 2
xUB* = 1'	 34'	 
UB*  = 0.312598	sum(xUB*) = 1
-----------------------------------------------------------------------
[...]
-----------------------------------------------------------------------
#(it) = 100	 #(node) = 199	 T = 0.319659	 card(L) = 1
xUB* = 24	 39'	 
UB*  = 0.170461	sum(xUB*) = 1
-----------------------------------------------------------------------
SA_SNR40_K4_instance30 - bb_homotopy_fcls
	T = 0.322625 (s)
	#(node) = 211	/ best(node) = 221
	UB*  = 0.170461
	xUB* :
		 x(24) = 	0.234965
		 x(39)' = 	0.765035
	sum(xUB*) = 1
```
