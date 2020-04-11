class Flight < ApplicationRecord
  belongs_to :plane
  has_many :mfs
  has_many :ffs
  has_many :movies, through: :mfs
  has_many :foods, through: :ffs
  has_many :pfs
  has_many :passengers, through: :pfs

  def display_string
    "Flight ##{self.id} | #{self.depart} -> #{self.arrive} | #{self.departure}"
  end

  def time
    "#{self.departure.hour}:#{self.departure.min}"
  end

  def remaining_seats
    self.plane.seat_count - self.passengers.size
  end

  def wifi
    self.plane.wifi? ? "Yes" : "No"
  end
  
end
