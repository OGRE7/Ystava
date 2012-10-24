module ApplicationHelper

  # Returns the full title on a per-page basis.       # Documentation comment
  def titre_complet(titre_page)                          # Method definition
    titre_base = "Ruby on Rails Tutorial Sample App"  # Variable assignment
    if titre_page.empty?                              # Boolean test
      titre_base                                      # Implicit return
    else
      "#{titre_page} - #{titre_base}"                 # String interpolation
    end
  end
end
