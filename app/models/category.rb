class Category < ApplicationRecord
  has_many :avatars
  validates :name, presence: true
end
