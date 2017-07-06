FactoryGirl.define do
  factory(:user) do
    email('test9@test9.com')
    password('ohdeer')
    # image Image.new(Rails.root + 'spec/support/missing.jpg')
    confirmed_at('2017-07-06 15:49:29.147138')
    id 9
  end
  factory(:image) do
    name('bambi')
    description('deer')
    user_id 9
    # file Image.new(Rails.root + 'spec/support/missing.jpg')
  end
end
