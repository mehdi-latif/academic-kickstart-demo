---
title: Exact resolution of the sparse spectral unmixing problem
summary: September 2021 – LS2N SiMS team seminar.
tags:
  - Seminar
research_areas:
  - Inverse problems
  - Optimization
  - Hyperspectral imaging
  - Sparsity
  - Branch-and-bound
  - Unmixing
audiences:
  - Students
  - Researchers
date: '2021-09-23T00:00:00Z'
all_day: true

location: "Nantes, France"

# Optional external URL for project (replaces project detail page).
external_link: '/files/LATIFM_MIMOSA_UNMIX_SLIDES.pdf'

image:
  caption:
  focal_point: Smart

links:
url_slides: ''
url_code: 'https://gitlab.com/mlatif/bbhs_ext_cpp'
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

**Abstract:** Hyperspectral imaging involves the simultaneous acquisition of images across a wide range of wavelengths. A recurring challenge in processing this data is to solve a source separation problem: due to the low spatial resolution of the instruments, the light reflectance spectrum measured at a given position results from the superposition of elementary spectra, i.e. a mixture for which the proportions must be determined.

In so-called supervised unmixture, the mixture is sought within a known *dictionary* of reference spectra. A physical constraint, known as the parsimony constraint, then stipulates that a small number of components in the mixture is sufficient to describe each observed spectrum. Mathematically, this involves fitting a linear model using the least squares method, subject to the constraint that the vector of sought-after coefficients has few non-zero components, i.e. a small *"norm"* $\\ell_0$. This is an NP-hard problem that essentially falls within the field of combinatorial optimisation.

Whilst most work in this field considers relaxed approaches, prioritising low computational time, we propose an exact solution method that guarantees the optimality of the solutions obtained.

During his PhD research, [Ramzi Ben Mhenni](https://scholar.google.com/citations?user=QB04hQMAAAAJ&hl) designed branch-and-bound algorithms for exact sparse optimization. Here, we propose a specific version of these algorithms to solve the problem of mixture decomposition. Indeed, the mixture coefficients are positive and sum to unity, constraints that require a dedicated algorithmic strategy.

When the mixture is composed of a limited number of spectra, which is generally the case when these spectra are *learned* from a set of observations, we show that this approach remains computationally efficient and yields better solutions compared to methods in the existing literature. When the dictionary size increases, *eg.* for a dictionary composed of a large number of laboratory-measured spectra, the obtained solutions remain of higher quality, but with a much higher computational cost.

A free solver, implemented in C++, is available to the scientific community.


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
