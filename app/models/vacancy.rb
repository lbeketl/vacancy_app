class Vacancy < ApplicationRecord
  belongs_to :user

  has_one_attached :logo

  validates :position, :location, :description, :company, presence: true
  validates :salary, numericality: { greater_than: 0 }
end
