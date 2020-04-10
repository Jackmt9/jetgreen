class Flight < ApplicationRecord
  belongs_to :passenger
  belongs_to :plane
  has_many :mfs
  has_many :ffs
  has_many :movies, through: :mfs
  has_many :foods, through: :ffs
end
