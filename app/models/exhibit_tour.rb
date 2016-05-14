class ExhibitTour < ActiveRecord::Base
  belongs_to :exhibit
  belongs_to :tour
end
