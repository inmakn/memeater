require 'rails_helper'

describe Environment do

  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:top_layer) }
  it { should validate_presence_of (:mid_layer) }
  it { should validate_presence_of (:bottom_layer) }

  it { should have_many(:games) }
end
