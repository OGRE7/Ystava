module ApplicationHelper

  # Returns the full title on a per-page basis.       # Documentation comment
  def titre_complet(titre_page)                          # Method definition
    titre_base = "Ystava"  # Variable assignment
    if titre_page.empty?                              # Boolean test
      titre_base                                   # Implicit return
    else
      "#{titre_page} - #{titre_base}f"                 # String interpolation
    end
  end
  
  def a_payer
    (Contribution.sum("somme") / Utilisateur.count).round(2)
  end
  
  def style_argent(somme)
    somme <= 0 ? "somme_positive" : "somme_negative"
  end
  
  def look_argent(somme)
    number_to_currency(somme.round(0), format: "%n %u")
  end
  
end
