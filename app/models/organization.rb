class Organization < ActiveRecord::Base
  enum type: ["Show room", "Service", "Dealer"]
  enum pricing_policy: ["Flexible", "Fixed", "Prestige"]

  validates_presence_of :type, :pricing_policy
end
