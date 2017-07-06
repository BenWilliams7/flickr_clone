require 'rails_helper'

describe Image do
  # it 'should have a name' do
  #   image = FactoryGirl.create(:image)
  #   image.name.should eq 'bambi'
  # end

  it { should belong_to :user}
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end
