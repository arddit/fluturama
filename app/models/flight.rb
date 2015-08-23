class Flight < ActiveRecord::Base
	validates :origin, :destination, :date, :adultCount, :childCount, :infantInSeatCount, :maxStops, :preferredCabin, presence: true
end
