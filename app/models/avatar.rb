class Avatar < ApplicationRecord
  belongs_to :category
  validates :nom, :prenom, :img_url, :bio_url, :role, presence: true
end
