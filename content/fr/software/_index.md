+++
# A Projects section created with the Portfolio widget.
widget = "portfolio"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = false  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 10  # Order that this section will appear.

title = "Logiciels"
subtitle = ""
summary = "Codes de recherche, simulation Monte-Carlo, outils scientifiques et scripts utilitaires."

# https://github.com/wowchemy/starter-hugo-academic/tree/main/content/project
[content]
  # Page type to display. E.g. project.
  page_type = "software"

  # Filter toolbar (optional).
  # Add or remove as many filters (`[[content.filter_button]]` instances) as you like.
  # To show all items, set `tag` to "*".
  # To filter by a specific tag, set `tag` to an existing tag name.
  # To remove toolbar, delete/comment all instances of `[[content.filter_button]]` below.

  # Default filter index (e.g. 0 corresponds to the first `[[filter_button]]` instance below).
  filter_default = 0

  [[content.filter_button]]
    name = "Tous"
    tag = "*"

  [[content.filter_button]]
    name = "Logiciels"
    tag = "Software"

  [[content.filter_button]]
    name = "Simulation"
    tag = "Simulation"

  [[content.filter_button]]
    name = "Outils"
    tag = "Tools"


[design]
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns = "1"

  # Toggle between the various page layout types.
  #   1 = List
  #   2 = Compact
  #   3 = Card
  #   5 = Showcase
  view = 5
  # Pour dire si je veux afficher les images ou pas (0 ou 1) - valide pour les geq 2
  show_img = 0

  # For Showcase view, flip alternate rows?
  flip_alt_rows = false
  
  # Permet d'activer l'appel à la surcharge du template de portfolio de ACADEMIC et va chercher la version dédiée avec les badges de stack logiciels (layouts/partials/portfolio_li_showcase_with_badges.html) 
  # Aller voir le code dans themes/academic/layouts/parials/widgets/portfolio.html pour comprendre les surcharges 
  show_badges = 1

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "navy"

  # Background gradient.
  # gradient_start = "DeepSkyBlue"
  # gradient_end = "SkyBlue"

  # Background image.
  # image = "background.jpg"  # Name of image in `static/img/`.
  # image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.

  # Text color (true=light or false=dark).
  # text_color_light = true  

[advanced]
 # Custom CSS.
 css_style = ""

 # CSS class.
 css_class = ""
+++

Cette page regroupe les logiciels et outils scientifiques développés dans le cadre de mes travaux de recherche.

