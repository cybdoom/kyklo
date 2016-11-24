class ModelType < ActiveRecord::Base
  belongs_to :model

  validates :model_type_slug, {
    uniqueness: true,
    presence: true
  }
  validates_presence_of :model_id
end
