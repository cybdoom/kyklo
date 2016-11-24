require 'rails_helper'

RSpec.describe Model, type: :model do
  context "Validation" do
    it 'should be valid' do
      expect(FactoryGirl.build(:model)).to be_valid
    end

    it 'should be invalid' do
      expect(Model.new).to be_invalid
    end
  end

  context "Record creation" do
    it 'should persists' do
      expect(FactoryGirl.create(:model)).to be_persisted
    end

    it 'should not persists' do
      expect(Model.create).not_to be_persisted
    end
  end

  context "Relations" do
    it 'belongs to organization' do
      new_model = FactoryGirl.create(:model)
      expect(new_model).to be_persisted
      expect(new_model.organization).not_to be_nil
    end
  end
end
