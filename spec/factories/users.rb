FactoryGirl.define do

  factory :user do
    email { Faker::Internet.email }
    sequence(:password) {|n| "password#{ n }" }
    sequence(:password_confirmation) {|n| "password#{ n }" }
  end

end
