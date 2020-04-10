class Flight < ApplicationRecord
  belongs_to :passenger
  belongs_to :plane
end
