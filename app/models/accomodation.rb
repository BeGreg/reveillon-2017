class Accomodation < ApplicationRecord
  belongs_to :participant, optional: true
  validates :name, uniqueness: true, presence: true
  validates :nb_persons, presence: true

PICTO = ["", "diamond", "child", "child","users","users","futbol-o","microchip","child","arrow-circle-down","arrow-circle-down" ]

  def accomodation_picto(id)
    PICTO[id]
  end

  def person(nb)
    if nb > 1
      return "personnes"
    else
      return "personne"
    end
  end

  def book
    return !participant_id.nil?
  end

  def label
    if participant_id
      return "Booké"
    else
      return "Réserver"
    end
  end

  def taint
    return "card-accomodation-booked" if participant_id
  end
end

# references sans foreign key
