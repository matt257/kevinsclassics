class Reservation < ApplicationRecord
    validates :name, presence: true
    validates :phone, presence: true
    validates :instagram, presence: true
end
