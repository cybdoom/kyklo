FactoryGirl.define do

  factory :model do
    organization
    sequence(:model_slug) {|n| "slug_#{ n }" }
  end

end
