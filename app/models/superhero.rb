class Superhero < ActiveRecord::Base
  belongs_to :city
  validates :name, :presence => true
  validates :superpower, :presence => true
  validates :archenemy, :presence => true
  default_scope { order('superpower') }
end
