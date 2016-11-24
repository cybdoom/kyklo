FactoryGirl.define do

  factory :model_type do
    model
    sequence(:model_type_slug) {|n| "slug#{ n }" }
  end

end
