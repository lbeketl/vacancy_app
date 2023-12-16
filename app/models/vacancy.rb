class Vacancy < ApplicationRecord
  belongs_to :user

  validates :position, :location, :description, :company, presence: true
  validates :salary, numericality: { greater_than: 0 }
end
