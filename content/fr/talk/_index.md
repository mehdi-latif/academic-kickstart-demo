+++
# A Projects section created with the Portfolio widget.
widget = "portfolio"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = false  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 10  # Order that this section will appear.

title = "Présentations"
subtitle = ""
summary = "Conférences, séminaires, supports de présentation et slides."

# https://github.com/wowchemy/starter-hugo-academic/tree/main/content/project
[content]
  # Page type to display. E.g. project.
  page_type = "talk"

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
    name = "Conférences"
    tag = "Conference"

  [[content.filter_button]]
    name = "Séminaires"
    tag = "Seminar"

#  [[content.filter_button]]
#    name = "Enseignement"
#    tag = "Teaching"

  [[content.filter_button]]
    name = "Médiation"
    tag = "Mediation"

[design]
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns = "1"

  # Toggle between the various page layout types.
  #   1 = List
  #   2 = Compact
  #   3 = Card
  #   5 = Showcase
  view = 2
  # Pour dire si je veux afficher les images ou pas (0 ou 1) - valide pour les geq 2
  show_img = 0

  # For Showcase view, flip alternate rows?
  flip_alt_rows = false

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

