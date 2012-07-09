module AdminHelper
  
  def pages_label(label)
    case label
    when "about_stable" then "Stajnia - O stajni"
    when "offer_stable" then "Stajnia - Oferta"
    when "reservations_stable" then "Stajnia - Rezerwacje"
    when "about_pension" then "Pensjonat - O pensjonacie"
    when "reservations_pension" then "Pensjonat - Rezerwacje"
    when "rooms_pension" then "Pensjonat - Pokoje" 
    when "attractions_pension" then "Pensjonat - Atrakcje" 
    when "about_station" then "Stacja - O stacji"
    when "offer_station" then "Stacja - Oferta"
    else "Brak etykiety"
    end
  end

  
  def main_label(label)
    case label
    when "stable" then "Stajnia"
    when "pension" then "Pensionat"
    when "station" then "Stacja"
    else "Brak etykiety"
    end
  end

end
