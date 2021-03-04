class OrderDetali < ApplicationRecord
  belongs_to :order
  belongs_to :book
end
