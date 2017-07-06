FactoryGirl.define do
  factory(:user) do
    email('test9@test9.com')
    password('ohdeer')
    # image Image.new(Rails.root + 'spec/support/missing.jpg')
    id 9
  end
  factory(:image) do
    name('bambi')
    description('deer')
    user_id 9
    # file Image.new(Rails.root + 'spec/support/missing.jpg')
  end
end
