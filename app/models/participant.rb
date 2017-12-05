class Participant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :number, presence: true
  has_many :accomodations
  # accepts_nested_attributes_for :accomodations

PHOTO = [
  "",
  "blallain.jpg",
  "thorlin.jpg",
  "marchet.jpg",
  "valrand.jpg",
  "fichet.jpg",
  "picanton.jpg",
  "bigoupillon.jpg"
]

  def pic(id)
    PHOTO[id]
  end

end
