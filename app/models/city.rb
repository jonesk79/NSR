class City < ActiveRecord::Base
  validates :name, :presence => true
  has_many :superheros
end
