class Model < ActiveRecord::Base
  belongs_to :organization

  validates :model_slug, {
    presence: true,
    uniqueness: true
  }
  validates_presence_of :organization_id
end
