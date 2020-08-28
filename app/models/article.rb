class Article < ApplicationRecord
    validates :title, :sous_titre, :date, :lieu, :image_url, :content, presence: true
end
