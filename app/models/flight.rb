class Flight < ApplicationRecord

  belongs_to :plane
  
  has_many :mfs
  has_many :ffs
  has_many :movies, through: :mfs
  has_many :foods, through: :ffs
  has_many :pfs
  has_many :passengers, through: :pfs

  def date
    self.departure.to_date
  end

  def time
    self.departure.strftime('%I:%M %p') + " " + self.departure.localtime.zone
  end

  def remaining_seats
    self.plane.seat_count - self.passengers.size
  end

  def wifi
    self.plane.wifi? ? "Yes" : "No"
  end

  def sorted_passengers
    self.passengers.sort_by{ |p| [p.last_name, p.first_name]}
  end

  def sorted_movies
    self.movies.sort_by(&:title)
  end

  def sorted_pfs
    self.pfs.sort_by{|pf| [pf.passenger.last_name, pf.passenger.first_name]}
  end
end
