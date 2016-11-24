require 'rails_helper'

RSpec.describe ModelType, type: :model do
  context "Validation" do
    it 'should be valid' do
      expect(FactoryGirl.build(:model_type)).to be_valid
    end

    it 'should be invalid' do
      expect(ModelType.new).to be_invalid
    end
  end

  context "Record creation" do
    it 'should persists' do
      expect(FactoryGirl.create(:model_type)).to be_persisted
    end

    it 'should not persists' do
      expect(ModelType.create).not_to be_persisted
    end
  end

  context "Relations" do
    it 'belongs to organization' do
      new_model_type = FactoryGirl.create(:model_type)
      expect(new_model_type).to be_persisted
      expect(new_model_type.model).not_to be_nil
    end
  end
end
