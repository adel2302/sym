class Donor < ApplicationRecord
	validates :last_name, presence: true
	geocoded_by :address
	after_validation :geocode
end
