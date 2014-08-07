require 'rails_helper'

describe Game do

  it { should validate_presence_of (:user_id) }
  it { should validate_numericality_of (:user_id) }

  it { should belong_to(:user) }
  it { should belong_to(:character) }
  it { should belong_to(:environment) }
  it { should have_and_belong_to_many(:memes) }

end
