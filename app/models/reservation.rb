class Reservation < ApplicationRecord
  belongs_to :login
  belongs_to :post
end
