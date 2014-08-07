require 'rails_helper'

describe Character do

  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:hp) }

  it { should have_many(:games) }
end
