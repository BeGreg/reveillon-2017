class Participant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :number, presence: true
  has_many :accomodations
end
