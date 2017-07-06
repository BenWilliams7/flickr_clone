require 'rails_helper'

describe User do

  it 'should have an id' do
    user = FactoryGirl.create(:user)
    user.id.should eq 9
  end


  it { should have_many :images }
end
