FactoryGirl.define do

  factory :organization do
    type { Organization.types.keys.sample }
    pricing_policy { Organization.pricing_policies.keys.sample }
  end

end
