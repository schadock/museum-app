class Tour < ActiveRecord::Base
  has_many :exhibit_tours
  has_many :exhibits, through: :exhibit_tours
end
