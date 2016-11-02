class Bar < ApplicationRecord
  belongs_to :neighborhood

  validates :name, presence: true
  validates :specialty_drink, presence: true
end
