class Superhero < ActiveRecord::Base
  validates :name, :presence => true
  validates :city, :presence => true
  validates :superpower, :presence => true
  validates :archenemy, :presence => true
end
