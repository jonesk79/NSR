require 'spec_helper'

describe Superhero do
  it { validate_presence_of :name }
  it { validate_presence_of :city }
  it { validate_presence_of :superpower }
  it { validate_presence_of :archenemy }
end
