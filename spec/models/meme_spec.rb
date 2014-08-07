require 'rails_helper'

describe Meme do
  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:image_url) }
  it { should validate_presence_of (:speed) }
  it { should validate_presence_of (:level) }
  it { should validate_presence_of (:link_url) }
  it { should validate_uniqueness_of (:name) }

  it { should have_and_belong_to_many (:games) }
end
