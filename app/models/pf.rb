class Pf < ApplicationRecord
    belongs_to :flight
    belongs_to :passenger

    def name
      "#{self.last_name}, #{self.first_name}"
      end

    def passenger_name
      self.passenger.name
    end
  end
  