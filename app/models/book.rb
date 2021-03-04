class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :categary
  has_one_attached :image
end
