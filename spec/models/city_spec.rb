require 'spec_helper'

describe City do
  it { validate_presence_of :name }
  it { have_many :superheros }

end
