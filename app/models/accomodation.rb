class Accomodation < ApplicationRecord
  belongs_to :participant
  validates :name, uniqueness: true, presence: true
  validates :nb_persons, presence: true
end
