class Page < ActiveRecord::Base

  PAGE_LABELS = [["Stajnia - O stajni", "about_stable"],
                 ["Stajnia - Oferta", "offer_stable"],
                 ["Stajnia - Rezerwacje", "reservations_stable"],
                 ["Pensjonat - O pensjonacie", "about_pension"],
                 ["Pensjonat - Pokoje", "rooms_pension"],
                 ["Pensjonat - Atrakcje", "attractions_pension"],
                 ["Stacja - O stacji", "about_station"],
                 ["Stacja - Oferta", "offer_station"]]
  
end
